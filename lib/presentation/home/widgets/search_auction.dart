import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swapit/application/auction/sticker_auction_controller.dart';
import 'package:swapit/presentation/home/widgets/sticker_preview_list.dart';

import '../../../injection.dart';
import '../../core/utils.dart';
import '../../core/widgets/swapit_loader.dart';

class SearchAuction extends StatelessWidget {
  final StickerAuctionController controller = getIt<StickerAuctionController>();
  final _debouncer = Debouncer(milliseconds: 500);
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
                onChanged: (value) => EasyDebounce.debounce(
                    'auction-search-debounce', // <-- An ID for this particular debouncer
                    const Duration(
                        milliseconds: 500), // <-- The debounce duration
                    () => controller.searchAuctions(search: value)),
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
      body: Obx(
        (() => controller.isLoading
            ? const Center(
                child: SwapItLoader(),
              )
            : controller.auctions.isEmpty
                ? Center(
                    child: Text(
                    "No auctions by this parameters.",
                    style: Theme.of(context).textTheme.headline6,
                  ))
                : StickerPreviewList(
                    auctions: controller.auctions,
                  )),
      ),
    );
  }
}
