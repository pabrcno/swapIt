import 'package:flutter/material.dart';
import 'package:swapit/domain/auction/sticker_auction_model.dart';
import 'package:swapit/domain/sticker/sticker_model.dart';
import 'package:swapit/presentation/core/widgets/action_button.dart';
import 'package:swapit/presentation/core/widgets/selectable_exchanges_list_view.dart';

import '../../../application/auction/sticker_auction_controller.dart';
import '../../../injection.dart';

class BidDialog extends StatefulWidget {
  final StickerAuctionModel auction;
  final Function(
      {required List<StickerModel> selectedStickers,
      required double selectedPrice}) onBid;
  const BidDialog({Key? key, required this.auction, required this.onBid})
      : super(key: key);

  @override
  State<BidDialog> createState() => _BidDialogState();
}

class _BidDialogState extends State<BidDialog> {
  List<StickerModel> selectedStickers = [];
  double selectedPrice = 0;
  final StickerAuctionController controller = getIt<StickerAuctionController>();
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Offer',
                prefixIcon: Icon(Icons.monetization_on_outlined),
              ),
              onChanged: (value) {
                setState(() {
                  selectedPrice = double.parse(value);
                });
              },
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              "Exchange offer",
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(
              height: 16,
            ),
            SelectableExchangeList(
                onChange: (exchanges) {
                  setState(() {
                    selectedStickers = exchanges;
                  });
                },
                exchanges: widget.auction.exchangeables,
                height: 150),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 280,
                  height: 50,
                  child: ActionButton(
                    onPressed: (() => widget.onBid(
                        selectedPrice: selectedPrice,
                        selectedStickers: selectedStickers)),
                    title: "Bid",
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
