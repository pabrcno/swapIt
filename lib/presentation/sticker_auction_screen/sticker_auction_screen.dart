import 'package:flutter/material.dart';
import 'package:swapit/domain/auction/sticker_auction_model.dart';
import 'package:swapit/presentation/sticker_auction_screen/widgets/bid_tile.dart';

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
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Text(
                "Auction ends in ${auction.auctionEnd.difference(DateTime.now()).inDays} days",
                style: const TextStyle(fontSize: 20),
              ),
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
              SizedBox(
                height: 200,
                child: ListView.separated(
                  itemCount: auction.bids.length,
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 10,
                  ),
                  itemBuilder: (context, index) {
                    print(auction.bids[index]);
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
