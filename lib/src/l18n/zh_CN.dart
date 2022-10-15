import 'dart:core';

class zh_CN {
  static Map<String, String> keys() {
    return {
      /// common
      'yes': '是',
      'no': '否',
      'cancel': "取消",
      'OK': "确定",
      'success': "成功",
      'error': "错误",
      'failed': "失败",
      'reload': '重新加载',
      'noMoreData': '到底啦',
      'noData': '无查询数据',
      'operationFailed': '操作失败',
      'needLoginToOperate': '需要登陆后才能操作',
      'hasCopiedToClipboard': "已复制到粘贴板",
      'networkError': "网络错误",
      'systemError': "系统错误",
      'invalid': "无效",
      'internalError': "内部错误",
      'you': '你',

      'home': "主页",
      'gallery': "画廊",
      'setting': '设置',

      /// unlock page
      'localizedReason': '请验证以继续',
      'tap2Auth': '点击以验证',

      /// start page
      'TapAgainToExit': '再按一次退出',

      /// update dialog
      'availableUpdate': '有可用的更新!',
      'LatestVersion': '最新版本',
      'CurrentVersion': '当前版本',
      'check': '查看',
      'dismiss': '忽略',

      /// login page
      'login': '登录',
      'notLoggedIn': '未登录',
      'logout': '注销',
      'passwordLogin': '密码登录',
      'cookieLogin': 'cookie登录',
      'youHaveLoggedInAs': '您已登录:   ',
      'cookieIsBlack': 'cookie为空',
      'cookieFormatError': 'cookie格式错误',
      'invalidCookie': '登陆失败或Cookie无效',
      'loginFail': '登陆失败',
      'userName': '用户名',
      'EHUser': 'E站用户',
      'password': '密码',
      'needCaptcha': '需要勾选验证码。请另外选择cookie登陆或网页登陆。',
      'userNameOrPasswordMismatch': '用户名或密码错误',
      'copyCookies': '复制Cookies',
      'tap2Copy': '点击复制',
      'webLoginIsDisabled': '桌面端无法使用Web登录',
      'loginSuccess': '登录成功',

      /// request
      'sadPanda': 'Sad Panda: 无响应数据',

      /// gallery page
      'getGallerysFailed': "获取画廊数据失败",
      'tabBarSetting': '标签栏设置',
      'refreshGalleryFailed': '刷新画廊失败',
      'jumpPageTo': '跳转页面至',
      'range': '范围',
      'current': '当前',
      'galleryUrlDetected': '剪切板里发现画廊链接',
      'galleryUrlDetectedHint': '点击进入详情页面',

      /// details page
      'read': '阅读',
      'download': '下载',
      'favorite': '收藏',
      'rating': '评分',
      'torrent': '种子',
      'archive': '归档',
      'statistic': '统计',
      'similar': '相似',
      'downloading': "下载中",
      'resume': "继续下载",
      'pause': '暂停',
      'finished': '已完成',
      'update': '更新',
      'submit': '提交',
      'chooseFavorite': '选择收藏夹',
      'uploader': '上传者',
      'allComments': '所有评论',
      'noComments': '暂无评论',
      'lastEditedOn': '最后修改于',
      'getGalleryDetailFailed': '获取画廊详情失败',
      'invisible2User': '此画廊对您不可见',
      'invisibleHints': '画廊已被删除或对您进行了限制',
      'copyRightHints': '该画廊因为版权已被删除，版权作者：',
      'refreshGalleryDetailsFailed': '刷新画廊详情失败',
      'failToGetThumbnails': "获取画廊缩略图数据失败",
      'favoriteGalleryFailed': "收藏画廊错误",
      'ratingFailed': '评分失败',
      'voteTagFailed': '投票标签失败',
      'beginToDownload': '开始下载',
      'resumeDownload': '继续下载',
      'pauseDownload': '暂停下载',
      'addNewTagSetSuccess': '添加新标签数据成功',
      'addNewWatchedTagSetSuccess': '添加新关注标签成功',
      'addNewHiddenTagSetSuccess': '添加新隐藏标签成功',
      'addNewTagSetSuccessHint': '你可以在 设置->EH->我的标签 查看你的所有标签',
      'addNewTagSetFailed': '添加新标签数据失败',
      'VisitorStatistics': '访问数据',
      'invisible2UserWithoutDonation': '该画廊统计数据对未捐赠用户不可见',
      'getGalleryStatisticsFailed': '获取画廊统计数据失败',
      'totalVisits': '总访问量',
      'visits': '访问数',
      'imageAccesses': '图片访问数',
      'period': '时间段',
      'ranking': '排行',
      'score': '分数',
      'NotOnTheList': '未上榜',
      'getGalleryArchiveFailed': '获取归档数据失败',
      'parseGalleryArchiveFailed': '解析错误，确保你e站的[Archiver Settings]设置的是[Manual Select, Manual Start (Default)]',
      'original': '原图',
      'resample': '压缩',
      'beginToDownloadArchive': '开始下载归档',
      'beginToDownloadArchiveHint': '可在 下载 -> 归档 确认进度',
      'updateGalleryError': '更新画廊失败',
      'thisGalleryHasANewVersion': '该画廊有新版本',
      'hasUpdated': '已更新',
      'failedToDealWith': '处理失败',
      'hasDownloaded': '已下载',
      '410Hints': '下载此归档次数过多，你需要重新购买、解锁后才能继续下载',
      'getUnpackedImagesFailedMsg': 'JHenTai无法读取此归档的图片，请检查本地文件是否正常',
      'getGalleryTorrentsFailed': '获取种子失败',
      'chooseArchive': '选择归档',

      /// comment page
      'newComment': '新评论',
      'commentTooShort': '评论过短',
      'sendCommentFailed': '发送评论失败',
      'voteCommentFailed': '投票评论失败',
      'unknownUser': '未知用户',
      'atLeast3Characters': '至少3个字符',

      /// EHImage
      'reloadImage': "重新加载图片",

      /// read page
      'parsingPage': "解析页面中",
      'parsingURL': "解析URL中",
      'parsePageFailed': "解析页面错误",
      'parseURLFailed': "解析URL错误",
      'loading': "加载中",
      'paused': '已暂停',
      'exceedImageLimits': "超出图片配额限制",
      'unsupportedImagePageStyle': "JHenTai当前不支持Multi-Page Viewer(MPV)多页查看，请在e-hentai.org更换为默认风格",
      'toNext': '下一页',
      'toPrev': '上一页',
      'back': '返回',
      'toggleMenu': '展示/隐藏菜单',
      'share': '分享',
      'save': '保存至图库',

      /// setting page
      'account': '账户',
      'EH': 'EH',
      'style': '样式',
      'network': '网络',
      'mouseWheel': '鼠标滚轮',
      'advanced': '高级',
      'about': '关于',
      'security': '安全',
      'accountSetting': '账户设置',
      'styleSetting': '样式设置',
      'advancedSetting': '高级设置',
      'ehSetting': 'EH 网站设置',
      'securitySetting': '安全设置',
      'readSetting': '阅读设置',
      'downloadSetting': '下载设置',
      'networkSetting': '网络设置',
      'mouseWheelSetting': '鼠标滚轮设置',

      /// eh setting page
      'site': '站点',
      'redirect2Eh': '优先重定向至表站',
      'siteSetting': '站点设置',
      'editProfileHint': '选择JHenTai的Profile并编辑',
      'redirect2EH': '画廊链接重定向至表站(如果可用)',
      'redirect2Hints': '会先尝试解析表站',
      'pleaseLogInToOperate': '请登陆后操作',
      'imageLimits': '图片配额',

      /// tag setting page
      'myTags': '我的标签',
      'myTagsHint': '管理关注和隐藏的标签',
      'hidden': '屏蔽',
      'nope': '无',
      'getTagSetFailed': '获取标签数据失败',
      'updateTagSetFailed': '更新标签数据失败',
      'deleteTagSetSuccess': '删除标签数据成功',
      'deleteTagSetFailed': '删除标签数据失败',

      /// Layout
      'mobileLayoutV2Name': '手机模式',
      'mobileLayoutV2Desc': '单列',
      'mobileLayoutName': '手机模式(旧)',
      'mobileLayoutDesc': '已停止维护',
      'tabletLayoutV2Name': '平板模式',
      'tabletLayoutV2Desc': '双列',
      'tabletLayoutName': '平板模式(旧)',
      'tabletLayoutDesc': '已停止维护',
      'desktopLayoutName': '桌面模式',
      'desktopLayoutDesc': '双列带侧栏，支持键盘操作',

      /// style setting page
      'layoutMode': '布局模式',
      'enableTagZHTranslation': '开启标签中文翻译',
      'version': '版本',
      'downloadTagTranslationHint': '下载数据中... 已下载: ',
      'themeMode': '主题模式',
      'dark': '黑暗',
      'light': '明亮',
      'followSystem': '跟随系统',
      'listStyle': '画廊列表样式',
      'flat': '平坦',
      'listWithoutTags': '卡片 - 无标签',
      'listWithTags': '卡片',
      'waterfallFlowWithImageOnly': '瀑布流(仅图片)',
      'waterfallFlowWithImageAndInfo': '瀑布流',
      'moveCover2RightSide': '移动封面图至右侧',
      'coverStyle': '封面图片样式',
      'cover': '覆盖',
      'adaptive': '自适应',
      'hideBottomBar': '隐藏底部导航栏',
      'enableQuickSearchDrawerGesture': '允许通过手势唤起快速搜索',

      /// mouse wheel setting page
      'wheelScrollSpeed': '鼠标滚轮速度',
      'ineffectiveInGalleryPage': '在画廊页面暂时无效',

      /// advanced setting page
      'enableDomainFronting': '开启域名前置',
      'bypassSNIBlocking': '绕过SNI封锁',
      'hostMapping': 'Host映射',
      'hostMappingHint': '用于域名前置',
      'proxyAddress': '代理服务器地址',
      'proxyAddressHint': '如果你使用了代理服务器，务必正确配置',
      'saveSuccess': '保存成功',
      'updateSuccess': '更新成功',
      'connectTimeout': '建立连接超时时间',
      'receiveTimeout': '接收数据超时时间',
      'pageCacheMaxAge': '页面缓存时间',
      'pageCacheMaxAgeHint': '你可以通过刷新页面来更新缓存',
      'oneMinute': '1 分钟',
      'tenMinute': '10 分钟',
      'oneHour': '1 小时',
      'oneDay': '1 天',
      'threeDay': '3 天',
      'enableLogging': '开启日志',
      'enableVerboseLogging': '记录全部日志',
      'openLog': '查看日志',
      'clearLogs': '清除日志',
      'clearImagesCache': '清除图片缓存',
      'longPress2Clear': '长按清除',
      'checkUpdateAfterLaunchingApp': '启动应用时检查更新',
      'checkClipboard': '检测剪切板中的画廊链接',
      'clearPageCache': '清除页面缓存',
      'clearSuccess': '清除成功',

      /// host mapping page
      'hostDataSource': '默认情况下不用改动。\n数据来源: https://dns.google/',

      /// security setting page
      'enableBiometricLock': '开启生物认证（启动时）',
      'enableBiometricLockOnResume': '开启生物认证（切换至前台时）',
      'enableBiometricLockOnResumeHints': '需要切换至后台超过3s',
      'enableBlurBackgroundApp': '在任务栏中模糊应用页面',

      /// read setting page
      'enableImmersiveMode': '开启沉浸模式',
      'enableImmersiveHint': '隐藏系统状态栏和底部导航栏',
      'readDirection': '阅读方向',
      'useThirdPartyViewer': '使用第三方阅读器',
      'thirdPartyViewerPath': '第三方阅读器路径（可执行文件）',
      'showThumbnails': '显示缩略图',
      'showStatusInfo': '底部显示状态信息',
      'autoModeInterval': '自动模式翻页时间',
      'autoModeStyle': '自动模式风格',
      'scroll': '连续滚动',
      'turnPage': '依次翻页',
      'top2bottom': '从上至下',
      'left2right': '从左至右',
      'right2left': '从右至左',
      'enablePageTurnAnime': '开启翻页动画',
      'enableDoubleTapToScaleUp': '双击放大图片',
      'turnPageMode': '翻页模式',
      'turnPageModeHint': '移动至下一屏幕还是下一图片',
      'image': '图片',
      'screen': '屏幕',
      'preloadDistanceInOnlineMode': '在线模式预载距离',
      'ScreenHeight': '屏幕',
      'preloadPageCount': '在线模式预载图片数量',
      'continuousScroll': '连续滚动',
      'continuousScrollHint': '拼接多个图片',
      'doubleColumn': '双列模式',
      'enableAutoScaleUp': '自动放大长图片',
      'enableAutoScaleUpHints': '优先使图片宽度占满屏幕',

      /// log page
      'logList': '日志列表',

      /// download page
      'local': '本地',
      'delete': '删除',
      'deleteTask': '仅删除任务',
      'deleteTaskAndImages': '删除任务和图片',
      'reDownload': '重新下载',
      'unlocking': '解锁归档中',
      'parsingDownloadPageUrl': '解析下载页面链接',
      'parsingDownloadUrl': '解析下载链接',
      'downloaded': '下载完成',
      'downloadFailed': '下载失败',
      'unpacking': '解压中',
      'completed': '已完成',
      'needReUnlock': '需要重新解锁',
      'reUnlock': '重新解锁',
      'reUnlockHint': '注意！重新解锁需要重新购买此归档！',
      'downloadHelpInfo': '如果发现无法下载，在日志中发现了数据库表不存在等问题，卸载当前app重装即可。',
      'localGalleryHelpInfo': '加载那些不是由JHenTai下载的画廊(当做本地阅览器)。只需要将画廊文件夹移动至JHenTai下载目录然后刷新即可。',
      'priority': '优先级',
      'highest': '最高',
      'default': '默认',
      'newGalleryCount': '新扫描到画廊数目',
      'changePriority': '改变优先级',
      'changeGroup': '改变分组',
      'chooseGroup': '选择分组',
      'renameGroup': '重命名分组',
      'deleteGroup': '删除分组',
      'groupName': '分组名称',

      /// search dialog
      'searchConfig': '搜索配置',
      'addTabBar': '添加标签栏',
      'updateTabBar': '更新配置',
      'addQuickSearch': '添加',
      'updateQuickSearch': '修改',
      'filter': '筛选',
      'tabBarName': '标签栏名称',
      'quickSearchName': '名称',
      'pleaseInputValidName': '请输入有效的名称',
      'sameNameExists': '存在相同的名称',
      'searchType': '搜索方式',
      'popular': '热门',
      'ranklist': '排行',
      'ranklistBoard': '排行榜',
      'watched': '关注',
      'history': '历史',
      'keyword': '关键词',
      'backspace2DeleteTag': '双击退格来删除标签',
      'searchGalleryName': '搜索画廊名字',
      'searchGalleryTags': '搜索画廊标签',
      'searchGalleryDescription': '搜索画廊描述',
      'searchExpungedGalleries': '搜索移除了的画廊',
      'onlyShowGalleriesWithTorrents': '只显示有种子的画廊',
      'searchLowPowerTags': '搜索可信度较低的标签',
      'searchDownVotedTags': '搜索差评标签',
      'pageAtLeast': '页数至少',
      'pageAtMost': '页数最多',
      'pagesBetween': '页数范围',
      'to': '到',
      'minimumRating': '最低评分',
      'disableFilterForLanguage': '禁用语言过滤',
      'disableFilterForUploader': '禁用上传者过滤',
      'disableFilterForTags': '禁用标签过滤',
      'searchName': '搜索画廊名称',
      'searchTags': '搜索画廊标签',
      'searchNote': '搜索画廊注释',
      'allTime': '总',
      'year': '年',
      'month': '月',
      'day': '日',

      /// popular page
      'getPopularListFailed': '获取热门画廊列表失败',

      /// ranklist page
      'getRanklistFailed': '获取排行榜数据失败',
      'getSomeOfGallerysFailed': '获取部分画廊数据失败',

      /// history page
      'getHistoryGallerysFailed': '获取历史数据失败',

      /// search page
      'search': '搜索',
      'searchFailed': '搜索失败',
      'fileSearchFailed': '以图搜图失败',

      /// about page
      'author': '创作者',

      /// download setting page
      'downloadPath': '下载路径',
      'changeDownloadPathHint': '长按来改变下载路径。会自动复制已下载的画廊到新路径，并保留原文件。如果改变后出现画廊图片加载失败的情况，请尝试重置路径',
      'resetDownloadPath': '重置下载路径',
      'longPress2Reset': '长按以重置',
      'downloadOriginalImage': '下载原图',
      'downloadOriginalImageByDefault': '默认选中下载原图',
      'originalImage': '原图',
      'resampleImage': '压缩',
      'never': '从不',
      'manual': '手动',
      'always': '总是',
      'needPermissionToChangeDownloadPath': '需要权限来改变下载路径',
      'invalidPath': '无效的路径。避免使用系统路径、根路径或sd卡。',
      'downloadTaskConcurrency': '同时下载图片数量',
      'needRestart': '需要重启',
      'downloadTimeout': '单次下载超时时间',
      'speedLimit': '速度限制',
      'speedLimitHint': '下载太快可能会被限制',
      'per': '每',
      'images': '图片',
      'downloadInOrder': '按任务加入顺序下载',
      'alwaysUseDefaultGroup': '总是使用默认分组',
      'restoreDownloadTasks': '恢复下载任务',
      'enableStoreMetadataForRestore': '允许储存下载元数据用来恢复下载记录',
      'enableStoreMetadataForRestoreHint': '关闭此项后无法再恢复下载记录',
      'restoreDownloadTasksHint': '通过下载元数据来恢复下载记录',
      'restoreDownloadTasksSuccess': '恢复下载任务成功',
      'restoredCount': '恢复任务数',
      'restoredGalleryCount': '恢复画廊数目',
      'restoredArchiveCount': '恢复归档数目',

      /// quick search page
      'quickSearch': '快速搜索',

      /// dashboard page
      'seeAll': '查看全部',
      'newest': '最新',

      /// tag namespace
      'language': '语言',
      'artist': '作者',
      'character': '角色',
      'female': '女性',
      'male': '男性',
      'parody': '原作',
      'group': '团体',
      'mixed': '混合',
      'Coser': 'Coser',
      'cosplayer': 'Coser',
      'reclass': '重新分类',
      'temp': '暂时',
      'other': '其他',
    };
  }
}
