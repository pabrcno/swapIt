import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swapit/presentation/core/widgets/app_drawer.dart';
import 'package:swapit/presentation/home/widgets/search_auction.dart';
import 'package:swapit/presentation/home/widgets/sticker_preview_list.dart';
import 'package:swapit/presentation/new_auction_screen/new_auction_screen.dart';

import '../../application/auction/sticker_auction_controller.dart';
import '../../injection.dart';
import '../core/widgets/swapit_loader.dart';

class Home extends StatelessWidget {
  final StickerAuctionController controller = getIt<StickerAuctionController>();
  Home({Key? key}) : super(key: key) {
    controller.searchAuctions(search: "");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      appBar: AppBar(
        title: const Text('Auctions'),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.to(() => SearchAuction(), transition: Transition.rightToLeft);
            },
            icon: const Icon(Icons.search),
          )
        ],
      ),
      body: Obx(
        (() => controller.isLoading
            ? const Center(
                child: SwapItLoader(),
              )
            : controller.auctions.isEmpty
                ? Center(
                    child: Text(
                    "No auctions yet",
                    style: Theme.of(context).textTheme.headline6,
                  ))
                : StickerPreviewList(
                    auctions: controller.auctions,
                  )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(() => NewAuctionScreen());
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
