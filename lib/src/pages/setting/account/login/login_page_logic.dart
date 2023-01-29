import 'dart:io';

import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:jhentai/src/consts/eh_consts.dart';
import 'package:jhentai/src/network/eh_request.dart';
import 'package:jhentai/src/routes/routes.dart';
import 'package:jhentai/src/setting/user_setting.dart';
import 'package:jhentai/src/utils/eh_spider_parser.dart';
import 'package:jhentai/src/utils/toast_util.dart';
import 'package:jhentai/src/widget/loading_state_indicator.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../../../network/eh_cookie_manager.dart';
import '../../../../utils/cookie_util.dart';
import '../../../../utils/log.dart';
import '../../../../utils/route_util.dart';
import '../../../../utils/snack_util.dart';
import 'login_page_state.dart';

class LoginPageLogic extends GetxController {
  static const formId = 'formId';
  static const loadingStateId = 'loadingStateId';

  final LoginPageState state = LoginPageState();
  final EHCookieManager cookieManager = Get.find<EHCookieManager>();

  void toggleLoginType() {
    state.loginType = (state.loginType == LoginType.cookie ? LoginType.password : LoginType.cookie);
    update([formId]);
  }

  void handleLogin() {
    if (state.loginState == LoadingState.loading) {
      return;
    }

    if (state.loginType == LoginType.password) {
      _handlePasswordLogin();
    } else {
      _handleCookieLogin();
    }
  }

  Future<void> _handlePasswordLogin() async {
    if (state.userName == null || state.password == null || state.userName!.isEmpty || state.password!.isEmpty) {
      toast('userNameOrPasswordMismatch'.tr);
      return;
    }

    /// control mobile keyboard
    Get.focusScope?.unfocus();

    state.loginState = LoadingState.loading;
    update([loadingStateId]);

    Map<String, dynamic> userInfoOrErrorMsg;
    try {
      userInfoOrErrorMsg = await EHRequest.requestLogin(
        state.userName!,
        state.password!,
        EHSpiderParser.loginPage2UserInfoOrErrorMsg,
      );
    } on DioError catch (e) {
      Log.error('loginFail'.tr, e.message);
      snack('loginFail'.tr, e.message);
      state.loginState = LoadingState.error;
      update([loadingStateId]);
      return;
    }

    if (userInfoOrErrorMsg['errorMsg'] != null) {
      Log.info('Login failed by password.');
      snack('loginFail'.tr, userInfoOrErrorMsg['errorMsg']);

      state.loginState = LoadingState.error;
      update([loadingStateId]);

      return EHRequest.requestLogout();
    }

    Log.info('Login success by password.');

    UserSetting.saveUserInfo(
      userName: state.userName!,
      ipbMemberId: userInfoOrErrorMsg['ipbMemberId'],
      ipbPassHash: userInfoOrErrorMsg['ipbPassHash'],
    );

    EHRequest.requestForum(
      userInfoOrErrorMsg['ipbMemberId'],
      EHSpiderParser.forumPage2UserInfo,
    ).then((userInfo) {
      UserSetting.avatarImgUrl.value = userInfo?['avatarImgUrl'];
      UserSetting.nickName.value = userInfo?['nickName'];
      UserSetting.save();
    });

    state.loginState = LoadingState.success;
    update([loadingStateId]);

    toast('loginSuccess'.tr);
    backRoute(currentRoute: Routes.login);
  }

  Future<void> _handleCookieLogin() async {
    if (state.cookie == null || state.cookie!.isBlank!) {
      toast('cookieIsBlack'.tr);
      return;
    }

    RegExpMatch? match1 = RegExp(r'ipb_member_id[=:]\s?(\w+)').firstMatch(state.cookie!);
    RegExpMatch? match2 = RegExp(r'ipb_pass_hash[=:]\s?(\w+)').firstMatch(state.cookie!);
    RegExpMatch? match3 = RegExp(r'igneous[=:]\s?(\w+)').firstMatch(state.cookie!);

    if (match1 == null || match2 == null) {
      toast('cookieFormatError'.tr);
      return;
    }

    int ipbMemberId;
    String ipbPassHash;
    String? igneous;
    try {
      ipbMemberId = int.parse(match1.group(1)!);
      ipbPassHash = match2.group(1)!;
      igneous = match3?.group(1);
    } on Exception catch (e) {
      Log.error('loginFail'.tr, e);
      Log.upload(e, extraInfos: {'cookie': state.cookie!});
      toast('cookieFormatError'.tr);
      return;
    }

    await cookieManager.storeEhCookiesForAllUri([
      Cookie('ipb_member_id', ipbMemberId.toString()),
      Cookie('ipb_pass_hash', ipbPassHash),
    ]);
    if (igneous != null) {
      await cookieManager.storeEhCookiesForAllUri([
        Cookie('igneous', igneous.toString()),
      ]);
    }

    /// control mobile keyboard
    Get.focusScope?.unfocus();

    state.loginState = LoadingState.loading;
    update([loadingStateId]);

    Map<String, String?>? userInfo;
    try {
      /// get cookie [sk] first
      await EHRequest.requestHomePage();
      userInfo = await EHRequest.requestForum(ipbMemberId, EHSpiderParser.forumPage2UserInfo);
    } on DioError catch (e) {
      Log.error('loginFail'.tr, e.message);
      snack('loginFail'.tr, e.message);

      await cookieManager.removeAllCookies();

      state.loginState = LoadingState.error;
      update([loadingStateId]);
      return;
    }

    if (userInfo == null) {
      Log.info('Login failed by cookie.');

      await cookieManager.removeAllCookies();

      state.loginState = LoadingState.error;
      update([loadingStateId]);

      snack('loginFail'.tr, 'invalidCookie'.tr);
      return;
    }

    Log.info('Login success by cookie.');

    state.loginState = LoadingState.success;
    update([loadingStateId]);

    UserSetting.saveUserInfo(
      userName: userInfo['userName']!,
      ipbMemberId: ipbMemberId,
      ipbPassHash: ipbPassHash,
      avatarImgUrl: userInfo['avatarImgUrl'],
      nickName: userInfo['nickName'],
    );

    toast('loginSuccess'.tr);
    backRoute(currentRoute: Routes.login);
  }

  Future<void> handleWebLogin() async {
    toRoute(
      Routes.webview,
      arguments: {
        'title': 'login'.tr,
        'url': EHConsts.ELogin,
        'onPageStarted': onLogin,
      },
    );
  }

  Future<void> onLogin(String url, WebViewController controller) async {
    String cookieString = await controller.runJavascriptReturningResult('document.cookie');
    cookieString = cookieString.replaceAll('"', '');
    if (!CookieUtil.validateCookiesString(cookieString)) {
      return;
    }

    Log.info('Login success by web.');

    List<Cookie> cookies = CookieUtil.parse2Cookies(cookieString);
    await cookieManager.storeEhCookiesForAllUri(cookies);

    int ipbMemberId = int.parse(cookies.firstWhere((cookie) => cookie.name == 'ipb_member_id').value);
    String ipbPassHash = cookies.firstWhere((cookie) => cookie.name == 'ipb_pass_hash').value;

    /// temporary name
    UserSetting.saveUserInfo(userName: 'EHUser'.tr, ipbMemberId: ipbMemberId, ipbPassHash: ipbPassHash);

    toast('loginSuccess'.tr);
    untilRoute(
      currentRoute: Routes.webview,
      predicate: (route) => route.settings.name == Routes.settingAccount || route.settings.name == Routes.home,
    );

    /// get username and avatar
    Map<String, String?>? userInfo = await EHRequest.requestForum(ipbMemberId, EHSpiderParser.forumPage2UserInfo);
    UserSetting.saveUserNameAndAvatarAndNickName(
      userName: userInfo!['userName']!,
      avatarImgUrl: userInfo['avatarImgUrl'],
      nickName: userInfo['nickName']!,
    );
  }
}
