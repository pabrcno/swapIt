// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'payment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentModel _$PaymentModelFromJson(Map<String, dynamic> json) {
  return _PaymentModel.fromJson(json);
}

/// @nodoc
mixin _$PaymentModel {
  String get id => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get paymentMethod => throw _privateConstructorUsedError;
  String get paymentType => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get transactionId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentModelCopyWith<PaymentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentModelCopyWith<$Res> {
  factory $PaymentModelCopyWith(
          PaymentModel value, $Res Function(PaymentModel) then) =
      _$PaymentModelCopyWithImpl<$Res>;
  $Res call(
      {String id,
      double amount,
      DateTime date,
      String description,
      String paymentMethod,
      String paymentType,
      String status,
      String transactionId,
      String userId});
}

/// @nodoc
class _$PaymentModelCopyWithImpl<$Res> implements $PaymentModelCopyWith<$Res> {
  _$PaymentModelCopyWithImpl(this._value, this._then);

  final PaymentModel _value;
  // ignore: unused_field
  final $Res Function(PaymentModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? amount = freezed,
    Object? date = freezed,
    Object? description = freezed,
    Object? paymentMethod = freezed,
    Object? paymentType = freezed,
    Object? status = freezed,
    Object? transactionId = freezed,
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethod: paymentMethod == freezed
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      paymentType: paymentType == freezed
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      transactionId: transactionId == freezed
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_PaymentModelCopyWith<$Res>
    implements $PaymentModelCopyWith<$Res> {
  factory _$$_PaymentModelCopyWith(
          _$_PaymentModel value, $Res Function(_$_PaymentModel) then) =
      __$$_PaymentModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      double amount,
      DateTime date,
      String description,
      String paymentMethod,
      String paymentType,
      String status,
      String transactionId,
      String userId});
}

/// @nodoc
class __$$_PaymentModelCopyWithImpl<$Res>
    extends _$PaymentModelCopyWithImpl<$Res>
    implements _$$_PaymentModelCopyWith<$Res> {
  __$$_PaymentModelCopyWithImpl(
      _$_PaymentModel _value, $Res Function(_$_PaymentModel) _then)
      : super(_value, (v) => _then(v as _$_PaymentModel));

  @override
  _$_PaymentModel get _value => super._value as _$_PaymentModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? amount = freezed,
    Object? date = freezed,
    Object? description = freezed,
    Object? paymentMethod = freezed,
    Object? paymentType = freezed,
    Object? status = freezed,
    Object? transactionId = freezed,
    Object? userId = freezed,
  }) {
    return _then(_$_PaymentModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethod: paymentMethod == freezed
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      paymentType: paymentType == freezed
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      transactionId: transactionId == freezed
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentModel implements _PaymentModel {
  const _$_PaymentModel(
      {required this.id,
      required this.amount,
      required this.date,
      required this.description,
      required this.paymentMethod,
      required this.paymentType,
      required this.status,
      required this.transactionId,
      required this.userId});

  factory _$_PaymentModel.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentModelFromJson(json);

  @override
  final String id;
  @override
  final double amount;
  @override
  final DateTime date;
  @override
  final String description;
  @override
  final String paymentMethod;
  @override
  final String paymentType;
  @override
  final String status;
  @override
  final String transactionId;
  @override
  final String userId;

  @override
  String toString() {
    return 'PaymentModel(id: $id, amount: $amount, date: $date, description: $description, paymentMethod: $paymentMethod, paymentType: $paymentType, status: $status, transactionId: $transactionId, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.paymentMethod, paymentMethod) &&
            const DeepCollectionEquality()
                .equals(other.paymentType, paymentType) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.transactionId, transactionId) &&
            const DeepCollectionEquality().equals(other.userId, userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(paymentMethod),
      const DeepCollectionEquality().hash(paymentType),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(transactionId),
      const DeepCollectionEquality().hash(userId));

  @JsonKey(ignore: true)
  @override
  _$$_PaymentModelCopyWith<_$_PaymentModel> get copyWith =>
      __$$_PaymentModelCopyWithImpl<_$_PaymentModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentModelToJson(
      this,
    );
  }
}

abstract class _PaymentModel implements PaymentModel {
  const factory _PaymentModel(
      {required final String id,
      required final double amount,
      required final DateTime date,
      required final String description,
      required final String paymentMethod,
      required final String paymentType,
      required final String status,
      required final String transactionId,
      required final String userId}) = _$_PaymentModel;

  factory _PaymentModel.fromJson(Map<String, dynamic> json) =
      _$_PaymentModel.fromJson;

  @override
  String get id;
  @override
  double get amount;
  @override
  DateTime get date;
  @override
  String get description;
  @override
  String get paymentMethod;
  @override
  String get paymentType;
  @override
  String get status;
  @override
  String get transactionId;
  @override
  String get userId;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentModelCopyWith<_$_PaymentModel> get copyWith =>
      throw _privateConstructorUsedError;
}
