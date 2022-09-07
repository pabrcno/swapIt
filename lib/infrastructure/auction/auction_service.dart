import 'package:cloud_functions/cloud_functions.dart';
import 'package:swapit/domain/auction/bid_model.dart';
import 'package:swapit/domain/auction/auction_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:swapit/domain/auction/i_auction_service.dart';
import 'package:swapit/domain/auction/sticker_auction_model.dart';

class AuctionService implements IAuctionService {
  final _fbFunctions = FirebaseFunctions.instance;
  @override
  Future<Either<AuctionFailure, Unit>> bid(
      String auctionId, BidModel bid) async {
    try {
      await _fbFunctions
          .httpsCallable('bid')
          .call(<String, dynamic>{'auctionId': auctionId, 'bid': bid.toJson()});
      return right(unit);
    } on FirebaseFunctionsException {
      return left(const AuctionFailure.unexpected());
    }
  }

  @override
  Future<Either<AuctionFailure, Unit>> delete(
      StickerAuctionModel auction) async {
    try {
      await _fbFunctions
          .httpsCallable('deleteAuction')
          .call(<String, dynamic>{'auctionId': auction.id});
      return right(unit);
    } on FirebaseFunctionsException {
      return left(const AuctionFailure.unexpected());
    }
  }

  @override
  Future<Either<AuctionFailure, List<StickerAuctionModel>>>
      getAllAuctions() async {
    try {
      final result = await _fbFunctions.httpsCallable('getAllAuctions').call();
      final auctions = (result.data as List)
          .map((e) => StickerAuctionModel.fromJson(e))
          .toList();
      return right(auctions);
    } on FirebaseFunctionsException {
      return left(const AuctionFailure.unexpected());
    }
  }

  @override
  Future<Either<AuctionFailure, List<StickerAuctionModel>>>
      getAuctionsBySticker(String stickerId) async {
    try {
      final result = await _fbFunctions
          .httpsCallable('getAuctionsBySticker')
          .call(<String, dynamic>{'stickerId': stickerId});
      final auctions = (result.data as List)
          .map((e) => StickerAuctionModel.fromJson(e))
          .toList();
      return right(auctions);
    } on FirebaseFunctionsException {
      return left(const AuctionFailure.unexpected());
    }
  }

  @override
  Future<Either<AuctionFailure, List<StickerAuctionModel>>>
      getAuctionsByStickerAndCity(String stickerId, String city) async {
    try {
      final result = await _fbFunctions
          .httpsCallable('getAuctionsByStickerAndCity')
          .call(<String, dynamic>{'stickerId': stickerId, 'city': city});
      final auctions = (result.data as List)
          .map((e) => StickerAuctionModel.fromJson(e))
          .toList();
      return right(auctions);
    } on FirebaseFunctionsException {
      return left(const AuctionFailure.unexpected());
    }
  }

  @override
  Future<Either<AuctionFailure, List<StickerAuctionModel>>>
      getAuctionsByStickerAndUser(String stickerId, String userId) async {
    try {
      final result = await _fbFunctions
          .httpsCallable('getAuctionsByStickerAndUser')
          .call(<String, dynamic>{'stickerId': stickerId, 'userId': userId});
      final auctions = (result.data as List)
          .map((e) => StickerAuctionModel.fromJson(e))
          .toList();
      return right(auctions);
    } on FirebaseFunctionsException {
      return left(const AuctionFailure.unexpected());
    }
  }

  @override
  Future<Either<AuctionFailure, List<StickerAuctionModel>>> getAuctionsByUser(
      String userId) async {
    try {
      final result = await _fbFunctions
          .httpsCallable('getAuctionsByUser')
          .call(<String, dynamic>{'userId': userId});
      final auctions = (result.data as List)
          .map((e) => StickerAuctionModel.fromJson(e))
          .toList();
      return right(auctions);
    } on FirebaseFunctionsException {
      return left(const AuctionFailure.unexpected());
    }
  }
}
