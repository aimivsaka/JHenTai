import 'package:jhentai/src/mixin/scroll_to_top_state_mixin.dart';

class GalleryDownloadPageState with Scroll2TopStateMixin {
  Set<String> displayGroups = {};
  final Set<int> removedGids = {};
  final Set<int> removedGidsWithoutImages = {};
}
