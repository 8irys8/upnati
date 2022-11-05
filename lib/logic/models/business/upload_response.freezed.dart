// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'upload_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UploadResponse _$UploadResponseFromJson(Map<String, dynamic> json) {
  return _UploadResponse.fromJson(json);
}

/// @nodoc
mixin _$UploadResponse {
  List<String>? get urls => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UploadResponseCopyWith<UploadResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadResponseCopyWith<$Res> {
  factory $UploadResponseCopyWith(
          UploadResponse value, $Res Function(UploadResponse) then) =
      _$UploadResponseCopyWithImpl<$Res>;
  $Res call({List<String>? urls});
}

/// @nodoc
class _$UploadResponseCopyWithImpl<$Res>
    implements $UploadResponseCopyWith<$Res> {
  _$UploadResponseCopyWithImpl(this._value, this._then);

  final UploadResponse _value;
  // ignore: unused_field
  final $Res Function(UploadResponse) _then;

  @override
  $Res call({
    Object? urls = freezed,
  }) {
    return _then(_value.copyWith(
      urls: urls == freezed
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
abstract class _$$_UploadResponseCopyWith<$Res>
    implements $UploadResponseCopyWith<$Res> {
  factory _$$_UploadResponseCopyWith(
          _$_UploadResponse value, $Res Function(_$_UploadResponse) then) =
      __$$_UploadResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<String>? urls});
}

/// @nodoc
class __$$_UploadResponseCopyWithImpl<$Res>
    extends _$UploadResponseCopyWithImpl<$Res>
    implements _$$_UploadResponseCopyWith<$Res> {
  __$$_UploadResponseCopyWithImpl(
      _$_UploadResponse _value, $Res Function(_$_UploadResponse) _then)
      : super(_value, (v) => _then(v as _$_UploadResponse));

  @override
  _$_UploadResponse get _value => super._value as _$_UploadResponse;

  @override
  $Res call({
    Object? urls = freezed,
  }) {
    return _then(_$_UploadResponse(
      urls: urls == freezed
          ? _value._urls
          : urls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UploadResponse implements _UploadResponse {
  const _$_UploadResponse({final List<String>? urls}) : _urls = urls;

  factory _$_UploadResponse.fromJson(Map<String, dynamic> json) =>
      _$$_UploadResponseFromJson(json);

  final List<String>? _urls;
  @override
  List<String>? get urls {
    final value = _urls;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UploadResponse(urls: $urls)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UploadResponse &&
            const DeepCollectionEquality().equals(other._urls, _urls));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_urls));

  @JsonKey(ignore: true)
  @override
  _$$_UploadResponseCopyWith<_$_UploadResponse> get copyWith =>
      __$$_UploadResponseCopyWithImpl<_$_UploadResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UploadResponseToJson(
      this,
    );
  }
}

abstract class _UploadResponse implements UploadResponse {
  const factory _UploadResponse({final List<String>? urls}) = _$_UploadResponse;

  factory _UploadResponse.fromJson(Map<String, dynamic> json) =
      _$_UploadResponse.fromJson;

  @override
  List<String>? get urls;
  @override
  @JsonKey(ignore: true)
  _$$_UploadResponseCopyWith<_$_UploadResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
