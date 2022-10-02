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
        height: 200,
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(
                            "${previewData.sticker.name} #${previewData.sticker.id}",
                            style: const TextStyle(
                              fontSize: 16,
                              letterSpacing: 0.6,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Chronometer(
                            endTime: previewData.auctionEnd!,
                            textStyle: const TextStyle(
                                fontSize: 12, color: Colors.grey)),
                      ],
                    ),
                    Text(
                      previewData.ownerLocation,
                      style: const TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    ExchangesListView(
                        height: 70, exchanges: previewData.exchangeables),
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
                            fontSize: 16,
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
