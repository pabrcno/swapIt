import 'package:freezed_annotation/freezed_annotation.dart';
part 'payment_failure.freezed.dart';

@freezed
class PaymentFailure with _$PaymentFailure {
  const factory PaymentFailure.unexpected() = _Unexpected;
  const factory PaymentFailure.insufficientPermission() =
      _InsufficientPermission;
  const factory PaymentFailure.serverFailure() = _ServerFailure;
  const factory PaymentFailure.platformFailure() = _PlatformFailure;
}
