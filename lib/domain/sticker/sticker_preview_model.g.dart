// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sticker_preview_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StickerPreviewModel _$$_StickerPreviewModelFromJson(
        Map<String, dynamic> json) =>
    _$_StickerPreviewModel(
      sticker: StickerModel.fromJson(json['sticker'] as Map<String, dynamic>),
      ownerLocation: json['ownerLocation'] as String,
      exchangeables: (json['exchangeables'] as List<dynamic>)
          .map((e) => StickerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      price: (json['price'] as num).toDouble(),
    );

Map<String, dynamic> _$$_StickerPreviewModelToJson(
        _$_StickerPreviewModel instance) =>
    <String, dynamic>{
      'sticker': instance.sticker.toJson(),
      'ownerLocation': instance.ownerLocation,
      'exchangeables': instance.exchangeables.map((e) => e.toJson()).toList(),
      'price': instance.price,
    };
