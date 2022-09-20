import 'package:get/get.dart';
import 'package:swapit/domain/auction/i_auction_service.dart';

class AuctionController extends GetxController {
  final IAuctionService _auctionService;

  AuctionController(this._auctionService);
}
