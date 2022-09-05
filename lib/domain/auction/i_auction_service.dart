import 'package:dartz/dartz.dart';
import 'package:swapit/domain/auction/bid_model.dart';
import 'package:swapit/domain/auction/sticker_auction_model.dart';

import 'auction_failure.dart';

abstract class IAuctionService {
  Either<AuctionFailure, Unit> create(StickerAuctionModel auction);
  Either<AuctionFailure, Unit> update(StickerAuctionModel auction);
  Either<AuctionFailure, Unit> delete(StickerAuctionModel auction);

  Either<AuctionFailure, List<StickerAuctionModel>> getAllAuctions();

  Either<AuctionFailure, List<StickerAuctionModel>> getAuctionsByUser(
      String userId);

  Either<AuctionFailure, List<StickerAuctionModel>> getAuctionsBySticker(
      String stickerId);

  Either<AuctionFailure, List<StickerAuctionModel>> getAuctionsByStickerAndUser(
      String stickerId, String userId);

  Either<AuctionFailure, List<StickerAuctionModel>> getAuctionsByStickerAndCity(
      String stickerId, String city);

  Either<AuctionFailure, Unit> bid(String auctionId, BidModel bid);
}
