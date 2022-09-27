import 'package:dartz/dartz.dart';
import 'package:swapit/domain/auction/bid_model.dart';
import 'package:swapit/domain/auction/sticker_auction_model.dart';

import 'auction_failure.dart';

abstract class IAuctionService {
  Future<Either<AuctionFailure, Unit>> delete(StickerAuctionModel auction);

  Future<Either<AuctionFailure, List<StickerAuctionModel>>> getAllAuctions();

  Future<Either<AuctionFailure, List<StickerAuctionModel>>> getAuctionsByUser(
      String userId);

  Future<Either<AuctionFailure, List<StickerAuctionModel>>>
      getAuctionsBySticker(String stickerId);

  Future<Either<AuctionFailure, List<StickerAuctionModel>>>
      getAuctionsByStickerAndUser(String stickerId, String userId);

  Future<Either<AuctionFailure, List<StickerAuctionModel>>>
      getAuctionsByStickerAndCity(String stickerId, String city);

  Future<Either<AuctionFailure, StickerAuctionModel>> bid(
      String auctionId, BidModel bid);

  Future<Either<AuctionFailure, StickerAuctionModel>> createAuction(
      StickerAuctionModel auction);
  Future<Either<AuctionFailure, StickerAuctionModel>> getAuctionById(
      String auctionId);
}
