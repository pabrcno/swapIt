import 'dart:convert';

import 'package:cloud_functions/cloud_functions.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:swapit/domain/auction/bid_model.dart';
import 'package:swapit/domain/auction/auction_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:swapit/domain/auction/i_auction_service.dart';
import 'package:swapit/domain/auction/sticker_auction_model.dart';

@LazySingleton(as: IAuctionService)
class AuctionService implements IAuctionService {
  final _fbFunctions = FirebaseFunctions.instance;

  final _fbFunctionPrefix = 'stickerAuctionFunctions';
  final _storage = FirebaseStorage.instance;
  Future<Map<String, dynamic>> _stickerJsonFromFirebase(dynamic json) async {
    final storageRef = _storage.ref(json['imageUrl']);
    final url = !json["imageUrl"].toString().contains('http')
        ? await storageRef.getDownloadURL()
        : json['imageUrl'];

    json = jsonDecode(jsonEncode(json));
    return {...json, "imageUrl": url};
  }

  Future<List<StickerAuctionModel>> _auctionsFromFirebase(
      HttpsCallableResult<dynamic> result) async {
    final data = await Future.wait((result.data as List)
        .map((e) async => {
              ...e["auction"],
              "sticker":
                  await _stickerJsonFromFirebase(e["auction"]["sticker"]),
              "exchangeables": await Future.wait(
                  (e["auction"]["exchangeables"] as List)
                      .map((e) => _stickerJsonFromFirebase(e))),
            })
        .toList());
    final auctions = data
        .map((e) => StickerAuctionModel.fromJson(jsonDecode(jsonEncode(e))))
        .toList();

    return auctions;
  }

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
      final result =
          await _fbFunctions.httpsCallable('$_fbFunctionPrefix-getAll').call();

      return right(await _auctionsFromFirebase(result));
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

  @override
  Future<Either<AuctionFailure, StickerAuctionModel>> createAuction(
      StickerAuctionModel auction) async {
    try {
      var res = await _fbFunctions
          .httpsCallable('$_fbFunctionPrefix-create')
          .call(<String, dynamic>{'auction': auction.toJson()});
      var data = jsonEncode({...res.data["auction"], 'id': res.data["id"]});

      return right(StickerAuctionModel.fromJson(jsonDecode(data)));
    } on FirebaseFunctionsException {
      return left(const AuctionFailure.unexpected());
    }
  }
}
