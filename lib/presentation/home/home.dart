import 'package:flutter/material.dart';
import 'package:swapit/presentation/home/widgets/sticker_preview_list.dart';

import '../../dev_data.dart';
import '../../domain/auction/sticker_auction_model.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('SwapIt'),
        ),
        body: StickerPreviewList(
          auctions: data.map((e) => StickerAuctionModel.fromJson(e)).toList(),
        ));
  }
}
