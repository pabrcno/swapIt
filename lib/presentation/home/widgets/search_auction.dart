import 'package:flutter/material.dart';
import 'package:swapit/application/auction/sticker_auction_controller.dart';
import 'package:swapit/presentation/home/widgets/sticker_preview_list.dart';

import '../../../injection.dart';

class SearchAuction extends StatelessWidget {
  final StickerAuctionController controller = getIt<StickerAuctionController>();
  SearchAuction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          titleSpacing: 3,

          // The search area here
          title: Container(
            padding: EdgeInsets.zero,
            width: double.infinity,
            height: 60,
            child: Center(
              child: TextField(
                onChanged: ((value) async =>
                    await controller.searchAuctions(search: value)),
                style: const TextStyle(fontSize: 20),
                autofocus: true,
                decoration: InputDecoration(
                    filled: false,
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.clear),
                      color: Colors.white,
                      iconSize: 25,
                      onPressed: () {},
                    ),
                    hintText: 'Search...',
                    hintStyle: TextStyle(color: Colors.grey[400], fontSize: 20),
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    focusColor: Colors.transparent,
                    suffixIconColor: Colors.white),
              ),
            ),
          )),
      body: StickerPreviewList(),
    );
  }
}
