import 'package:flutter/material.dart';
import 'package:swapit/domain/auction/bid_model.dart';

class BidTile extends StatelessWidget {
  final BidModel bid;
  const BidTile({Key? key, required this.bid}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 5, right: 5, top: 20),
      width: 200,
      child: Column(
        children: [
          Text(
            "Bid by ${bid.bidderId}",
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Bid amount: ${bid.amount}",
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Bid time: ${bid.bidTime}",
            style: const TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
