import 'package:swapit/domain/auction/bid_model.dart';
import 'package:swapit/domain/auction/auction_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:swapit/domain/auction/i_auction_service.dart';
import 'package:swapit/domain/auction/sticker_auction_model.dart';

class AuctionService implements IAuctionService {
  @override
  Either<AuctionFailure, Unit> bid(String auctionId, BidModel bid) {
    // TODO: implement bid
    throw UnimplementedError();
  }

  @override
  Either<AuctionFailure, Unit> create(StickerAuctionModel auction) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Either<AuctionFailure, Unit> delete(StickerAuctionModel auction) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Either<AuctionFailure, List<StickerAuctionModel>> getAllAuctions() {
    // TODO: implement getAllAuctions
    throw UnimplementedError();
  }

  @override
  Either<AuctionFailure, List<StickerAuctionModel>> getAuctionsBySticker(
      String stickerId) {
    // TODO: implement getAuctionsBySticker
    throw UnimplementedError();
  }

  @override
  Either<AuctionFailure, List<StickerAuctionModel>> getAuctionsByStickerAndCity(
      String stickerId, String city) {
    // TODO: implement getAuctionsByStickerAndCity
    throw UnimplementedError();
  }

  @override
  Either<AuctionFailure, List<StickerAuctionModel>> getAuctionsByStickerAndUser(
      String stickerId, String userId) {
    // TODO: implement getAuctionsByStickerAndUser
    throw UnimplementedError();
  }

  @override
  Either<AuctionFailure, List<StickerAuctionModel>> getAuctionsByUser(
      String userId) {
    // TODO: implement getAuctionsByUser
    throw UnimplementedError();
  }

  @override
  Either<AuctionFailure, Unit> update(StickerAuctionModel auction) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
