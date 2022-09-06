import 'package:jhentai/src/pages/search/base/base_search_page_logic.dart';
import 'package:jhentai/src/pages/search/desktop/desktop_search_page_state.dart';

import '../../base/base_page_logic.dart';

class DesktopSearchPageLogic extends BasePageLogic with BaseSearchPageLogic {
  @override
  final String suggestionBodyId = 'suggestionBodyId';
  @override
  final String galleryBodyId = 'galleryBodyId';
  @override
  final String searchFieldId = 'searchFieldId';

  @override
  int get tabIndex => 1;

  @override
  bool get useSearchConfig => false;

  @override
  bool get autoLoadForFirstTime => false;

  @override
  final DesktopSearchPageState state = DesktopSearchPageState();
}
