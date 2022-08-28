// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bid_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BidModel _$BidModelFromJson(Map<String, dynamic> json) {
  return _BidModel.fromJson(json);
}

/// @nodoc
mixin _$BidModel {
  String get id => throw _privateConstructorUsedError;
  String get bidderId => throw _privateConstructorUsedError;
  List<StickerModel> get exchanges => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  DateTime get bidTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BidModelCopyWith<BidModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BidModelCopyWith<$Res> {
  factory $BidModelCopyWith(BidModel value, $Res Function(BidModel) then) =
      _$BidModelCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String bidderId,
      List<StickerModel> exchanges,
      double amount,
      DateTime bidTime});
}

/// @nodoc
class _$BidModelCopyWithImpl<$Res> implements $BidModelCopyWith<$Res> {
  _$BidModelCopyWithImpl(this._value, this._then);

  final BidModel _value;
  // ignore: unused_field
  final $Res Function(BidModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? bidderId = freezed,
    Object? exchanges = freezed,
    Object? amount = freezed,
    Object? bidTime = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      bidderId: bidderId == freezed
          ? _value.bidderId
          : bidderId // ignore: cast_nullable_to_non_nullable
              as String,
      exchanges: exchanges == freezed
          ? _value.exchanges
          : exchanges // ignore: cast_nullable_to_non_nullable
              as List<StickerModel>,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      bidTime: bidTime == freezed
          ? _value.bidTime
          : bidTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$$_BidModelCopyWith<$Res> implements $BidModelCopyWith<$Res> {
  factory _$$_BidModelCopyWith(
          _$_BidModel value, $Res Function(_$_BidModel) then) =
      __$$_BidModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String bidderId,
      List<StickerModel> exchanges,
      double amount,
      DateTime bidTime});
}

/// @nodoc
class __$$_BidModelCopyWithImpl<$Res> extends _$BidModelCopyWithImpl<$Res>
    implements _$$_BidModelCopyWith<$Res> {
  __$$_BidModelCopyWithImpl(
      _$_BidModel _value, $Res Function(_$_BidModel) _then)
      : super(_value, (v) => _then(v as _$_BidModel));

  @override
  _$_BidModel get _value => super._value as _$_BidModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? bidderId = freezed,
    Object? exchanges = freezed,
    Object? amount = freezed,
    Object? bidTime = freezed,
  }) {
    return _then(_$_BidModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      bidderId: bidderId == freezed
          ? _value.bidderId
          : bidderId // ignore: cast_nullable_to_non_nullable
              as String,
      exchanges: exchanges == freezed
          ? _value._exchanges
          : exchanges // ignore: cast_nullable_to_non_nullable
              as List<StickerModel>,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      bidTime: bidTime == freezed
          ? _value.bidTime
          : bidTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_BidModel implements _BidModel {
  const _$_BidModel(
      {required this.id,
      required this.bidderId,
      required final List<StickerModel> exchanges,
      required this.amount,
      required this.bidTime})
      : _exchanges = exchanges;

  factory _$_BidModel.fromJson(Map<String, dynamic> json) =>
      _$$_BidModelFromJson(json);

  @override
  final String id;
  @override
  final String bidderId;
  final List<StickerModel> _exchanges;
  @override
  List<StickerModel> get exchanges {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exchanges);
  }

  @override
  final double amount;
  @override
  final DateTime bidTime;

  @override
  String toString() {
    return 'BidModel(id: $id, bidderId: $bidderId, exchanges: $exchanges, amount: $amount, bidTime: $bidTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BidModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.bidderId, bidderId) &&
            const DeepCollectionEquality()
                .equals(other._exchanges, _exchanges) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.bidTime, bidTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(bidderId),
      const DeepCollectionEquality().hash(_exchanges),
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(bidTime));

  @JsonKey(ignore: true)
  @override
  _$$_BidModelCopyWith<_$_BidModel> get copyWith =>
      __$$_BidModelCopyWithImpl<_$_BidModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BidModelToJson(
      this,
    );
  }
}

abstract class _BidModel implements BidModel {
  const factory _BidModel(
      {required final String id,
      required final String bidderId,
      required final List<StickerModel> exchanges,
      required final double amount,
      required final DateTime bidTime}) = _$_BidModel;

  factory _BidModel.fromJson(Map<String, dynamic> json) = _$_BidModel.fromJson;

  @override
  String get id;
  @override
  String get bidderId;
  @override
  List<StickerModel> get exchanges;
  @override
  double get amount;
  @override
  DateTime get bidTime;
  @override
  @JsonKey(ignore: true)
  _$$_BidModelCopyWith<_$_BidModel> get copyWith =>
      throw _privateConstructorUsedError;
}
