// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sticker_preview_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StickerPreviewModel _$StickerPreviewModelFromJson(Map<String, dynamic> json) {
  return _StickerPreviewModel.fromJson(json);
}

/// @nodoc
mixin _$StickerPreviewModel {
  StickerModel get sticker => throw _privateConstructorUsedError;
  String get ownerLocation => throw _privateConstructorUsedError;
  List<StickerModel> get exchangeables => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StickerPreviewModelCopyWith<StickerPreviewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StickerPreviewModelCopyWith<$Res> {
  factory $StickerPreviewModelCopyWith(
          StickerPreviewModel value, $Res Function(StickerPreviewModel) then) =
      _$StickerPreviewModelCopyWithImpl<$Res>;
  $Res call(
      {StickerModel sticker,
      String ownerLocation,
      List<StickerModel> exchangeables,
      double price});

  $StickerModelCopyWith<$Res> get sticker;
}

/// @nodoc
class _$StickerPreviewModelCopyWithImpl<$Res>
    implements $StickerPreviewModelCopyWith<$Res> {
  _$StickerPreviewModelCopyWithImpl(this._value, this._then);

  final StickerPreviewModel _value;
  // ignore: unused_field
  final $Res Function(StickerPreviewModel) _then;

  @override
  $Res call({
    Object? sticker = freezed,
    Object? ownerLocation = freezed,
    Object? exchangeables = freezed,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
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
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
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
abstract class _$$_StickerPreviewModelCopyWith<$Res>
    implements $StickerPreviewModelCopyWith<$Res> {
  factory _$$_StickerPreviewModelCopyWith(_$_StickerPreviewModel value,
          $Res Function(_$_StickerPreviewModel) then) =
      __$$_StickerPreviewModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {StickerModel sticker,
      String ownerLocation,
      List<StickerModel> exchangeables,
      double price});

  @override
  $StickerModelCopyWith<$Res> get sticker;
}

/// @nodoc
class __$$_StickerPreviewModelCopyWithImpl<$Res>
    extends _$StickerPreviewModelCopyWithImpl<$Res>
    implements _$$_StickerPreviewModelCopyWith<$Res> {
  __$$_StickerPreviewModelCopyWithImpl(_$_StickerPreviewModel _value,
      $Res Function(_$_StickerPreviewModel) _then)
      : super(_value, (v) => _then(v as _$_StickerPreviewModel));

  @override
  _$_StickerPreviewModel get _value => super._value as _$_StickerPreviewModel;

  @override
  $Res call({
    Object? sticker = freezed,
    Object? ownerLocation = freezed,
    Object? exchangeables = freezed,
    Object? price = freezed,
  }) {
    return _then(_$_StickerPreviewModel(
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
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_StickerPreviewModel implements _StickerPreviewModel {
  const _$_StickerPreviewModel(
      {required this.sticker,
      required this.ownerLocation,
      required final List<StickerModel> exchangeables,
      required this.price})
      : _exchangeables = exchangeables;

  factory _$_StickerPreviewModel.fromJson(Map<String, dynamic> json) =>
      _$$_StickerPreviewModelFromJson(json);

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
  final double price;

  @override
  String toString() {
    return 'StickerPreviewModel(sticker: $sticker, ownerLocation: $ownerLocation, exchangeables: $exchangeables, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StickerPreviewModel &&
            const DeepCollectionEquality().equals(other.sticker, sticker) &&
            const DeepCollectionEquality()
                .equals(other.ownerLocation, ownerLocation) &&
            const DeepCollectionEquality()
                .equals(other._exchangeables, _exchangeables) &&
            const DeepCollectionEquality().equals(other.price, price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(sticker),
      const DeepCollectionEquality().hash(ownerLocation),
      const DeepCollectionEquality().hash(_exchangeables),
      const DeepCollectionEquality().hash(price));

  @JsonKey(ignore: true)
  @override
  _$$_StickerPreviewModelCopyWith<_$_StickerPreviewModel> get copyWith =>
      __$$_StickerPreviewModelCopyWithImpl<_$_StickerPreviewModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StickerPreviewModelToJson(
      this,
    );
  }
}

abstract class _StickerPreviewModel implements StickerPreviewModel {
  const factory _StickerPreviewModel(
      {required final StickerModel sticker,
      required final String ownerLocation,
      required final List<StickerModel> exchangeables,
      required final double price}) = _$_StickerPreviewModel;

  factory _StickerPreviewModel.fromJson(Map<String, dynamic> json) =
      _$_StickerPreviewModel.fromJson;

  @override
  StickerModel get sticker;
  @override
  String get ownerLocation;
  @override
  List<StickerModel> get exchangeables;
  @override
  double get price;
  @override
  @JsonKey(ignore: true)
  _$$_StickerPreviewModelCopyWith<_$_StickerPreviewModel> get copyWith =>
      throw _privateConstructorUsedError;
}
