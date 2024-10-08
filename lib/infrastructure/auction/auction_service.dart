import 'dart:convert';
import 'dart:developer';

import 'package:algolia/algolia.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:swapit/domain/auction/auction_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:swapit/domain/auction/bid_model.dart';
import 'package:swapit/domain/auction/i_auction_service.dart';
import 'package:swapit/domain/auction/sticker_auction_model.dart';
import 'package:swapit/domain/sticker/sticker_model.dart';

@LazySingleton(as: IAuctionService)
class AuctionService implements IAuctionService {
  final _fbFunctions = FirebaseFunctions.instance;

  final _fbFunctionPrefix = 'stickerAuctionFunctions';
  final _storage = FirebaseStorage.instance;
  final _algolia = const Algolia.init(
      applicationId: "E5A601J0M0", apiKey: "0dce1979c577735173a881918f047688");

  @override
  Future<Either<AuctionFailure, Unit>> delete(
      StickerAuctionModel auction) async {
    try {
      await _fbFunctions
          .httpsCallable('deleteAuction')
          .call(<String, dynamic>{'auctionId': auction.id});
      return right(unit);
    } on FirebaseFunctionsException catch (e) {
      log(e.toString());
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
    } on FirebaseFunctionsException catch (e) {
      log(e.toString());
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
    } on FirebaseFunctionsException catch (e) {
      log(e.toString());
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
      var data = jsonEncode({...res.data, 'id': res.data["id"]});

      return right(StickerAuctionModel.fromJson(jsonDecode(data)));
    } on FirebaseFunctionsException catch (e) {
      log(e.toString());
      return left(const AuctionFailure.unexpected());
    }
  }

  @override
  Future<Either<AuctionFailure, StickerAuctionModel>> bid(
      String auctionId, BidModel bid) async {
    try {
      var res = await _fbFunctions
          .httpsCallable('$_fbFunctionPrefix-bid')
          .call(<String, dynamic>{'auctionId': auctionId, 'bid': bid.toJson()});

      return right(await _auctionFromFirebase(res));
    } on FirebaseFunctionsException catch (e) {
      log(e.toString());
      return left(const AuctionFailure.unexpected());
    }
  }

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
              ...e,
              "sticker": await _stickerJsonFromFirebase(e["sticker"]),
              "exchangeables": await Future.wait((e["exchangeables"] as List)
                  .map((e) => _stickerJsonFromFirebase(e))),
            })
        .toList());
    final auctions = data
        .map((e) => StickerAuctionModel.fromJson(jsonDecode(jsonEncode(e))))
        .toList();

    return auctions;
  }

  Future<StickerAuctionModel> _auctionFromFirebase(
      HttpsCallableResult<dynamic> result) async {
    final data = {
      ...result.data,
      "sticker": await _stickerJsonFromFirebase(result.data["sticker"]),
      "exchangeables": await Future.wait((result.data["exchangeables"] as List)
          .map((e) => _stickerJsonFromFirebase(e))),
    };
    final auction = StickerAuctionModel.fromJson(jsonDecode(jsonEncode(data)));
    return auction;
  }

  @override
  Future<Either<AuctionFailure, StickerAuctionModel>> getAuctionById(
      String auctionId) async {
    try {
      final result = await _fbFunctions
          .httpsCallable('$_fbFunctionPrefix-getAuctionById')
          .call(auctionId);
      return right(await _auctionFromFirebase(result));
    } on FirebaseFunctionsException catch (e) {
      log(e.toString());
      return left(const AuctionFailure.unexpected());
    }
  }

  @override
  Future<Either<AuctionFailure, List<StickerModel>>> searchStickers(
      String search) async {
    try {
      var query = _algolia.instance.index('stickers').query(search);
      var res = await query.getObjects();
      final stickers =
          res.hits.map((e) => StickerModel.fromJson(e.data)).toList();

      return right(stickers);
    } on FirebaseFunctionsException catch (e) {
      log(e.toString());
      return left(const AuctionFailure.unexpected());
    }
  }

  @override
  Future<Either<AuctionFailure, List<StickerAuctionModel>>> searchAuctions(
      {required String search}) async {
    try {
      var query = _algolia.instance.index('sticker_auctions').query(search);
      var res = await query.getObjects();
      final auctionsPromises =
          res.hits.map((e) => getAuctionById(e.data['objectID'])).toList();

      final auctions = await Future.wait(auctionsPromises);
      return right(
          auctions.map((e) => e.getOrElse(() => throw Exception())).toList());
    } on FirebaseFunctionsException catch (e) {
      log(e.toString());
      return left(const AuctionFailure.unexpected());
    }
  }
}
