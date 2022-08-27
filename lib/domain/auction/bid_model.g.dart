// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bid_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BidModel _$$_BidModelFromJson(Map<String, dynamic> json) => _$_BidModel(
      id: json['id'] as String,
      bidderId: json['bidderId'] as String,
      exchanges: (json['exchanges'] as List<dynamic>)
          .map((e) => StickerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      price: (json['price'] as num).toDouble(),
      bidTime: DateTime.parse(json['bidTime'] as String),
    );

Map<String, dynamic> _$$_BidModelToJson(_$_BidModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'bidderId': instance.bidderId,
      'exchanges': instance.exchanges.map((e) => e.toJson()).toList(),
      'price': instance.price,
      'bidTime': instance.bidTime.toIso8601String(),
    };
