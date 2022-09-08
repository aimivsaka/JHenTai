import 'package:battery_plus/battery_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jhentai/src/model/read_page_info.dart';
import 'package:jhentai/src/service/local_gallery_service.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../../database/database.dart';
import '../../model/gallery_image.dart';
import '../../model/gallery_thumbnail.dart';
import '../../service/gallery_download_service.dart';
import '../../widget/loading_state_indicator.dart';

class ReadPageState {
  /// gallery info
  final ReadPageInfo readPageInfo = Get.arguments;

  /// property used for parsing and loading
  late List<GalleryThumbnail?> thumbnails;
  late List<GalleryImage?> images;

  late List<LoadingState> parseImageHrefsStates;
  late List<LoadingState> parseImageUrlStates;
  String? parseImageHrefErrorMsg;
  late List<String?> parseImageUrlErrorMsg;

  bool autoMode = false;
  bool isMenuOpen = false;
  Battery battery = Battery();
  int batteryLevel = 100;
  FocusNode focusNode = FocusNode();

  final ItemScrollController thumbnailsScrollController = ItemScrollController();
  final ItemPositionsListener thumbnailPositionsListener = ItemPositionsListener.create();

  ReadPageState() {
    thumbnails = List.generate(readPageInfo.pageCount, (_) => null, growable: true);

    if (readPageInfo.mode == ReadMode.online) {
      images = List.generate(readPageInfo.pageCount, (_) => null);
    }

    if (readPageInfo.mode == ReadMode.downloaded) {
      images = Get.find<GalleryDownloadService>().galleryDownloadInfos[readPageInfo.gid]!.images;
    }

    if (readPageInfo.mode == ReadMode.archive || readPageInfo.mode == ReadMode.local) {
      images = readPageInfo.images!.cast<GalleryImage?>();
    }

    parseImageHrefsStates = List.generate(readPageInfo.pageCount, (_) => LoadingState.idle);
    parseImageUrlStates = List.generate(readPageInfo.pageCount, (_) => LoadingState.idle);
    parseImageUrlErrorMsg = List.generate(readPageInfo.pageCount, (_) => null);
    parseImageUrlErrorMsg = List.generate(readPageInfo.pageCount, (_) => null);
  }

  TextStyle get readPageTextStyle => TextStyle(
        color: Get.theme.colorScheme.surface,
        fontSize: 12,
        decoration: TextDecoration.none,
      );
}
