import 'package:flutter/material.dart';

import '../../../domain/auction/sticker_auction_model.dart';
import '../../core/widgets/chronometer.dart';
import '../../core/widgets/exchanges_list_view.dart';

class StickerPreview extends StatelessWidget {
  final StickerAuctionModel previewData;
  final Function() onTap;

  const StickerPreview(
      {Key? key, required this.previewData, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
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
                    const SizedBox(height: 10),
                    Text(
                      previewData.ownerLocation,
                      style: const TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ExchangesListView(
                        height: 68, exchanges: previewData.exchangeables),
                    const SizedBox(height: 10),
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
