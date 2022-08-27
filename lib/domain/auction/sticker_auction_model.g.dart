// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sticker_auction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StickerAuctionModel _$$_StickerAuctionModelFromJson(
        Map<String, dynamic> json) =>
    _$_StickerAuctionModel(
      id: json['id'] as String,
      owner: json['owner'] as String,
      sticker: StickerModel.fromJson(json['sticker'] as Map<String, dynamic>),
      ownerLocation: json['ownerLocation'] as String,
      exchangeables: (json['exchangeables'] as List<dynamic>)
          .map((e) => StickerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      bestPrice: (json['bestPrice'] as num).toDouble(),
      winnerId: json['winnerId'] as String,
      auctionEnd: DateTime.parse(json['auctionEnd'] as String),
      auctionStart: DateTime.parse(json['auctionStart'] as String),
      bids: (json['bids'] as List<dynamic>)
          .map((e) => BidModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_StickerAuctionModelToJson(
        _$_StickerAuctionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'owner': instance.owner,
      'sticker': instance.sticker.toJson(),
      'ownerLocation': instance.ownerLocation,
      'exchangeables': instance.exchangeables.map((e) => e.toJson()).toList(),
      'bestPrice': instance.bestPrice,
      'winnerId': instance.winnerId,
      'auctionEnd': instance.auctionEnd.toIso8601String(),
      'auctionStart': instance.auctionStart.toIso8601String(),
      'bids': instance.bids.map((e) => e.toJson()).toList(),
    };
