import 'dart:core';

class zh_TW {
  static Map<String, String> keys() {
    return {
      /// common
      'yes': '是',
      'no': '否',
      'cancel': "取消",
      'OK': "確定",
      'reset': "重置",
      'success': "成功",
      'error': "錯誤",
      'failed': "失敗",
      'reload': '重新載入',
      'noMoreData': '頁面到底了',
      'noData': '無查詢數據',
      'operationFailed': '操作失敗',
      'needLoginToOperate': '需要登入後才能操作',
      'hasCopiedToClipboard': "已複製到剪貼簿",
      'networkError': "網路錯誤，點擊重試",
      'systemError': "系統錯誤",
      'invalid': "無效",
      'internalError': "內部錯誤",
      'you': '你',
      'retryHint': '請刷新后重試',
      'stop': '停止',
      'attention': '注意',

      'home': "主畫面",
      'gallery': "畫廊",
      'setting': '設定',

      /// unlock page
      'localizedReason': '請驗證以繼續',
      'tap2Auth': '點擊以驗證',
      'passwordErrorHint': '密码错误，请重试',

      /// start page
      'TapAgainToExit': '再按一次退出',

      /// update dialog
      'availableUpdate': '有可用的更新!',
      'LatestVersion': '最新版本',
      'CurrentVersion': '當前版本',
      'check': '查看',
      'dismiss': '忽略',

      /// login page
      'login': '登入',
      'notLoggedIn': '未登入',
      'logout': '登出',
      'passwordLogin': '密碼登入',
      'cookieLogin': 'cookie登入',
      'youHaveLoggedInAs': '您已登入:   ',
      'cookieIsBlack': 'cookie為空',
      'cookieFormatError': 'cookie格式錯誤',
      'invalidCookie': '登入失敗或Cookie無效',
      'loginFail': '登入失敗',
      'userName': '用户名稱',
      'EHUser': 'E站用户',
      'password': '密碼',
      'needCaptcha': '需要勾選驗證碼。請另外選擇cookie登入或網頁登入。',
      'userNameOrPasswordMismatch': '用戶名或密碼錯誤',
      'copyCookies': '複製Cookies',
      'tap2Copy': '點擊複製',
      'webLoginIsDisabled': '桌面端無法使用Web登錄',
      'loginSuccess': '登錄成功',
      'userNameFormHint': '如果無法訪問裏站，請嘗試Cookie登錄',
      'tap2Login': '點擊登錄',
      'parse': '解析',

      /// request
      'sadPanda': 'Sad Panda: 無回應數據',

      /// gallery page
      'getGallerysFailed': "獲取畫廊數據失敗",
      'tabBarSetting': '標籤欄設定',
      'refreshGalleryFailed': '重整畫廊失敗',
      'jumpPageTo': '跳轉頁面至',
      'range': '範圍',
      'current': '當前',
      'galleryUrlDetected': '剪貼簿裡發現畫廊鏈接',
      'galleryUrlDetectedHint': '點擊進入詳情頁面',

      /// details page
      'read': '閱讀',
      'download': '下載',
      'favorite': '收藏',
      'rating': '評分',
      'torrent': '種子',
      'archive': '歸檔',
      'statistic': '統計',
      'similar': '相似',
      'downloading': "下載中",
      'resume': "繼續下載",
      'pause': '暫停',
      'finished': '已完成',
      'update': '更新',
      'submit': '送出',
      'chooseFavorite': '選擇收藏夾',
      'uploader': '上傳者',
      'allComments': '所有評論',
      'noComments': '暫無評論',
      'lastEditedOn': '最後修改於',
      'getGalleryDetailFailed': '獲取畫廊詳情失敗',
      'invisible2User': '此畫廊對您不可見',
      'invisibleHints': '畫廊已被刪除或對您進行了限制',
      'copyRightHints': '該畫廊因爲版權已被刪除，版權作者：',
      'refreshGalleryDetailsFailed': '重整畫廊詳情失敗',
      'failToGetThumbnails': "獲取畫廊快取圖數據失敗",
      'favoriteGallerySuccess': "收藏畫廊成功",
      'favoriteGalleryFailed': "收藏畫廊錯誤",
      'ratingSuccess': '評分成功',
      'ratingFailed': '評分失敗',
      'voteTagFailed': '投票標籤失敗',
      'beginToDownload': '開始下載',
      'resumeDownload': '繼續下載',
      'pauseDownload': '暫停下載',
      'addNewTagSetSuccess': '添加新標籤數據成功',
      'addNewWatchedTagSetSuccess': '添加新關注標籤成功',
      'addNewHiddenTagSetSuccess': '添加新隱藏標籤成功',
      'addNewTagSetSuccessHint': '你可以在 設定->EH->我的標籤 查看你的所有標籤',
      'addNewTagSetFailed': '添加新標籤數據失敗',
      'VisitorStatistics': '訪問數據',
      'invisible2UserWithoutDonation': '該畫廊統計數據對未捐贈用戶不可見',
      'getGalleryStatisticsFailed': '獲取畫廊統計數據失敗',
      'totalVisits': '總點閱量',
      'visits': '點閱数',
      'imageAccesses': '圖片點閱數',
      'period': '時間段',
      'ranking': '排行',
      'score': '分數',
      'NotOnTheList': '未上榜',
      'getGalleryArchiveFailed': '獲取歸檔數據失敗',
      'parseGalleryArchiveFailed': '解析錯誤，確保你e站的[Archiver Settings]設置的是[Manual Select, Manual Start (Default)]',
      'original': '原圖',
      'resample': '壓縮',
      'beginToDownloadArchive': '開始下載歸檔',
      'beginToDownloadArchiveHint': '可在 下載 -> 歸檔 確認進度',
      'updateGalleryError': '更新畫廊失敗',
      'thisGalleryHasANewVersion': '該畫廊有新版本',
      'hasUpdated': '已更新',
      'hasDownloaded': '已下載',
      '410Hints': '下載此歸檔次數過多，你需要重新購買、解鎖後才能繼續下載',
      'getUnpackedImagesFailedMsg': 'JHenTai無法讀取此歸檔的圖片，請檢查本地文件是否正常',
      'getGalleryTorrentsFailed': '獲取種子失敗',
      'chooseArchive': '選擇歸檔',
      'tagSetExceedLimit': '标签数量已达到上限',

      /// detail dialog
      'galleryUrl': '畫廊鏈接',
      'title': '標題',
      'japaneseTitle': '日文標題',
      'category': '類別',
      'publishTime': '發布時間',
      'pageCount': '頁數',
      'favoriteCount': '收藏次數',
      'ratingCount': '評分次數',

      /// comment page
      'newComment': '新評論',
      'updateComment': '更新評論',
      'commentTooShort': '評論過短',
      'sendCommentFailed': '發送評論失敗',
      'voteCommentFailed': '投票評論失敗',
      'unknownUser': '未知用戶',
      'failedToDealWith': '處理失敗',
      'atLeast3Characters': '至少3個字符',

      /// EHImage
      'reloadImage': "重新載入圖片",

      /// read page
      'parsingPage': "解析頁面中",
      'parsingURL': "解析URL中",
      'parsePageFailed': "解析頁面錯誤，點擊重試",
      'parseURLFailed': "解析URL錯誤，點擊重試",
      'loading': "載入中",
      'paused': '已暫停',
      'exceedImageLimits': "超出圖片配額限制",
      'unsupportedImagePageStyle': "JHenTai目前不支持Multi-Page Viewer(MPV)多頁查看，請在e-hentai.org更換為預設風格",
      'toNext': '下一頁',
      'toPrev': '上一頁',
      'back': '返回',
      'toggleMenu': '展示/隱藏選單',
      'share': '分享',
      'save': '保存至圖庫',

      /// setting page
      'account': '帳戶',
      'EH': 'EH',
      'style': '樣式',
      'preference': '偏好',
      'network': '網路',
      'mouseWheel': '滑鼠滾輪',
      'advanced': '進階',
      'about': '關於',
      'security': '安全',
      'accountSetting': '帳戶設定',
      'styleSetting': '樣式設定',
      'advancedSetting': '高級設定',
      'ehSetting': 'EH 網站設定',
      'securitySetting': '安全設定',
      'readSetting': '閱讀設定',
      'preferenceSetting': '偏好設置',
      'downloadSetting': '下載設定',
      'networkSetting': '網路設定',
      'mouseWheelSetting': '滑鼠滾輪設定',

      /// eh setting page
      'site': '站點',
      'redirect2Eh': '優先重定向至表站',
      'siteSetting': '站點設定',
      'showCookie': '查看 Cookie',
      'useSeparateProfile': '使用單獨的 Profile',
      'editProfileHint': '選擇並編輯 Profile',
      'redirect2EH': '畫廊鏈接重新導向至表站(如果可用)',
      'redirect2Hints': '會先嘗試解析表站',
      'pleaseLogInToOperate': '請登入後操作',
      'imageLimits': '圖片配額',
      'resetCost': '長按重置，花費',
      'assets': '資産',

      /// tag setting page
      'myTags': '我的標籤',
      'myTagsHint': '管理關注和隱藏的標籤',
      'localTags': '本地標簽',
      'localTagsHint': '額外的屏蔽標簽',
      'localTagsHint2': '本地屏蔽標簽會和E站本身的屏蔽標簽共同作用。此外E站本身的屏蔽標簽對排行榜的畫廊不生效，而本地標簽可以做到。',
      'hidden': '屏蔽',
      'nope': '無',
      'getTagSetFailed': '獲取標籤數據失敗',
      'updateTagSetFailed': '更新標籤數據失敗',
      'deleteTagSetSuccess': '刪除標籤數據成功',
      'deleteTagSetFailed': '刪除標籤數據失敗',

      /// Layout
      'mobileLayoutV2Name': '手機模式',
      'mobileLayoutV2Desc': '單列',
      'mobileLayoutName': '手機模式(舊)',
      'mobileLayoutDesc': '已停止維護',
      'tabletLayoutV2Name': '平板模式',
      'tabletLayoutV2Desc': '雙列',
      'tabletLayoutName': '平板模式(舊)',
      'tabletLayoutDesc': '已停止維護',
      'desktopLayoutName': '桌面模式',
      'desktopLayoutDesc': '雙列帶側欄，支援鍵盤操作',

      /// style setting page
      'layoutMode': '佈局模式',
      'enableTagZHTranslation': '開啟標籤中文翻譯',
      'version': '版本',
      'downloadTagTranslationHint': '下載數據中... 已下載: ',
      'themeMode': '主題模式',
      'dark': '黑暗',
      'light': '明亮',
      'followSystem': '跟隨系統',
      'themeColor': '主題顔色',
      'listStyle': '畫廊列表樣式(全局)',
      'flat': '平坦',
      'flatWithoutTags': '平坦 - 無標籤',
      'listWithoutTags': '卡片 - 無標籤',
      'listWithTags': '卡片',
      'waterfallFlowWithImageOnly': '瀑布流(僅圖片)',
      'waterfallFlowWithImageAndInfo': '瀑布流',
      'crossAxisCountInWaterFallFlow': '瀑布流列數',
      'pageListStyle': '畫廊列表樣式(頁面)',
      'crossAxisCountInGridDownloadPageForGroup': '下載頁網格布局列數(分組)',
      'crossAxisCountInGridDownloadPageForGallery': '下載頁網格布局列數(畫廊)',
      'global': '全局',
      'auto': '自動',
      'moveCover2RightSide': '移動封面圖至右側',
      'coverStyle': '封面圖片樣式',
      'cover': '覆蓋',
      'adaptive': '自適應',
      'hideBottomBar': '隱藏底部導航欄',
      'enableSwipeBackGesture': '允許通過左滑手勢返回',
      'enableLeftMenuDrawerGesture': '允許通過手勢喚起左側菜單',
      'enableQuickSearchDrawerGesture': '允許通過手勢喚起快捷搜尋',
      'alwaysShowScroll2TopButton': '總是展示快速回頂按鈕',

      /// theme color setting page
      'themeColorSettingHint': '你可以为明亮和黑暗主题分配不同的主题色',
      'preview': '預覽',
      'preset': '預設',
      'custom': '自定義',

      /// mouse wheel setting page
      'wheelScrollSpeed': '滑鼠滾輪速度',
      'ineffectiveInGalleryPage': '在畫廊頁面暫時無效',

      /// advanced setting page
      'enableDomainFronting': '開啟功能變數名稱前置',
      'bypassSNIBlocking': '繞過SNI封鎖',
      'hostMapping': 'Host映射',
      'hostMappingHint': '用於功能變數名稱前置',
      'proxyAddress': '代理服務器地址',
      'proxyAddressHint': '如果你使用了代理服務器，務必正確設定',
      'saveSuccess': '保存成功',
      'updateSuccess': '更新成功',
      'connectTimeout': '建立連接超時時間',
      'receiveTimeout': '接收數據超時時間',
      'pageCacheMaxAge': '頁面緩存時間',
      'pageCacheMaxAgeHint': '你可以通過重整頁面來更新快取',
      'oneMinute': '1 分鐘',
      'tenMinute': '10 分鐘',
      'oneHour': '1 小時',
      'oneDay': '1 天',
      'threeDay': '3 天',
      'enableLogging': '開啟日誌',
      'enableVerboseLogging': '記錄全部日誌',
      'openLog': '查看日誌',
      'clearLogs': '清除日誌',
      'clearImagesCache': '清除圖片快取',
      'longPress2Clear': '長按清除',
      'checkUpdateAfterLaunchingApp': '啟動應用時檢查更新',
      'checkClipboard': '檢測剪切板中的畫廊鏈接',
      'clearPageCache': '清除頁面快取',
      'clearSuccess': '清除成功',
      'superResolution': 'AI圖片放大',
      'stopSuperResolution': '停止AI圖片放大',
      'deleteSuperResolvedImage': '刪除AI放大後的圖片',
      'superResolveOriginalImageHint': '處理原圖會耗費更多的時間、空間和性能，確定繼續？',
      'verityAppLinks4Android12': '驗證應用鏈接（安卓12+）',
      'verityAppLinks4Android12Hint': '對於Android 12+，您需要手動將鏈接添加到已驗證的鏈接中，才能在其他應用程式中喚醒 JHenTai',

      /// host mapping page
      'hostDataSource': '預設情況下不用改動。\n數據來源: https://dns.google/',

      /// proxy page
      'proxySetting': '代理设置',
      'proxyType': '代理類型',
      'systemProxy': '系統代理',
      'httpProxy': 'HTTP',
      'socks5Proxy': 'SOCKS5',
      'socks4Proxy': 'SOCKS4',
      'directProxy': 'DIRECT',
      'address': '地址',

      /// security setting page
      'enablePasswordAuth': '開啓密碼認證',
      'enableBiometricAuth': '開啓生物認證',
      'enableAuthOnResume': '切換至後台後重新認證',
      'enableAuthOnResumeHints': '需要切換至後台超過3s',
      'enableBlurBackgroundApp': '在任務欄中模糊應用頁面',

      /// read setting page
      'enableImmersiveMode': '開啟沉浸模式',
      'keepScreenAwakeWhenReading': '閱讀時屏幕不自動鎖定',
      'spaceBetweenImages': '圖片間隔',
      'enableImmersiveHint': '隱藏系統狀態欄和底部導航列',
      'readDirection': '閱讀方向',
      'useThirdPartyViewer': '使用第三方閱讀器',
      'thirdPartyViewerPath': '第三方閱讀器路徑（可執行文件）',
      'showThumbnails': '顯示快取圖',
      'showStatusInfo': '底部顯示狀態信息',
      'autoModeInterval': '自動模式翻頁時間',
      'autoModeStyle': '自動模式風格',
      'scroll': '連續滾動',
      'turnPage': '依次翻頁',
      'top2bottom': '從上至下',
      'left2right': '從左至右',
      'right2left': '從右至左',
      'enablePageTurnAnime': '開啟翻頁動畫',
      'turnPageMode': '翻頁模式',
      'enableDoubleTapToScaleUp': '雙擊放大圖片',
      'turnPageModeHint': '移動至下一螢幕還是下一圖片',
      'image': '圖片',
      'screen': '螢幕',
      'preloadDistanceInOnlineMode': '在線模式預載距離',
      'ScreenHeight': '屏幕',
      'preloadPageCount': '在線模式預載圖片數量',
      'continuousScroll': '連續滾動',
      'continuousScrollHint': '拼接多個圖片',
      'doubleColumn': '雙列模式',
      'enableAutoScaleUp': '自動放大長圖片',
      'enableAutoScaleUpHints': '優先使圖片寬度占滿螢幕',

      /// preference setting page
      'showR18GImageDirectly': '標簽數據中直接顯示R18G圖片',

      /// log page
      'logList': '日誌列表',

      /// super resolution setting page
      'downloadSuperResolutionModelHint': '從Github下載模型',
      'modelDirectoryPath': '模型文件夾路徑',
      'upSamplingScale': '圖片放大倍數',
      'modelType': '選擇模型',
      'x4plusHint': '占據更多空間但大多數情況下更快',
      'x4plusAnimeHint': '占據更少空間但大多數情況下更慢',
      'enable4OnlineReading': '在線閱讀時自動處理圖片',

      /// download page
      'local': '本地',
      'delete': '刪除',
      'deleteTask': '僅刪除任務',
      'deleteTaskAndImages': '刪除任務和圖片',
      'reDownload': '重新下載',
      'unlocking': '解鎖歸檔中',
      'parsingDownloadPageUrl': '解析下載頁面鏈接',
      'parsingDownloadUrl': '解析下載鏈接',
      'downloaded': '下載完成',
      'downloadFailed': '下載失敗',
      'unpacking': '解壓中',
      'completed': '已完成',
      'needReUnlock': '需要重新解鎖',
      'reUnlock': '重新解鎖',
      'reUnlockHint': '注意！重新解鎖需要重新購買此歸檔！',
      'downloadHelpInfo': '如果發現無法下載，在日誌中發現了數據庫表不存在等問題，卸載當前app重裝即可。',
      'localGalleryHelpInfo': '加載那些不是由JHenTai下載的畫廊(當做本地閱覽器)。在下載設置-額外的畫廊掃描路徑中配置，之後刷新即可',
      'deleteLocalGalleryHint': '確定要刪除您的本地文件',
      'priority': '優先級',
      'highest': '最高',
      'default': '默認',
      'newGalleryCount': '新掃描到畫廊數目',
      'changePriority': '改變優先級',
      'changeGroup': '改變分組',
      'chooseGroup': '選擇分組',
      'renameGroup': '重命名分組',
      'deleteGroup': '刪除分組',
      'groupName': '分組名稱',
      'drag2sort': '拖拽以排序',
      'switch2GridMode': '切換至網格模式',
      'switch2ListMode': '切換至列表模式',
      'resumeAllTasks': '恢複所有任務',
      'pauseAllTasks': '恢複所有任務',
      'requireDownloadComplete': '需要等待下載完成',
      'operationHasCompleted': '操作已經結束',
      'operationInProgress': '操作正在進行中',
      'startProcess': '開始處理',

      /// search dialog
      'searchConfig': '搜尋設定',
      'addTabBar': '添加標籤欄',
      'updateTabBar': '更新設定',
      'addQuickSearch': '添加',
      'updateQuickSearch': '修改',
      'filter': '篩選',
      'tabBarName': '標籤欄名稱',
      'quickSearchName': '名稱',
      'pleaseInputValidName': '請輸入有效的名稱',
      'sameNameExists': '存在相同的名稱',
      'searchType': '搜尋方式',
      'popular': '熱門',
      'ranklist': '排行',
      'ranklistBoard': '排行榜',
      'watched': '關注',
      'history': '歷史',
      'keyword': '關鍵詞',
      'backspace2DeleteTag': '雙擊退格來刪除標簽',
      'searchGalleryName': '搜尋畫廊名字',
      'searchGalleryTags': '搜尋畫廊標籤',
      'searchGalleryDescription': '搜尋畫廊描述',
      'onlySearchExpungedGalleries': '只搜索移除了的畫廊',
      'onlyShowGalleriesWithTorrents': '只顯示有種子的畫廊',
      'searchLowPowerTags': '搜尋可信度較低的標籤',
      'searchDownVotedTags': '搜尋差評標簽',
      'pageAtLeast': '頁數至少',
      'pageAtMost': '頁數最多',
      'pagesBetween': '頁數範圍',
      'pageRangeSelectHint': 'min <= 1000, max >= 10\nmin/max <= 0.8, max-min >= 20',
      'to': '到',
      'minimumRating': '最低評分',
      'disableFilterForLanguage': '禁用語言過濾',
      'disableFilterForUploader': '禁用上傳者過濾',
      'disableFilterForTags': '禁用標籤過濾',
      'searchName': '搜尋畫廊名稱',
      'searchTags': '搜尋畫廊標簽',
      'searchNote': '搜尋畫廊註釋',
      'allTime': '總',
      'year': '年',
      'month': '月',
      'day': '日',

      /// popular page
      'getPopularListFailed': '獲取熱門畫廊列表失敗',

      /// ranklist page
      'getRanklistFailed': '獲取排行榜數據失敗',
      'getSomeOfGallerysFailed': '獲取部分畫廊數據失敗',

      /// history page
      'getHistoryGallerysFailed': '獲取歷史數據失敗',

      /// search page
      'search': '搜尋',
      'searchFailed': '搜尋失敗',
      'fileSearchFailed': '以圖搜圖失敗',
      'tab': '標簽頁',

      /// about page
      'author': '創作者',
      'Q&A': '常見問題',

      /// download setting page
      'downloadPath': '下載路徑',
      'changeDownloadPathHint': '長按來改變下載路徑(請不要使用SD卡或系統路徑)。會自動複制已下載的畫廊到新路徑，並保留原文件。如果妳遇到相關錯誤，請嘗試重置路徑',
      'resetDownloadPath': '重置下載路徑',
      'singleImageSavePath': '單張圖片保存路徑',
      'extraGalleryScanPath': '額外的畫廊掃描路徑',
      'extraGalleryScanPathHint': '掃描並加載本地畫廊的路徑。請不要使用SD卡或系統路徑',
      'longPress2Reset': '長按以重置',
      'needPermissionToChangeDownloadPath': '需要權限來改變下載路徑',
      'downloadOriginalImage': '下載原圖',
      'downloadOriginalImageByDefault': '默認選中下載原圖',
      'originalImage': '原圖',
      'resampleImage': '壓縮',
      'never': '從不',
      'manual': '手動',
      'always': '總是',
      'invalidPath': '無效的路徑。避免使用繫統路徑、根路徑或sd卡。',
      'downloadTaskConcurrency': '同時下載圖片數量',
      'needRestart': '需要重啟',
      'downloadTimeout': '單次下載超時時間',
      'speedLimit': '速度限制',
      'speedLimitHint': '下載太快可能會被限制',
      'per': '每',
      'images': '圖片',
      'downloadInOrder': '按任務加入順序下載',
      'alwaysUseDefaultGroup': '總是使用默認分組',
      'restoreDownloadTasks': '恢復下載任務',
      'enableStoreMetadataForRestore': '允許儲存下載元數據用來恢復下載記錄',
      'enableStoreMetadataForRestoreHint': '關閉此項後無法再恢復下載記錄',
      'deleteArchiveFileAfterDownload': '歸檔下載完成後刪除原壓縮包',
      'restoreDownloadTasksHint': '通過下載元數據來恢復下載記錄',
      'restoreDownloadTasksSuccess': '恢復下載任務成功',
      'restoredCount': '恢復任務數',
      'restoredGalleryCount': '恢復畫廊數目',
      'restoredArchiveCount': '恢復歸檔數目',
      'brokenDownloadPathHint': '似乎你的下載路徑已經損壞，下載功能可能失效',

      /// password setting dialog
      'setPasswordHint': '請輸入您的密碼',
      'confirmPasswordHint': '請再次輸入您的密碼',
      'passwordNotMatchHint': '密碼不匹配，請重試',

      /// quick search page
      'quickSearch': '快速搜尋',

      /// dashboard page
      'seeAll': '查看全部',
      'newest': '最新',

      /// tag dialog
      'warningImageHint': 'R18G圖片，點擊以顯示',

      /// tag namespace
      'language': '語言',
      'artist': '作者',
      'character': '角色',
      'female': '女性',
      'male': '男性',
      'parody': '原作',
      'group': '團體',
      'mixed': '混合',
      'Coser': 'Coser',
      'cosplayer': 'Coser',
      'reclass': '重新分類',
      'temp': '暫時',
      'other': '其他',
    };
  }
}
