import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swapit/presentation/core/widgets/swapit_loader.dart';
import 'package:swapit/presentation/home/widgets/sticker_preview.dart';

import '../../../application/auction/sticker_auction_controller.dart';
import '../../../injection.dart';
import '../../sticker_auction_screen/sticker_auction_screen.dart';

class StickerPreviewList extends StatelessWidget {
  final StickerAuctionController controller = getIt<StickerAuctionController>();

  StickerPreviewList({Key? key}) : super(key: key) {
    controller.getAllAuctions();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => controller.isLoading
          ? const Center(
              child: SwapItLoader(),
            )
          : controller.auctions.isEmpty
              ? Center(
                  child: Text(
                  "No auctions yet",
                  style: Theme.of(context).textTheme.headline6,
                ))
              : Obx(() => ListView.separated(
                    itemCount: controller.auctions.length,
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 12,
                    ),
                    itemBuilder: (context, index) {
                      return StickerPreview(
                        previewData: controller.auctions[index],
                        onTap: () async {
                          await controller.getAuction(
                              auctionId: controller.auctions[index].id);
                          Get.to(() => StickerAuctionScreen());
                        },
                      );
                    },
                  )),
    );
  }
}
