import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swapit/presentation/widgets/exchanges_list_view.dart';

import '../../../domain/auction/sticker_auction_model.dart';
import '../../sticker_auction_screen/sticker_auction_screen.dart';

class StickerPreview extends StatefulWidget {
  final StickerAuctionModel previewData;
  const StickerPreview({Key? key, required this.previewData}) : super(key: key);

  @override
  State<StickerPreview> createState() => _StickerPreviewState();
}

class _StickerPreviewState extends State<StickerPreview> {
  // time left to auction end
  Duration timeLeft = Duration.zero;

  @override
  void initState() {
    super.initState();

    // sets first value

    // defines a timer
    // Timer.periodic(const Duration(seconds: 1), (Timer t) {
    //   setState(() {
    //     timeLeft = widget.previewData.auctionEnd.difference(DateTime.now());
    //   });
    //   print("calling");
    // });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          Get.to(() => StickerAuctionScreen(auction: widget.previewData)),
      child: SizedBox(
        height: 180,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              child: Image.network(widget.previewData.sticker.imageUrl),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            "${widget.previewData.sticker.name} #${widget.previewData.sticker.id}",
                            style: const TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Text(
                          "${timeLeft.inHours}h ${timeLeft.inMinutes.remainder(60)}m ${timeLeft.inSeconds.remainder(60)}s",
                          style: const TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 10),

                    Text(
                      widget.previewData.ownerLocation,
                      style: const TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    const SizedBox(height: 20),

                    ExchangesListView(
                        exchanges: widget.previewData.exchangeables),
                    const SizedBox(height: 20),
                    // align to the right
                    // row with price and time left to exchange
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$ ${widget.previewData.bestPrice}",
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Bids ${widget.previewData.bids.length}',
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
