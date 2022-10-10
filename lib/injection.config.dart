// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auction/sticker_auction_controller.dart' as _i8;
import 'application/payment/payment_controller.dart' as _i7;
import 'domain/auction/i_auction_service.dart' as _i3;
import 'domain/payment/i_payment_service.dart' as _i5;
import 'infrastructure/auction/auction_service.dart' as _i4;
import 'infrastructure/payment/mercado_pago_payment_service.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.IAuctionService>(() => _i4.AuctionService());
  gh.lazySingleton<_i5.IPaymentService>(() => _i6.MercadoPagoPaymentService());
  gh.factory<_i7.PaymentController>(
      () => _i7.PaymentController(get<_i5.IPaymentService>()));
  gh.factory<_i8.StickerAuctionController>(
      () => _i8.StickerAuctionController(get<_i3.IAuctionService>()));
  return get;
}
