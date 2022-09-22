import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import 'package:swapit/domain/auction/i_auction_service.dart';
import 'package:swapit/domain/auction/sticker_auction_model.dart';
import 'package:swapit/domain/sticker/sticker_model.dart';

@injectable
class StickerAuctionController extends GetxController {
  final IAuctionService _auctionService;
  final Rx<StickerAuctionModel> _auction = StickerAuctionModel.empty().obs;
  StickerAuctionController(this._auctionService);

  StickerAuctionModel get auction => _auction.value;

  set sticker(StickerModel sticker) {
    _auction.value = _auction.value.copyWith(sticker: sticker);
  }

  StickerModel get sticker => _auction.value.sticker;

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
      (r) {
        print('Auction created');
        Get.back();
      },
    );
  }
}
