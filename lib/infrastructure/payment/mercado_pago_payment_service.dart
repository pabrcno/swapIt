import 'package:cloud_functions/cloud_functions.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:swapit/domain/payment/i_payment_service.dart';
import 'package:swapit/domain/payment/payment_model.dart';
import 'package:swapit/domain/payment/payment_failure.dart';
import 'package:mercado_pago_mobile_checkout/mercado_pago_mobile_checkout.dart';

@LazySingleton(as: IPaymentService)
class MercadoPagoPaymentService implements IPaymentService {
  final _fbFunctions = FirebaseFunctions.instance;
  final _publicKey = 'TEST-19c31b82-3996-4dbc-8a4e-ab24473706cd';
  final _fbFunctionPrefix = 'stickerAuctionFunctions';

  @override
  Future<Either<PaymentFailure, PaymentModel>> pay(
      {required double amount,
      required String userId,
      required String auctionId}) async {
    try {
      final preferenceIdResult = await _fbFunctions
          .httpsCallable('$_fbFunctionPrefix-generateMPPaymentPreference')
          .call(<String, dynamic>{
        'amount': amount,
        'userId': userId,
        'auctionId': auctionId
      });
      var platformVersion = await MercadoPagoMobileCheckout.platformVersion;
      var result = await MercadoPagoMobileCheckout.startCheckout(
        _publicKey,
        preferenceIdResult.data,
      );
      print(result);
      return right(PaymentModel.empty());
    } catch (e) {
      return left(const PaymentFailure.unexpected());
    }
  }
}
