import 'dart:ui';

import 'package:animate_do/animate_do.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jhentai/src/pages/home_page.dart';
import 'package:jhentai/src/pages/layout/desktop/desktop_layout_page_state.dart';
import 'package:resizable_widget/resizable_widget.dart';
import 'package:jhentai/src/widget/focus_widget.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

import '../../../config/global_config.dart';
import '../../../routes/routes.dart';
import '../../blank_page.dart';
import 'desktop_layout_page_logic.dart';

class DesktopLayoutPage extends StatelessWidget {
  final DesktopLayoutPageLogic logic = Get.put(DesktopLayoutPageLogic(), permanent: true);
  final DesktopLayoutPageState state = Get.find<DesktopLayoutPageLogic>().state;

  DesktopLayoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.stylus,
          PointerDeviceKind.trackpad,
          PointerDeviceKind.unknown,
        },
        scrollbars: true,
      ),
      child: Row(
        children: [
          _leftTabBar(context),
          Expanded(
            child: ResizableWidget(
              children: [
                _leftColumn(),
                _rightColumn(),
              ],
              separatorColor: Colors.black,
              separatorSize: 2,
              percentages: [0.3, 0.7],
            ),
          ),
        ],
      ),
    );
  }

  Widget _leftTabBar(BuildContext context) {
    return Material(
      child: Container(
        width: GlobalConfig.desktopLeftTabBarWidth,
        decoration: BoxDecoration(
          color: Get.theme.colorScheme.background,
          border: Border(right: BorderSide(color: Get.theme.colorScheme.onBackground, width: 0.3)),
        ),
        child: FocusScope(
          autofocus: true,
          node: state.leftTabBarFocusScopeNode,
          child: GetBuilder<DesktopLayoutPageLogic>(
            id: logic.tabBarId,
            builder: (_) => ListView.builder(
              itemCount: state.icons.length,
              itemExtent: 64,
              itemBuilder: (_, int index) => MouseRegion(
                onEnter: (_) {
                  state.hoveredTabIndex = index;
                  logic.update([logic.tabBarId]);
                },
                onExit: (_) {
                  state.hoveredTabIndex = null;
                  logic.update([logic.tabBarId]);
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    FocusWidget(
                      enableFocus: state.icons[index].routeName != Routes.setting,
                      focusedDecoration: const BoxDecoration(color: Colors.grey),
                      handleTapEnter: () => logic.handleTapTabBarButton(index),
                      handleTapArrowRight: () {
                        if (state.selectedTabIndex != index) {
                          logic.handleTapTabBarButton(index);
                        } else {
                          state.leftColumnFocusScopeNode.requestFocus();
                        }
                      },
                      child: GestureDetector(
                        onTap: () => logic.handleTapTabBarButton(index),
                        behavior: HitTestBehavior.opaque,
                        child: Container(
                          height: 32,
                          width: 48,
                          decoration: state.selectedTabIndex == index
                              ? BoxDecoration(border: Border(left: BorderSide(width: 4, color: Get.theme.colorScheme.onBackground)))
                              : null,
                          child: state.selectedTabIndex == index ? state.icons[index].selectedIcon : state.icons[index].unselectedIcon,
                        ).paddingAll(8),
                      ),
                    ),
                    if (state.hoveredTabIndex == index)
                      FadeIn(
                        child: Text(state.icons[index].name.tr, style: const TextStyle(fontSize: 12)),
                        duration: const Duration(milliseconds: 200),
                      )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _leftColumn() {
    return FocusScope(
      node: state.leftColumnFocusScopeNode,
      child: GetBuilder<DesktopLayoutPageLogic>(
        id: logic.pageId,
        builder: (_) => Stack(
          children: state.icons
              .where((icon) => icon.shouldRender)
              .mapIndexed((index, icon) => Offstage(
                    offstage: state.selectedTabOrder != index,
                    child: icon.page.call(),
                  ))
              .toList(),
        ),
      ),
    );
  }

  Widget _rightColumn() {
    return Navigator(
      key: Get.nestedKey(right),
      requestFocus: false,
      observers: [GetObserver(null, rightRouting), SentryNavigatorObserver(), _FocusObserver()],
      onGenerateInitialRoutes: (_, __) => [
        GetPageRoute(
          settings: const RouteSettings(name: Routes.blank),
          page: () => const BlankPage(),
          popGesture: false,
          transition: Transition.fadeIn,
          showCupertinoParallax: false,
        ),
      ],
      onGenerateRoute: (settings) {
        Get.routing.args = settings.arguments;
        Get.parameters = Get.routeTree.matchRoute(settings.name!).parameters;
        return GetPageRoute(
          settings: settings,

          /// setting name may include path params
          page: Routes.pages.firstWhere((page) => settings.name!.split('?')[0] == page.name).page,

          /// do not use swipe back in tablet layout!
          popGesture: false,
          transition: Transition.fadeIn,
          transitionDuration: const Duration(milliseconds: 150),
          showCupertinoParallax: false,
        );
      },
    );
  }
}

class _FocusObserver extends NavigatorObserver {
  @override
  void didPop(Route route, Route? previousRoute) {
    Get.find<DesktopLayoutPageLogic>().state.leftColumnFocusScopeNode.requestFocus();
    super.didPush(route, previousRoute);
  }
}
