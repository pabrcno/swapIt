import 'package:flutter/material.dart';
import 'package:swapit/domain/auction/bid_model.dart';

import '../../core/widgets/exchanges_list_view.dart';

class BidTile extends StatelessWidget {
  final BidModel bid;
  const BidTile({Key? key, required this.bid}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, right: 10),
      height: 80,
      width: MediaQuery.of(context).size.width - 80,
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Bidder ${bid.bidderId}",
                        style:
                            const TextStyle(fontSize: 18, color: Colors.grey),
                      ),
                    ),
                    Text(
                      "\$ ${bid.amount}",
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Text(
                  "Exchange Offer",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 10),
                ExchangesListView(height: 100, exchanges: bid.exchanges),
                const SizedBox(height: 10),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    "${bid.bidTime.day}/${bid.bidTime.month}/${bid.bidTime.year}",
                    style: const TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
