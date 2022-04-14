import 'dart:core';

class en_US {
  static Map<String, String> keys() {
    return {
      /// common
      'cancel': "Cancel",
      'OK': "OK",
      'success': "Success",
      'error': "Error",
      'failed': "Failed",
      'reload': 'Reload',
      'noMoreData': 'No More Data',
      'noData': 'No Data',
      'operationFailed': 'Operation Failed',
      'needLoginToOperate': 'Need Log In To Operate',
      'hasCopiedToClipboard': "Has Copied To Clipboard",
      'networkError': "Network Error",

      'home': "Home",
      'gallery': "Gallery",
      'setting': 'Setting',

      /// unlock page
      'localizedReason': 'Please authenticate to continue',
      'tap2Auth': 'Tap to Authenticate',

      /// login page
      'login': 'Login',
      'logout': 'Logout',
      'passwordLogin': 'Password Login',
      'cookieLogin': 'Cookie Login',
      'youHaveLoggedInAs': 'Hello:   ',
      'cookieIsBlack': 'Cookie is Black',
      'cookieFormatError': 'Cookie Format Error',
      'invalidCookie': 'Invalid Cookie',
      'loginFail': 'Login Failed',
      'userName': 'UserName',
      'password': 'Password',
      'needCaptcha': 'Need captcha, please login via cookie or web again.',
      'userNameOrPasswordMismatch': 'Username or password mismatch',
      'copyCookies': 'Copy Cookies',
      'tap2Copy': 'Tap to Copy',

      /// request
      'sadPanda': 'Sad Panda: No Data',

      /// gallery page
      'getGallerysFailed': "Get Gallerys Failed",
      'refreshGalleryFailed': 'Refresh Gallery Failed',
      'tabBarSetting': 'TabBar Setting',
      'jumpPageTo': 'Jump Page To',
      'range': 'Range',
      'current': 'Current',
      'galleryUrlDetected': 'Found Gallery Url in Clipboard',
      'galleryUrlDetectedHint': 'Tap to enter detail page',

      /// details page
      'read': 'Read',
      'download': 'Download',
      'favorite': 'Favorite',
      'rating': 'Rating',
      'torrent': 'Torrent',
      'archive': 'Archive',
      'statistic': 'Statistic',
      'similar': 'Similar',
      'downloading': "Downloading",
      'resume': "Resume",
      'pause': 'Pause',
      'finished': 'Finished',
      'submit': 'Submit',
      'chooseFavorite': 'Choose Favorite',
      'uploader': 'Uploader',
      'allComments': 'All Comments',
      'noComments': 'No Comments',
      'lastEditedOn': 'Last edited on',
      'getGalleryDetailFailed': 'Get Gallery Detail Failed',
      'invisible2User': 'This Gallery is invisible to You',
      'invisibleHints': 'This gallery is removed or unavailable.',
      'refreshGalleryDetailsFailed': 'Refresh Gallery Details Failed',
      'failToGetThumbnails': "Fail To Get Thumbnails",
      'favoriteGalleryFailed': "Favorite Gallery Failed",
      'ratingFailed': 'Rating Failed',
      'voteTagFailed': 'Vote Tag Failed',
      'beginToDownload': 'Begin To Download',
      'resumeDownload': 'Resume Download',
      'pauseDownload': 'Pause Download',
      'addNewTagSetSuccess': 'Add New Tag Set Success',
      'addNewWatchedTagSetSuccess': 'Add New Watched Tag Set Success',
      'addNewHiddenTagSetSuccess': 'Add New Hidden Tag Set Success',
      'addNewTagSetSuccessHint': 'You can check your tags at Setting->EH->My Tags',
      'addNewTagSetFailed': 'Add New Tag Set Failed',
      'VisitorStatistics': 'Visitor Statistics',
      'invisible2UserWithoutDonation': 'This gallery\'s stats is invisible to user without donation',
      'getGalleryStatisticsFailed': 'Get Gallery Statistics Failed',
      'totalVisits': 'Total Visits',
      'visits': 'Visits',
      'imageAccesses': 'Image Accesses',
      'period': 'Period',
      'ranking': 'Ranking',
      'score': 'Score',
      'NotOnTheList': 'Not on the list',

      /// comment page
      'newComment': 'New Comment',
      'commentTooShort': 'Comment is Too Short',
      'sendCommentFailed': 'Send Comment Failed',
      'voteCommentFailed': 'Vote Comment Failed',

      /// EHImage
      'reloadImage': "Reload Image",

      /// read page
      'parsingPage': "Parsing Page",
      'parsingURL': "Parsing URL",
      'parsePageFailed': "Parse Page Failed",
      'parseURLFailed': "Parse URL Failed",
      'loading': "Loading",
      'paused': 'Paused',
      'exceedImageLimits': "Exceed Image Limits",

      /// setting page
      'account': 'Account',
      'EH': 'EH',
      'style': 'Style',
      'advanced': 'Advanced',
      'security': 'Security',
      'about': 'About',
      'accountSetting': 'Account Setting',
      'styleSetting': 'Style Setting',
      'advancedSetting': 'Advanced Setting',
      'securitySetting': 'Security Setting',
      'ehSetting': 'EH Site Setting',
      'readSetting': 'Read Setting',
      'downloadSetting': 'Download Setting',

      /// eh setting page
      'site': 'Site',
      'siteSetting': 'Site Setting',
      'redirect2EH': 'Redirect to EH site if Available',
      'redirect2Hints': 'Will try to parse EH site first',
      'pleaseLogInToOperate': 'Please Log In To Operate',
      'imageLimits': 'Image Limits',

      /// tag setting page
      'myTags': 'My Tags',
      'myTagsHint': 'manage watched and hidden tags',
      'getTagSetFailed': 'Get Tag Set Failed',
      'updateTagSetFailed': 'Update Tag Set Failed',
      'deleteTagSetSuccess': 'Delete Tag Set Success',
      'deleteTagSetFailed': 'Delete Tag Set Failed',

      /// style setting page
      'enableTagZHTranslation': 'Translate tag name into chinese',
      'version': 'Version',
      'downloadTagTranslationHint': 'Downloading data..., downloaded: ',
      'themeMode': 'Theme Mode',
      'dark': 'Dark',
      'light': 'Light',
      'followSystem': 'Follow System',
      'listStyle': 'Gallery List Style',
      'listWithoutTags': 'List(Without Tags)',
      'listWithTags': 'List',
      'waterfallFlowWithImageOnly': 'Waterfall Flow(Image Only)',
      'waterfallFlowWithImageAndInfo': 'Waterfall Flow',
      'coverStyle': 'Cover Style',
      'cover': 'Cover',
      'adaptive': 'Adaptive',
      'enableTabletLayout': 'Enable Tablet Layout',

      /// advanced setting page
      'enableDomainFronting': 'Enable Domain Fronting',
      'pageCacheMaxAge': 'Page Cache Max Age',
      'pageCacheMaxAgeHint': 'You can update cache by refresh page',
      'oneMinute': '1 Minute',
      'tenMinute': '10 Minute',
      'oneHour': '1 Hour',
      'oneDay': '1 Day',
      'threeDay': '3 Day',
      'enableLogging': 'Enable Logging',
      'openLog': 'Open Log',
      'clearLogs': 'Clear Logs',
      'clearImagesCache': 'Clear Images Cache',
      'longPress2Clear': 'Long Press to Clear',

      /// security setting page
      'enableFingerPrintLock': 'Enable FingerPrint Lock',
      'enableBlurBackgroundApp': 'Enable Blur Page When Switch to Background',

      /// read setting page
      'enableImmersiveMode': 'Enable Immersive Mode',
      'enableImmersiveHint': 'Hide System Bar',
      'readDirection': 'Read Direction',
      'top2bottom': 'Top to Bottom',
      'left2right': 'Left to Right',
      'right2left': 'Right to Left',
      'enablePageTurnAnime': 'Enable Page Turn Anime',
      'turnPageMode': 'Turn Page Mode',
      'turnPageModeHint': 'To next screen or next image',
      'image': 'Image',
      'screen': 'Screen',
      'preloadDistanceInOnlineMode': 'Preload Distance(Online)',
      'ScreenHeight': 'Screen Height',
      'preloadPageCount': 'Preload Page Count',
      'enableAutoScaleUp': 'Enable Auto Scale up long image',
      'enableAutoScaleUpHints': 'Make image width same as screen width',

      /// log page
      'logList': 'Log List',

      /// download page
      'delete': 'Delete',

      /// search dialog
      'searchConfig': 'Search Config',
      'addTabBar': 'Add Tab Bar',
      'updateTabBar': 'Update Tab Bar',
      'filterConfig': 'Filter Config',
      'tabBarName': 'TabBar Name',
      'searchType': 'Search Type',
      'popular': 'Popular',
      'ranklist': 'Ranklist',
      'watched': 'Watched',
      'history': 'History',
      'keyword': 'Keyword',
      'searchGalleryName': 'Search Gallery Name',
      'searchGalleryTags': 'Search Gallery Tags',
      'searchGalleryDescription': 'Search Gallery Description',
      'searchExpungedGalleries': 'Search Expunged Galleries',
      'onlyShowGalleriesWithTorrents': 'Only Show Galleries With Torrents',
      'searchLowPowerTags': 'Search LowPower Tags',
      'searchDownVotedTags': 'Search DownVoted Tags',
      'pageAtLeast': 'Page At Least',
      'pageAtMost': 'Page At Most',
      'pagesBetween': 'Pages Between',
      'to': 'to',
      'minimumRating': 'Minimum Rating',
      'disableFilterForLanguage': 'Disable Filter For Language',
      'disableFilterForUploader': 'Disable Filter For Uploader',
      'disableFilterForTags': 'Disable Filter For Tags',
      'searchName': 'Search Name',
      'searchTags': 'Search Tags',
      'searchNote': 'Search Note',
      'allTime': 'All-Time',
      'year': 'Year',
      'month': 'Month',
      'day': 'Day',

      /// ranklist view
      'getRanklistFailed': 'Get Ranklist Failed',
      'getSomeOfGallerysFailed': 'Get Some of Gallerys Failed',

      /// history view
      'getHistoryGallerysFailed': 'Get Some of History Gallerys Failed',

      /// search page
      'search': 'Search',
      'searchFailed': 'Search Failed',
      'fileSearchFailed': 'File Search Failed',

      /// about page
      'author': 'Author',

      /// download setting page
      'downloadPath': 'Download Path',
      'downloadTaskConcurrency': 'Download Task Concurrency',
      'needRestart': 'Need Restart',
      'downloadTimeout': 'Download Timeout',
      'enableStoreMetadataForRestore': 'Enable Store Metadata for Restore',
      'enableStoreMetadataForRestoreHint': 'If disable this, you can\'t restore download tasks',
      'restoreDownloadTasks': 'Restore Download Tasks',
      'restoreDownloadTasksHint': 'Restore download tasks by metadata',
      'restoreDownloadTasksSuccess': 'Restore Download Tasks Success',
      'restoredCount': 'Restored task count',

      /// tag namespace
      'language': 'Language',
      'artist': 'Artist',
      'character': 'Character',
      'female': 'Female',
      'male': 'Male',
      'parody': 'Parody',
      'group': 'Group',
      'mixed': 'Mixed',
      'Coser': 'Coser',
      'cosplayer': 'Cosplayer',
      'reclass': 'Reclass',
      'temp': 'Temp',
      'other': 'Other',
    };
  }
}
