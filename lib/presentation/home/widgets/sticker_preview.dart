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
      child: Container(
        padding: const EdgeInsets.all(5),
        height: 180,
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(
                            "${previewData.sticker.name} #${previewData.sticker.id}",
                            style: const TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Chronometer(
                            endTime: previewData.auctionEnd,
                            textStyle: TextStyle(
                                fontSize: 12, color: Colors.grey[100])),
                      ],
                    ),
                    const SizedBox(height: 12),
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
                          'Bids ${previewData.bids.length}',
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          "\$ ${previewData.bestPrice}",
                          style: const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
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
