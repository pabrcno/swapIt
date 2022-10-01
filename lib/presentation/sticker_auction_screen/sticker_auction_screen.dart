import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swapit/presentation/core/constants.dart';
import 'package:swapit/presentation/core/widgets/action_button.dart';
import 'package:swapit/presentation/sticker_auction_screen/widgets/bid_dialog.dart';
import 'package:swapit/presentation/sticker_auction_screen/widgets/bid_tile.dart';

import '../../application/auction/sticker_auction_controller.dart';
import '../../domain/sticker/sticker_model.dart';
import '../../injection.dart';
import '../core/widgets/chronometer.dart';
import '../core/widgets/exchanges_list_view.dart';
import '../core/widgets/swapit_loader.dart';

class StickerAuctionScreen extends StatelessWidget {
  final StickerAuctionController controller = getIt<StickerAuctionController>();

  StickerAuctionScreen({Key? key}) : super(key: key);
  onBid(
      {required List<StickerModel> selectedStickers,
      required double selectedPrice}) async {
    await controller.bid(
        auctionId: controller.auction.id,
        selectedPrice: selectedPrice,
        selectedStickers: selectedStickers);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "${controller.auction.sticker.name} #${controller.auction.sticker.id}",
          ),
        ),
        body: Container(
          padding: const EdgeInsets.all(screenPadding),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Obx(
            () => controller.isLoading
                ? const Center(
                    child: SwapItLoader(),
                  )
                : SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Image.network(
                          controller.auction.sticker.imageUrl,
                          width: MediaQuery.of(context).size.width,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(5),
                                child: Column(children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Chronometer(
                                          endTime:
                                              controller.auction.auctionEnd!,
                                          textStyle:
                                              const TextStyle(fontSize: 20)),
                                      Obx(() => Text(
                                            "${controller.bestPrice} \$",
                                            style: const TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  SizedBox(
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          const Icon(
                                            Icons.location_on,
                                            size: 14,
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            controller.auction.ownerLocation,
                                            style: const TextStyle(
                                              fontSize: 14,
                                            ),
                                          ),
                                        ]),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                ]),
                              ),
                              ActionButton(
                                  title: "Bid",
                                  onPressed: () async {
                                    Get.dialog(
                                      BidDialog(
                                          auction: controller.auction,
                                          onBid: onBid),
                                    );
                                  }),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Exchange for",
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              ExchangesListView(
                                height: 200,
                                exchanges: controller.exchangeables,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Obx(() => Text(
                              controller.auction.bids.isEmpty ? "" : "Bids",
                              style: const TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            )),
                        Obx(
                          (() => controller.bids.isNotEmpty
                              ? SizedBox(
                                  height: 200,
                                  width: MediaQuery.of(context).size.width,
                                  child: Obx(
                                    (() => ListView.separated(
                                          itemCount: controller.bids.length,
                                          scrollDirection: Axis.horizontal,
                                          separatorBuilder: (context, index) =>
                                              const SizedBox(
                                            width: 20,
                                          ),
                                          itemBuilder: (context, index) =>
                                              BidTile(
                                                  bid: controller.bids[index]),
                                        )),
                                  ),
                                )
                              : const SizedBox()),
                        )
                      ],
                    ),
                  ),
          ),
        ));
  }
}
