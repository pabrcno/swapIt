import 'package:dartz/dartz.dart';
import 'package:swapit/domain/auction/bid_model.dart';
import 'package:swapit/domain/auction/sticker_auction_model.dart';
import 'package:swapit/domain/sticker/sticker_model.dart';

import 'auction_failure.dart';

abstract class IAuctionService {
  Future<Either<AuctionFailure, Unit>> delete(StickerAuctionModel auction);

  Future<Either<AuctionFailure, List<StickerAuctionModel>>> getAllAuctions();

  Future<Either<AuctionFailure, List<StickerAuctionModel>>> getAuctionsByUser(
      String userId);

  Future<Either<AuctionFailure, StickerAuctionModel>> bid(
      String auctionId, BidModel bid);

  Future<Either<AuctionFailure, StickerAuctionModel>> createAuction(
      StickerAuctionModel auction);
  Future<Either<AuctionFailure, StickerAuctionModel>> getAuctionById(
      String auctionId);
  Future<Either<AuctionFailure, List<StickerModel>>> searchStickers(
      String search);

  Future<Either<AuctionFailure, List<StickerAuctionModel>>> searchAuctions(
      {required String search});
}
