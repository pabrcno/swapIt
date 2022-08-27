import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:swapit/domain/sticker/sticker_model.dart';
part 'sticker_preview_model.freezed.dart';
part 'sticker_preview_model.g.dart';

@freezed
class StickerPreviewModel with _$StickerPreviewModel {
  @JsonSerializable(explicitToJson: true)
  const factory StickerPreviewModel({
    required StickerModel sticker,
    required String ownerLocation,
    required List<StickerModel> exchangeables,
    required double price,
  }) = _StickerPreviewModel;

  factory StickerPreviewModel.fromJson(Map<String, dynamic> json) =>
      _$StickerPreviewModelFromJson(json);
}
