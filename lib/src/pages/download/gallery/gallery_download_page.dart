import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:jhentai/src/config/ui_config.dart';

import '../../../database/database.dart';
import '../../../model/gallery_image.dart';
import '../../../routes/routes.dart';
import '../../../service/gallery_download_service.dart';
import '../../../utils/date_util.dart';
import '../../../utils/route_util.dart';
import '../../../widget/eh_gallery_category_tag.dart';
import '../../../widget/eh_image.dart';
import '../../../widget/eh_wheel_speed_controller.dart';
import '../../../widget/focus_widget.dart';
import '../../layout/desktop/desktop_layout_page_logic.dart';
import '../download_base_page.dart';
import 'gallery_download_page_logic.dart';
import 'gallery_download_page_state.dart';

class GalleryDownloadPage extends StatelessWidget {
  GalleryDownloadPage({Key? key}) : super(key: key);

  final GalleryDownloadPageLogic logic = Get.put<GalleryDownloadPageLogic>(GalleryDownloadPageLogic(), permanent: true);
  final GalleryDownloadPageState state = Get.find<GalleryDownloadPageLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: FadeIn(child: buildBody()),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_upward),
        heroTag: null,
        onPressed: logic.scroll2Top,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      titleSpacing: 0,
      title: const EHDownloadPageSegmentControl(bodyType: DownloadPageBodyType.download),
      actions: [
        ExcludeFocus(
          child: IconButton(
            icon: Icon(Icons.play_arrow, size: 26, color: UIConfig.resumeButtonColor),
            onPressed: logic.downloadService.resumeAllDownloadGallery,
            visualDensity: const VisualDensity(horizontal: -4),
          ),
        ),
        ExcludeFocus(
          child: IconButton(
            icon: Icon(Icons.pause, size: 26, color: UIConfig.pauseButtonColor),
            onPressed: logic.downloadService.pauseAllDownloadGallery,
          ),
        ),
      ],
    );
  }

  Widget buildBody() {
    return GetBuilder<GalleryDownloadService>(
      id: galleryCountOrOrderChangedId,
      builder: (_) => GetBuilder<GalleryDownloadPageLogic>(
        id: GalleryDownloadPageLogic.bodyId,
        builder: (_) => EHWheelSpeedController(
          controller: state.scrollController,
          child: GroupedListView<GalleryDownloadedData, String>(
            padding: const EdgeInsets.only(bottom: 80),
            controller: state.scrollController,
            groupBy: (archive) => logic.downloadService.galleryDownloadInfos[archive.gid]!.group,
            groupSeparatorBuilder: (groupName) => _groupBuilder(groupName).marginAll(5),
            elements: logic.downloadService.gallerys,
            itemBuilder: (BuildContext context, GalleryDownloadedData gallery) => _itemBuilder(gallery, context),
            sort: false,
          ),
        ),
      ),
    );
  }

  Widget _groupBuilder(String groupName) {
    return GestureDetector(
      onTap: () => logic.toggleDisplayGroups(groupName),
      onLongPress: () => logic.handleRenameGroup(groupName),
      onSecondaryTap: () => logic.handleRenameGroup(groupName),
      child: Container(
        height: UIConfig.downloadPageGroupHeight,
        decoration: BoxDecoration(
          color: UIConfig.downloadPageGroupColor,
          boxShadow: [UIConfig.downloadPageGroupShadow],
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            const SizedBox(width: UIConfig.downloadPageGroupHeaderWidth, child: Center(child: Icon(Icons.folder_open))),
            Text(groupName, maxLines: 1, overflow: TextOverflow.ellipsis),
            const Expanded(child: SizedBox()),
            GetBuilder<GalleryDownloadPageLogic>(
              id: '${GalleryDownloadPageLogic.groupId}::$groupName',
              builder: (_) => GroupOpenIndicator(isOpen: state.displayGroups.contains(groupName)).marginOnly(right: 8),
            ),
          ],
        ),
      ),
    );
  }

  Widget _itemBuilder(GalleryDownloadedData gallery, BuildContext context) {
    String? group = logic.downloadService.galleryDownloadInfos[gallery.gid]?.group;

    return GetBuilder<GalleryDownloadPageLogic>(
      id: '${GalleryDownloadPageLogic.groupId}::$group',
      builder: (_) => FocusWidget(
        focusedDecoration: BoxDecoration(border: Border(right: BorderSide(width: 3, color: Get.theme.colorScheme.onBackground))),
        handleTapArrowLeft: () => Get.find<DesktopLayoutPageLogic>().state.leftTabBarFocusScopeNode.requestFocus(),
        handleTapEnter: () => logic.goToReadPage(gallery),
        handleTapArrowRight: () => logic.goToReadPage(gallery),
        child: Slidable(
          key: Key(gallery.gid.toString()),
          endActionPane: _buildEndActionPane(gallery),
          child: GestureDetector(
            onSecondaryTap: () => showBottomSheet(gallery, context),
            onLongPress: () => showBottomSheet(gallery, context),
            child: FadeShrinkWidget(
              show: state.displayGroups.contains(group),
              child: FadeShrinkWidget(
                show: !logic.removedGids.contains(gallery.gid) && !logic.removedGidsWithoutImages.contains(gallery.gid),
                child: _buildCard(gallery, context).marginAll(5),
                afterDisappear: () {
                  logic.removedGids.remove(gallery.gid);
                  logic.removedGidsWithoutImages.remove(gallery.gid);
                  Get.engine.addPostFrameCallback((_) => logic.downloadService.deleteGallery(gallery, deleteImages: false));
                },
              ),
            ),
          ),
        ),
      ),
    );
  }

  ActionPane _buildEndActionPane(GalleryDownloadedData gallery) {
    return ActionPane(
      motion: const DrawerMotion(),
      extentRatio: 0.4,
      children: [
        SlidableAction(
          icon: Icons.bookmark,
          backgroundColor: Get.theme.scaffoldBackgroundColor,
          onPressed: (_) => logic.handleChangeGroup(gallery),
        ),
        SlidableAction(
          icon: FontAwesomeIcons.sort,
          backgroundColor: Get.theme.scaffoldBackgroundColor,
          onPressed: (BuildContext context) => showPrioritySheet(gallery, context),
        ),
        SlidableAction(
          icon: Icons.delete,
          foregroundColor: Colors.red,
          backgroundColor: Get.theme.scaffoldBackgroundColor,
          onPressed: (BuildContext context) => logic.handleRemoveItem(gallery, true),
        )
      ],
    );
  }

  Widget _buildCard(GalleryDownloadedData gallery, BuildContext context) {
    return Container(
      height: UIConfig.downloadPageCardHeight,
      decoration: BoxDecoration(
        color: UIConfig.downloadPageCardColor,
        boxShadow: [UIConfig.downloadPageCardShadow],
        borderRadius: BorderRadius.circular(15),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Row(
          children: [
            _buildCover(gallery, context),
            _buildInfo(gallery),
          ],
        ),
      ),
    );
  }

  Widget _buildCover(GalleryDownloadedData gallery, BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => toRoute(Routes.details, arguments: {'galleryUrl': gallery.galleryUrl}),
      child: GetBuilder<GalleryDownloadService>(
        id: '$downloadImageUrlId::${gallery.gid}::0',
        builder: (_) {
          GalleryImage? image = logic.downloadService.galleryDownloadInfos[gallery.gid]?.images[0];

          /// cover is the first image, if we haven't downloaded first image, then return a [CupertinoActivityIndicator]
          if (image?.downloadStatus != DownloadStatus.downloaded) {
            return SizedBox(
              width: UIConfig.downloadPageCoverWidth,
              height: UIConfig.downloadPageCoverHeight,
              child: Center(child: UIConfig.loadingAnimation),
            );
          }

          return EHImage.file(
            containerWidth: UIConfig.downloadPageCoverWidth,
            containerHeight: UIConfig.downloadPageCoverHeight,
            fit: BoxFit.fitWidth,
            galleryImage: image!,
          );
        },
      ),
    );
  }

  Widget _buildInfo(GalleryDownloadedData gallery) {
    return Expanded(
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => logic.goToReadPage(gallery),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildInfoHeader(gallery),
            const Expanded(child: SizedBox()),
            _buildInfoCenter(gallery),
            const Expanded(child: SizedBox()),
            _buildInfoFooter(gallery),
          ],
        ).paddingOnly(left: 6, right: 10, bottom: 6, top: 6),
      ),
    );
  }

  Widget _buildInfoHeader(GalleryDownloadedData gallery) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          gallery.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: UIConfig.downloadPageCardTitleSize, height: 1.2),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            if (gallery.uploader != null)
              Text(
                gallery.uploader!,
                style: TextStyle(fontSize: UIConfig.downloadPageCardTextSize, color: UIConfig.downloadPageCardTextColor),
              ),
            Text(
              DateUtil.transform2LocalTimeString(gallery.publishTime),
              style: TextStyle(fontSize: UIConfig.downloadPageCardTextSize, color: UIConfig.downloadPageCardTextColor),
            ),
          ],
        ).marginOnly(top: 5),
      ],
    );
  }

  Widget _buildInfoCenter(GalleryDownloadedData gallery) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        EHGalleryCategoryTag(category: gallery.category),
        const Expanded(child: SizedBox()),
        _buildIsOriginal(gallery).marginOnly(right: 10),
        _buildPriority(gallery).marginOnly(right: 6),
        _buildButton(gallery),
      ],
    );
  }

  Widget _buildIsOriginal(GalleryDownloadedData gallery) {
    bool isOriginal = gallery.downloadOriginalImage;
    if (!isOriginal) {
      return const SizedBox();
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: UIConfig.pauseButtonColor),
      ),
      child: Text(
        'original'.tr,
        style: TextStyle(color: UIConfig.pauseButtonColor, fontWeight: FontWeight.bold, fontSize: 9),
      ),
    );
  }

  Widget _buildPriority(GalleryDownloadedData gallery) {
    int? priority = logic.downloadService.galleryDownloadInfos[gallery.gid]?.priority;
    if (priority == null) {
      return const SizedBox();
    }

    switch (priority) {
      case 1:
        return Text('①', style: TextStyle(color: UIConfig.pauseButtonColor, fontWeight: FontWeight.bold));
      case 2:
        return Text('②', style: TextStyle(color: UIConfig.pauseButtonColor, fontWeight: FontWeight.bold));
      case 3:
        return Text('③', style: TextStyle(color: UIConfig.pauseButtonColor, fontWeight: FontWeight.bold));
      case GalleryDownloadService.defaultDownloadGalleryPriority:
        return const SizedBox();
      case 5:
        return Text('⑤', style: TextStyle(color: UIConfig.pauseButtonColor, fontWeight: FontWeight.bold));
      default:
        return const SizedBox();
    }
  }

  Widget _buildButton(GalleryDownloadedData gallery) {
    return GetBuilder<GalleryDownloadService>(
      id: '$galleryDownloadProgressId::${gallery.gid}',
      builder: (_) {
        DownloadStatus downloadStatus = logic.downloadService.galleryDownloadInfos[gallery.gid]!.downloadProgress.downloadStatus;
        return GestureDetector(
          onTap: () {
            downloadStatus == DownloadStatus.paused
                ? logic.downloadService.resumeDownloadGallery(gallery)
                : logic.downloadService.pauseDownloadGallery(gallery);
          },
          child: Icon(
            downloadStatus == DownloadStatus.paused
                ? Icons.play_arrow
                : downloadStatus == DownloadStatus.downloading
                    ? Icons.pause
                    : Icons.done,
            size: 26,
            color: downloadStatus == DownloadStatus.downloading ? UIConfig.pauseButtonColor : UIConfig.resumeButtonColor,
          ),
        );
      },
    );
  }

  Widget _buildInfoFooter(GalleryDownloadedData gallery) {
    return GetBuilder<GalleryDownloadService>(
      id: '$galleryDownloadProgressId::${gallery.gid}',
      builder: (_) {
        GalleryDownloadProgress downloadProgress = logic.downloadService.galleryDownloadInfos[gallery.gid]!.downloadProgress;
        GalleryDownloadSpeedComputer speedComputer = logic.downloadService.galleryDownloadInfos[gallery.gid]!.speedComputer;
        return Column(
          children: [
            Row(
              children: [
                if (downloadProgress.downloadStatus == DownloadStatus.downloading)
                  GetBuilder<GalleryDownloadService>(
                    id: '$galleryDownloadSpeedComputerId::${gallery.gid}',
                    builder: (_) => Text(
                      speedComputer.speed,
                      style: TextStyle(fontSize: UIConfig.downloadPageCardTextSize, color: UIConfig.downloadPageCardTextColor),
                    ),
                  ),
                const Expanded(child: SizedBox()),
                Text(
                  '${downloadProgress.curCount}/${downloadProgress.totalCount}',
                  style: TextStyle(fontSize: UIConfig.downloadPageCardTextSize, color: UIConfig.downloadPageCardTextColor),
                ),
              ],
            ),
            if (downloadProgress.downloadStatus != DownloadStatus.downloaded)
              SizedBox(
                height: 3,
                child: LinearProgressIndicator(
                  value: downloadProgress.curCount / downloadProgress.totalCount,
                  color: downloadProgress.downloadStatus == DownloadStatus.downloading
                      ? UIConfig.downloadPageProgressIndicatorColor
                      : UIConfig.downloadPageProgressIndicatorPausedColor,
                ),
              ).marginOnly(top: 4),
          ],
        );
      },
    );
  }

  void showBottomSheet(GalleryDownloadedData gallery, BuildContext context) {
    showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) => CupertinoActionSheet(
        actions: <CupertinoActionSheetAction>[
          CupertinoActionSheetAction(
            child: Text('changeGroup'.tr),
            onPressed: () {
              backRoute();
              logic.handleChangeGroup(gallery);
            },
          ),
          CupertinoActionSheetAction(
            child: Text('changePriority'.tr),
            onPressed: () {
              backRoute();
              showPrioritySheet(gallery, context);
            },
          ),
          CupertinoActionSheetAction(
            child: Text('reDownload'.tr),
            onPressed: () {
              logic.handleReDownloadItem(context, gallery);
              backRoute();
            },
          ),
          CupertinoActionSheetAction(
            child: Text('deleteTask'.tr, style: TextStyle(color: Colors.red.shade400)),
            onPressed: () {
              logic.handleRemoveItem(gallery, false);
              backRoute();
            },
          ),
          CupertinoActionSheetAction(
            child: Text('deleteTaskAndImages'.tr, style: TextStyle(color: Colors.red.shade400)),
            onPressed: () {
              logic.handleRemoveItem(gallery, true);
              backRoute();
            },
          ),
        ],
        cancelButton: CupertinoActionSheetAction(
          child: Text('cancel'.tr),
          onPressed: backRoute,
        ),
      ),
    );
  }

  void showPrioritySheet(GalleryDownloadedData gallery, BuildContext context) {
    showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) => CupertinoActionSheet(
        actions: [
          CupertinoActionSheetAction(
            child: Text('${'priority'.tr} : 1 (${'highest'.tr})'),
            isDefaultAction: logic.downloadService.galleryDownloadInfos[gallery.gid]?.priority == 1,
            onPressed: () {
              logic.handleAssignPriority(gallery, 1);
              backRoute();
            },
          ),
          ...[2, 3]
              .map((i) => CupertinoActionSheetAction(
                    child: Text('${'priority'.tr} : $i'),
                    isDefaultAction: logic.downloadService.galleryDownloadInfos[gallery.gid]?.priority == i,
                    onPressed: () {
                      logic.handleAssignPriority(gallery, i);
                      backRoute();
                    },
                  ))
              .toList(),
          CupertinoActionSheetAction(
            child: Text('${'priority'.tr} : 4 (${'default'.tr})'),
            isDefaultAction: logic.downloadService.galleryDownloadInfos[gallery.gid]?.priority == 4,
            onPressed: () {
              logic.handleAssignPriority(gallery, 4);
              backRoute();
            },
          ),
          CupertinoActionSheetAction(
            child: Text('${'priority'.tr} : 5'),
            isDefaultAction: logic.downloadService.galleryDownloadInfos[gallery.gid]?.priority == 5,
            onPressed: () {
              logic.handleAssignPriority(gallery, 5);
              backRoute();
            },
          ),
        ],
        cancelButton: CupertinoActionSheetAction(
          child: Text('cancel'.tr),
          onPressed: () => backRoute(),
        ),
      ),
    );
  }
}
