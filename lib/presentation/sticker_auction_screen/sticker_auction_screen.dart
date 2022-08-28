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
      body: Container(
        padding: const EdgeInsets.all(20),
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
              // card with the current price and the time left and a button to bid
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
                      const Text(
                        "00:00:00",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      MaterialButton(
                        minWidth: double.infinity,
                        height: 50,
                        shape: ShapeBorder.lerp(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          0,
                        ),
                        elevation: 2,
                        color: Colors.blue,
                        onPressed: () {},
                        child: const Text("Bid",
                            style:
                                TextStyle(fontSize: 18, color: Colors.white)),
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
