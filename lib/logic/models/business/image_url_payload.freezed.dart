// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'image_url_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImageUrlPayload _$ImageUrlPayloadFromJson(Map<String, dynamic> json) {
  return _ImageUrlPayload.fromJson(json);
}

/// @nodoc
mixin _$ImageUrlPayload {
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageUrlPayloadCopyWith<ImageUrlPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageUrlPayloadCopyWith<$Res> {
  factory $ImageUrlPayloadCopyWith(
          ImageUrlPayload value, $Res Function(ImageUrlPayload) then) =
      _$ImageUrlPayloadCopyWithImpl<$Res>;
  $Res call({String url});
}

/// @nodoc
class _$ImageUrlPayloadCopyWithImpl<$Res>
    implements $ImageUrlPayloadCopyWith<$Res> {
  _$ImageUrlPayloadCopyWithImpl(this._value, this._then);

  final ImageUrlPayload _value;
  // ignore: unused_field
  final $Res Function(ImageUrlPayload) _then;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ImageUrlPayloadCopyWith<$Res>
    implements $ImageUrlPayloadCopyWith<$Res> {
  factory _$$_ImageUrlPayloadCopyWith(
          _$_ImageUrlPayload value, $Res Function(_$_ImageUrlPayload) then) =
      __$$_ImageUrlPayloadCopyWithImpl<$Res>;
  @override
  $Res call({String url});
}

/// @nodoc
class __$$_ImageUrlPayloadCopyWithImpl<$Res>
    extends _$ImageUrlPayloadCopyWithImpl<$Res>
    implements _$$_ImageUrlPayloadCopyWith<$Res> {
  __$$_ImageUrlPayloadCopyWithImpl(
      _$_ImageUrlPayload _value, $Res Function(_$_ImageUrlPayload) _then)
      : super(_value, (v) => _then(v as _$_ImageUrlPayload));

  @override
  _$_ImageUrlPayload get _value => super._value as _$_ImageUrlPayload;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_$_ImageUrlPayload(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ImageUrlPayload implements _ImageUrlPayload {
  const _$_ImageUrlPayload({required this.url});

  factory _$_ImageUrlPayload.fromJson(Map<String, dynamic> json) =>
      _$$_ImageUrlPayloadFromJson(json);

  @override
  final String url;

  @override
  String toString() {
    return 'ImageUrlPayload(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageUrlPayload &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$$_ImageUrlPayloadCopyWith<_$_ImageUrlPayload> get copyWith =>
      __$$_ImageUrlPayloadCopyWithImpl<_$_ImageUrlPayload>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImageUrlPayloadToJson(
      this,
    );
  }
}

abstract class _ImageUrlPayload implements ImageUrlPayload {
  const factory _ImageUrlPayload({required final String url}) =
      _$_ImageUrlPayload;

  factory _ImageUrlPayload.fromJson(Map<String, dynamic> json) =
      _$_ImageUrlPayload.fromJson;

  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_ImageUrlPayloadCopyWith<_$_ImageUrlPayload> get copyWith =>
      throw _privateConstructorUsedError;
}
