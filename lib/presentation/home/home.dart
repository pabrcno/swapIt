import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swapit/presentation/home/widgets/sticker_preview_list.dart';
import 'package:swapit/presentation/new_auction_screen/new_auction_screen.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Auctions'),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.to(() => NewAuctionScreen());
            },
            icon: const Icon(Icons.search),
          )
        ],
      ),
      body: StickerPreviewList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(() => NewAuctionScreen());
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
