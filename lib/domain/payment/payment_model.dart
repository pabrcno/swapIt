import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_model.freezed.dart';
part 'payment_model.g.dart';

@freezed
class PaymentModel with _$PaymentModel {
  const factory PaymentModel({
    required String id,
    required double amount,
    required DateTime date,
    required String description,
    required String paymentMethod,
    required String paymentType,
    required String status,
    required String transactionId,
    required String userId,
  }) = _PaymentModel;

  factory PaymentModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentModelFromJson(json);

  factory PaymentModel.empty() => PaymentModel(
        id: '',
        amount: 0,
        date: DateTime.now(),
        description: '',
        paymentMethod: '',
        paymentType: '',
        status: '',
        transactionId: '',
        userId: '',
      );
}
