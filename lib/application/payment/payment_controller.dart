import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import 'package:swapit/domain/payment/i_payment_service.dart';

@injectable
class PaymentController extends GetxController {
  final IPaymentService _paymentService;

  PaymentController(this._paymentService);

  Future<void> pay({required double amount, required String auctionId}) async {
    final result = await _paymentService.pay(
        amount: amount, userId: "", auctionId: auctionId);
    result.fold(
      (l) => print(l),
      (r) => print(r),
    );
  }
}
