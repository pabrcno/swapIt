import 'package:dartz/dartz.dart';
import 'package:swapit/domain/payment/payment_failure.dart';
import 'package:swapit/domain/payment/payment_model.dart';

abstract class IPaymentService {
  Future<Either<PaymentFailure, PaymentModel>> pay(
      {required double amount,
      required String userId,
      required String auctionId});
}
