import 'dart:developer';

import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import 'package:swapit/domain/auction/bid_model.dart';
import 'package:swapit/domain/auction/i_auction_service.dart';
import 'package:swapit/domain/auction/sticker_auction_model.dart';
import 'package:swapit/domain/sticker/sticker_model.dart';
import 'package:swapit/presentation/home/home.dart';
import 'package:swapit/presentation/sticker_auction_screen/sticker_auction_screen.dart';

@injectable
class StickerAuctionController extends GetxController {
  final IAuctionService _auctionService;
  final Rx<StickerAuctionModel> _auction = StickerAuctionModel.empty().obs;
  final RxList<StickerAuctionModel> _auctions = <StickerAuctionModel>[].obs;
  final RxBool _isLoading = false.obs;
  final RxList<StickerModel> _searchResults = <StickerModel>[].obs;

  StickerAuctionController(this._auctionService);

  bool get isLoading => _isLoading.value;

  set isLoading(bool value) => _isLoading.value = value;

  toggleIsLoading() => isLoading = !isLoading;

  StickerAuctionModel get auction => _auction.value;

  List<StickerAuctionModel> get auctions => _auctions;

  set auction(StickerAuctionModel value) => _auction.value = value;

  set auctions(List<StickerAuctionModel> value) => _auctions.assignAll(value);

  List<StickerModel> get searchResults => _searchResults;

  set searchResults(List<StickerModel> value) =>
      _searchResults.assignAll(value);

  set sticker(StickerModel sticker) {
    _auction.value = _auction.value.copyWith(sticker: sticker);
  }

  StickerModel get sticker => _auction.value.sticker;

  get bids => _auction.value.bids;

  set ownerLocation(String ownerLocation) {
    _auction.value = _auction.value.copyWith(ownerLocation: ownerLocation);
  }

  addExchangeable(StickerModel exchangeable) {
    _auction.value = _auction.value.copyWith(
        exchangeables: [..._auction.value.exchangeables, exchangeable]);
  }

  removeExchangeable(StickerModel exchangeable) {
    _auction.value = _auction.value.copyWith(
        exchangeables: _auction.value.exchangeables
            .where((element) => element.id != exchangeable.id)
            .toList());
  }

  get exchangeables => _auction.value.exchangeables;

  set auctionEnd(DateTime? auctionEnd) {
    _auction.value = _auction.value.copyWith(auctionEnd: auctionEnd);
  }

  DateTime? get auctionEnd => _auction.value.auctionEnd;

  set auctionStart(DateTime auctionStart) {
    _auction.value = _auction.value.copyWith(auctionStart: DateTime.now());
  }

  double get bestPrice => _auction.value.bestPrice;

  set bestPrice(double bestPrice) {
    _auction.value = _auction.value.copyWith(bestPrice: bestPrice);
  }

  String get ownerLocation => _auction.value.ownerLocation;

  get isValid =>
      sticker.id != '' &&
      auctionEnd != null &&
      (bestPrice > 0 || exchangeables.isNotEmpty) &&
      ownerLocation != '';

  createStickerAuction() async {
    var creationOption = await _auctionService.createAuction(auction);

    creationOption.fold(
      (l) {
        print('Error creating auction');
      },
      (r) async {
        await getAllAuctions();
        print('Auction created');
        Get.off(() => const Home());
      },
    );
  }

  getAuction({required String auctionId}) async {
    (await _auctionService.getAuctionById(auctionId)).fold(
      (l) {
        print('Error getting auction');
      },
      (r) {
        auction = r;
      },
    );
  }

  getAllAuctions() async {
    toggleIsLoading();
    var auctionsOption = await _auctionService.getAllAuctions();

    auctionsOption.fold((l) {
      log(
        l.toString(),
      );
    }, (r) {
      auctions = r;
    });
    toggleIsLoading();
  }

  bid(
      {required String auctionId,
      required List<StickerModel> selectedStickers,
      required double selectedPrice}) async {
    Get.close(1);
    toggleIsLoading();
    var bidOption = await _auctionService.bid(
      auctionId,
      BidModel(
          id: '',
          bidderId: '',
          exchanges: selectedStickers,
          amount: selectedPrice,
          bidTime: DateTime.now()),
    );

    bidOption.fold((l) {
      log(
        l.toString(),
      );
    }, (r) {
      auction = r;

      Get.to(() => StickerAuctionScreen(
            auction: r,
          ));
    });
    toggleIsLoading();
  }

  searchStickers({required String query}) async {
    toggleIsLoading();
    var stickersOption = await _auctionService.searchStickers(query);

    stickersOption.fold((l) {
      return [];
    }, (r) {
      searchResults = r;
    });

    toggleIsLoading();
  }
}
