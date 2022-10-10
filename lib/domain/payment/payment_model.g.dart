// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaymentModel _$$_PaymentModelFromJson(Map<String, dynamic> json) =>
    _$_PaymentModel(
      id: json['id'] as String,
      amount: (json['amount'] as num).toDouble(),
      date: DateTime.parse(json['date'] as String),
      description: json['description'] as String,
      paymentMethod: json['paymentMethod'] as String,
      paymentType: json['paymentType'] as String,
      status: json['status'] as String,
      transactionId: json['transactionId'] as String,
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$$_PaymentModelToJson(_$_PaymentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'date': instance.date.toIso8601String(),
      'description': instance.description,
      'paymentMethod': instance.paymentMethod,
      'paymentType': instance.paymentType,
      'status': instance.status,
      'transactionId': instance.transactionId,
      'userId': instance.userId,
    };
