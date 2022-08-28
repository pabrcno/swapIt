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
        height: 140,
        width: double.infinity,
        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.network(widget.previewData.sticker.imageUrl),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: const EdgeInsets.only(right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Row with title and time left
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

                    const SizedBox(height: 5),

                    Text(
                      widget.previewData.ownerLocation,
                      style: const TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    const SizedBox(height: 10),

                    ExchangesListView(
                        exchanges: widget.previewData.exchangeables),
                    const SizedBox(height: 10),
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
