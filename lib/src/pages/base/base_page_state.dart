import 'package:flutter/cupertino.dart';
import 'package:jhentai/src/mixin/scroll_to_top_state_mixin.dart';
import 'package:jhentai/src/model/search_config.dart';

import '../../model/gallery.dart';
import '../../widget/loading_state_indicator.dart';

class BasePageState with Scroll2TopStateMixin {
  SearchConfig searchConfig = SearchConfig();

  List<Gallery> gallerys = List.empty(growable: true);

  /// The first gallery's id in current page
  int? prevGid;

  /// The last gallery's id in current page
  int? nextGid;

  /// used for jump page
  DateTime seek = DateTime.now();

  String? totalCount;

  LoadingState refreshState = LoadingState.idle;
  LoadingState loadingState = LoadingState.idle;

  /// used for refresh
  Key galleryCollectionKey = UniqueKey();

  late PageStorageKey pageStorageKey;

  BasePageState() {
    pageStorageKey = PageStorageKey(runtimeType);
  }

  @override
  String toString() {
    return 'BasePageState{searchConfig: $searchConfig, gallerys: $gallerys, prevGid: $prevGid, nextGid: $nextGid, seek: $seek, totalCount: $totalCount, refreshState: $refreshState, loadingState: $loadingState, galleryCollectionKey: $galleryCollectionKey, pageStorageKey: $pageStorageKey}';
  }
}
