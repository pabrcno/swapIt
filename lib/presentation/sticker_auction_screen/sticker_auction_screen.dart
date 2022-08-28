import 'package:flutter/material.dart';
import 'package:swapit/domain/auction/sticker_auction_model.dart';
import 'package:swapit/presentation/core/constants.dart';
import 'package:swapit/presentation/core/widgets/action_button.dart';
import 'package:swapit/presentation/sticker_auction_screen/widgets/bid_tile.dart';

import '../core/widgets/chronometer.dart';
import '../core/widgets/exchanges_list_view.dart';

class StickerAuctionScreen extends StatelessWidget {
  final StickerAuctionModel auction;
  const StickerAuctionScreen({Key? key, required this.auction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "${auction.sticker.name} #${auction.sticker.id}",
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(screenPadding),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Image.network(
                auction.sticker.imageUrl,
                width: MediaQuery.of(context).size.width - 40,
              ),
              const SizedBox(
                height: 20,
              ),
              Card(
                elevation: 0,
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${auction.bestPrice} \$",
                        style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Chronometer(
                              endTime: auction.auctionEnd,
                              textStyle: const TextStyle(fontSize: 16)),
                          SizedBox(
                            child: Row(children: [
                              const Icon(
                                Icons.location_on,
                                size: 16,
                                color: Colors.grey,
                              ),
                              Text(
                                auction.ownerLocation,
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ]),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ActionButton(title: "Bid", onPressed: () {})
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Card(
                elevation: 0,
                child: Container(
                  width: double.infinity,
                  height: 200,
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Exchange for",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ExchangesListView(
                        exchanges: auction.exchangeables,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                auction.bids.isEmpty ? "" : "Bids",
                style:
                    const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: ListView.separated(
                  itemCount: auction.bids.length,
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 20,
                  ),
                  itemBuilder: (context, index) {
                    return BidTile(bid: auction.bids[index]);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
