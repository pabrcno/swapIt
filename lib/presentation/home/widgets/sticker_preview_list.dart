import 'package:flutter/material.dart';
import 'package:swapit/domain/auction/sticker_auction_model.dart';
import 'package:swapit/presentation/home/widgets/sticker_preview.dart';

class StickerPreviewList extends StatelessWidget {
  final List<StickerAuctionModel> auctions;
  const StickerPreviewList({Key? key, required this.auctions})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: auctions.length,
      separatorBuilder: (context, index) => const SizedBox(
        height: 12,
      ),
      itemBuilder: (context, index) {
        return StickerPreview(previewData: auctions[index]);
      },
    );
  }
}
