import 'package:freezed_annotation/freezed_annotation.dart';
part 'sticker_model.freezed.dart';
part 'sticker_model.g.dart';

@freezed
class StickerModel with _$StickerModel {
  @JsonSerializable(explicitToJson: true)
  const factory StickerModel({
    required String id,
    required String name,
    required String imageUrl,
  }) = _StickerModel;

  factory StickerModel.fromJson(Map<String, dynamic> json) =>
      _$StickerModelFromJson(json);

  factory StickerModel.empty() => const StickerModel(
        id: '',
        name: '',
        imageUrl: '',
      );
}
