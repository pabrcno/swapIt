import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../domain/auction/sticker_auction_model.dart';
import '../../core/widgets/chronometer.dart';
import '../../core/widgets/exchanges_list_view.dart';
import '../../sticker_auction_screen/sticker_auction_screen.dart';

class StickerPreview extends StatelessWidget {
  final StickerAuctionModel previewData;
  const StickerPreview({Key? key, required this.previewData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.to(() => StickerAuctionScreen(auction: previewData)),
      child: SizedBox(
        height: 125,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              child: Image.network(previewData.sticker.imageUrl),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            "${previewData.sticker.name} #${previewData.sticker.id}",
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Chronometer(
                            endTime: previewData.auctionEnd,
                            textStyle: const TextStyle(
                                fontSize: 12, color: Colors.grey)),
                      ],
                    ),
                    const SizedBox(height: 7),
                    Text(
                      previewData.ownerLocation,
                      style: const TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    const SizedBox(height: 12),
                    ExchangesListView(exchanges: previewData.exchangeables),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$ ${previewData.bestPrice}",
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          'Bids ${previewData.bids.length}',
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
