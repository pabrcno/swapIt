// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sticker_auction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StickerAuctionModel _$StickerAuctionModelFromJson(Map<String, dynamic> json) {
  return _StickerAuctionModel.fromJson(json);
}

/// @nodoc
mixin _$StickerAuctionModel {
  String get id => throw _privateConstructorUsedError;
  String? get ownerId => throw _privateConstructorUsedError;
  StickerModel get sticker => throw _privateConstructorUsedError;
  String get ownerLocation => throw _privateConstructorUsedError;
  List<StickerModel> get exchangeables => throw _privateConstructorUsedError;
  double get bestPrice => throw _privateConstructorUsedError;
  String? get winnerId => throw _privateConstructorUsedError;
  DateTime? get auctionEnd => throw _privateConstructorUsedError;
  DateTime? get auctionStart => throw _privateConstructorUsedError;
  List<BidModel> get bids => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StickerAuctionModelCopyWith<StickerAuctionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StickerAuctionModelCopyWith<$Res> {
  factory $StickerAuctionModelCopyWith(
          StickerAuctionModel value, $Res Function(StickerAuctionModel) then) =
      _$StickerAuctionModelCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String? ownerId,
      StickerModel sticker,
      String ownerLocation,
      List<StickerModel> exchangeables,
      double bestPrice,
      String? winnerId,
      DateTime? auctionEnd,
      DateTime? auctionStart,
      List<BidModel> bids});

  $StickerModelCopyWith<$Res> get sticker;
}

/// @nodoc
class _$StickerAuctionModelCopyWithImpl<$Res>
    implements $StickerAuctionModelCopyWith<$Res> {
  _$StickerAuctionModelCopyWithImpl(this._value, this._then);

  final StickerAuctionModel _value;
  // ignore: unused_field
  final $Res Function(StickerAuctionModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? ownerId = freezed,
    Object? sticker = freezed,
    Object? ownerLocation = freezed,
    Object? exchangeables = freezed,
    Object? bestPrice = freezed,
    Object? winnerId = freezed,
    Object? auctionEnd = freezed,
    Object? auctionStart = freezed,
    Object? bids = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      ownerId: ownerId == freezed
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String?,
      sticker: sticker == freezed
          ? _value.sticker
          : sticker // ignore: cast_nullable_to_non_nullable
              as StickerModel,
      ownerLocation: ownerLocation == freezed
          ? _value.ownerLocation
          : ownerLocation // ignore: cast_nullable_to_non_nullable
              as String,
      exchangeables: exchangeables == freezed
          ? _value.exchangeables
          : exchangeables // ignore: cast_nullable_to_non_nullable
              as List<StickerModel>,
      bestPrice: bestPrice == freezed
          ? _value.bestPrice
          : bestPrice // ignore: cast_nullable_to_non_nullable
              as double,
      winnerId: winnerId == freezed
          ? _value.winnerId
          : winnerId // ignore: cast_nullable_to_non_nullable
              as String?,
      auctionEnd: auctionEnd == freezed
          ? _value.auctionEnd
          : auctionEnd // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      auctionStart: auctionStart == freezed
          ? _value.auctionStart
          : auctionStart // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      bids: bids == freezed
          ? _value.bids
          : bids // ignore: cast_nullable_to_non_nullable
              as List<BidModel>,
    ));
  }

  @override
  $StickerModelCopyWith<$Res> get sticker {
    return $StickerModelCopyWith<$Res>(_value.sticker, (value) {
      return _then(_value.copyWith(sticker: value));
    });
  }
}

/// @nodoc
abstract class _$$_StickerAuctionModelCopyWith<$Res>
    implements $StickerAuctionModelCopyWith<$Res> {
  factory _$$_StickerAuctionModelCopyWith(_$_StickerAuctionModel value,
          $Res Function(_$_StickerAuctionModel) then) =
      __$$_StickerAuctionModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String? ownerId,
      StickerModel sticker,
      String ownerLocation,
      List<StickerModel> exchangeables,
      double bestPrice,
      String? winnerId,
      DateTime? auctionEnd,
      DateTime? auctionStart,
      List<BidModel> bids});

  @override
  $StickerModelCopyWith<$Res> get sticker;
}

/// @nodoc
class __$$_StickerAuctionModelCopyWithImpl<$Res>
    extends _$StickerAuctionModelCopyWithImpl<$Res>
    implements _$$_StickerAuctionModelCopyWith<$Res> {
  __$$_StickerAuctionModelCopyWithImpl(_$_StickerAuctionModel _value,
      $Res Function(_$_StickerAuctionModel) _then)
      : super(_value, (v) => _then(v as _$_StickerAuctionModel));

  @override
  _$_StickerAuctionModel get _value => super._value as _$_StickerAuctionModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? ownerId = freezed,
    Object? sticker = freezed,
    Object? ownerLocation = freezed,
    Object? exchangeables = freezed,
    Object? bestPrice = freezed,
    Object? winnerId = freezed,
    Object? auctionEnd = freezed,
    Object? auctionStart = freezed,
    Object? bids = freezed,
  }) {
    return _then(_$_StickerAuctionModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      ownerId: ownerId == freezed
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String?,
      sticker: sticker == freezed
          ? _value.sticker
          : sticker // ignore: cast_nullable_to_non_nullable
              as StickerModel,
      ownerLocation: ownerLocation == freezed
          ? _value.ownerLocation
          : ownerLocation // ignore: cast_nullable_to_non_nullable
              as String,
      exchangeables: exchangeables == freezed
          ? _value._exchangeables
          : exchangeables // ignore: cast_nullable_to_non_nullable
              as List<StickerModel>,
      bestPrice: bestPrice == freezed
          ? _value.bestPrice
          : bestPrice // ignore: cast_nullable_to_non_nullable
              as double,
      winnerId: winnerId == freezed
          ? _value.winnerId
          : winnerId // ignore: cast_nullable_to_non_nullable
              as String?,
      auctionEnd: auctionEnd == freezed
          ? _value.auctionEnd
          : auctionEnd // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      auctionStart: auctionStart == freezed
          ? _value.auctionStart
          : auctionStart // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      bids: bids == freezed
          ? _value._bids
          : bids // ignore: cast_nullable_to_non_nullable
              as List<BidModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_StickerAuctionModel implements _StickerAuctionModel {
  const _$_StickerAuctionModel(
      {required this.id,
      required this.ownerId,
      required this.sticker,
      required this.ownerLocation,
      required final List<StickerModel> exchangeables,
      required this.bestPrice,
      required this.winnerId,
      required this.auctionEnd,
      required this.auctionStart,
      required final List<BidModel> bids})
      : _exchangeables = exchangeables,
        _bids = bids;

  factory _$_StickerAuctionModel.fromJson(Map<String, dynamic> json) =>
      _$$_StickerAuctionModelFromJson(json);

  @override
  final String id;
  @override
  final String? ownerId;
  @override
  final StickerModel sticker;
  @override
  final String ownerLocation;
  final List<StickerModel> _exchangeables;
  @override
  List<StickerModel> get exchangeables {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exchangeables);
  }

  @override
  final double bestPrice;
  @override
  final String? winnerId;
  @override
  final DateTime? auctionEnd;
  @override
  final DateTime? auctionStart;
  final List<BidModel> _bids;
  @override
  List<BidModel> get bids {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bids);
  }

  @override
  String toString() {
    return 'StickerAuctionModel(id: $id, ownerId: $ownerId, sticker: $sticker, ownerLocation: $ownerLocation, exchangeables: $exchangeables, bestPrice: $bestPrice, winnerId: $winnerId, auctionEnd: $auctionEnd, auctionStart: $auctionStart, bids: $bids)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StickerAuctionModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.ownerId, ownerId) &&
            const DeepCollectionEquality().equals(other.sticker, sticker) &&
            const DeepCollectionEquality()
                .equals(other.ownerLocation, ownerLocation) &&
            const DeepCollectionEquality()
                .equals(other._exchangeables, _exchangeables) &&
            const DeepCollectionEquality().equals(other.bestPrice, bestPrice) &&
            const DeepCollectionEquality().equals(other.winnerId, winnerId) &&
            const DeepCollectionEquality()
                .equals(other.auctionEnd, auctionEnd) &&
            const DeepCollectionEquality()
                .equals(other.auctionStart, auctionStart) &&
            const DeepCollectionEquality().equals(other._bids, _bids));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(ownerId),
      const DeepCollectionEquality().hash(sticker),
      const DeepCollectionEquality().hash(ownerLocation),
      const DeepCollectionEquality().hash(_exchangeables),
      const DeepCollectionEquality().hash(bestPrice),
      const DeepCollectionEquality().hash(winnerId),
      const DeepCollectionEquality().hash(auctionEnd),
      const DeepCollectionEquality().hash(auctionStart),
      const DeepCollectionEquality().hash(_bids));

  @JsonKey(ignore: true)
  @override
  _$$_StickerAuctionModelCopyWith<_$_StickerAuctionModel> get copyWith =>
      __$$_StickerAuctionModelCopyWithImpl<_$_StickerAuctionModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StickerAuctionModelToJson(
      this,
    );
  }
}

abstract class _StickerAuctionModel implements StickerAuctionModel {
  const factory _StickerAuctionModel(
      {required final String id,
      required final String? ownerId,
      required final StickerModel sticker,
      required final String ownerLocation,
      required final List<StickerModel> exchangeables,
      required final double bestPrice,
      required final String? winnerId,
      required final DateTime? auctionEnd,
      required final DateTime? auctionStart,
      required final List<BidModel> bids}) = _$_StickerAuctionModel;

  factory _StickerAuctionModel.fromJson(Map<String, dynamic> json) =
      _$_StickerAuctionModel.fromJson;

  @override
  String get id;
  @override
  String? get ownerId;
  @override
  StickerModel get sticker;
  @override
  String get ownerLocation;
  @override
  List<StickerModel> get exchangeables;
  @override
  double get bestPrice;
  @override
  String? get winnerId;
  @override
  DateTime? get auctionEnd;
  @override
  DateTime? get auctionStart;
  @override
  List<BidModel> get bids;
  @override
  @JsonKey(ignore: true)
  _$$_StickerAuctionModelCopyWith<_$_StickerAuctionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
