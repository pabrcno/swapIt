import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:swapit/domain/sticker/sticker_model.dart';
part 'bid_model.freezed.dart';
part 'bid_model.g.dart';

@freezed
class BidModel with _$BidModel {
  @JsonSerializable(explicitToJson: true)
  const factory BidModel({
    required String id,
    required String bidderId,
    required List<StickerModel> exchanges,
    required double amount,
    required DateTime bidTime,
  }) = _BidModel;

  factory BidModel.fromJson(Map<String, dynamic> json) =>
      _$BidModelFromJson(json);
}
