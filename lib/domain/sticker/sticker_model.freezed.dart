// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sticker_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StickerModel _$StickerModelFromJson(Map<String, dynamic> json) {
  return _StickerModel.fromJson(json);
}

/// @nodoc
mixin _$StickerModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StickerModelCopyWith<StickerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StickerModelCopyWith<$Res> {
  factory $StickerModelCopyWith(
          StickerModel value, $Res Function(StickerModel) then) =
      _$StickerModelCopyWithImpl<$Res>;
  $Res call({String id, String name, String imageUrl});
}

/// @nodoc
class _$StickerModelCopyWithImpl<$Res> implements $StickerModelCopyWith<$Res> {
  _$StickerModelCopyWithImpl(this._value, this._then);

  final StickerModel _value;
  // ignore: unused_field
  final $Res Function(StickerModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_StickerModelCopyWith<$Res>
    implements $StickerModelCopyWith<$Res> {
  factory _$$_StickerModelCopyWith(
          _$_StickerModel value, $Res Function(_$_StickerModel) then) =
      __$$_StickerModelCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, String imageUrl});
}

/// @nodoc
class __$$_StickerModelCopyWithImpl<$Res>
    extends _$StickerModelCopyWithImpl<$Res>
    implements _$$_StickerModelCopyWith<$Res> {
  __$$_StickerModelCopyWithImpl(
      _$_StickerModel _value, $Res Function(_$_StickerModel) _then)
      : super(_value, (v) => _then(v as _$_StickerModel));

  @override
  _$_StickerModel get _value => super._value as _$_StickerModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_$_StickerModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_StickerModel implements _StickerModel {
  const _$_StickerModel(
      {required this.id, required this.name, required this.imageUrl});

  factory _$_StickerModel.fromJson(Map<String, dynamic> json) =>
      _$$_StickerModelFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String imageUrl;

  @override
  String toString() {
    return 'StickerModel(id: $id, name: $name, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StickerModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(imageUrl));

  @JsonKey(ignore: true)
  @override
  _$$_StickerModelCopyWith<_$_StickerModel> get copyWith =>
      __$$_StickerModelCopyWithImpl<_$_StickerModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StickerModelToJson(
      this,
    );
  }
}

abstract class _StickerModel implements StickerModel {
  const factory _StickerModel(
      {required final String id,
      required final String name,
      required final String imageUrl}) = _$_StickerModel;

  factory _StickerModel.fromJson(Map<String, dynamic> json) =
      _$_StickerModel.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$_StickerModelCopyWith<_$_StickerModel> get copyWith =>
      throw _privateConstructorUsedError;
}
