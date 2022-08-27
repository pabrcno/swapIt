import 'package:freezed_annotation/freezed_annotation.dart';

import '../sticker/sticker_model.dart';
import 'bid_model.dart';
part 'sticker_auction_model.freezed.dart';
part 'sticker_auction_model.g.dart';

@freezed
class StickerAuctionModel with _$StickerAuctionModel {
  @JsonSerializable(explicitToJson: true)
  const factory StickerAuctionModel({
    required String id,
    required String owner,
    required StickerModel sticker,
    required String ownerLocation,
    required List<StickerModel> exchangeables,
    required double bestPrice,
    required String? winnerId,
    required DateTime auctionEnd,
    required DateTime auctionStart,
    required List<BidModel> bids,
  }) = _StickerAuctionModel;

  factory StickerAuctionModel.fromJson(Map<String, dynamic> json) =>
      _$StickerAuctionModelFromJson(json);
}
