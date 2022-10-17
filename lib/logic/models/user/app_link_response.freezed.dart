// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_link_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppLinkResponse _$AppLinkResponseFromJson(Map<String, dynamic> json) {
  return _AppLinkResponse.fromJson(json);
}

/// @nodoc
mixin _$AppLinkResponse {
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppLinkResponseCopyWith<AppLinkResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppLinkResponseCopyWith<$Res> {
  factory $AppLinkResponseCopyWith(
          AppLinkResponse value, $Res Function(AppLinkResponse) then) =
      _$AppLinkResponseCopyWithImpl<$Res>;
  $Res call({String? url});
}

/// @nodoc
class _$AppLinkResponseCopyWithImpl<$Res>
    implements $AppLinkResponseCopyWith<$Res> {
  _$AppLinkResponseCopyWithImpl(this._value, this._then);

  final AppLinkResponse _value;
  // ignore: unused_field
  final $Res Function(AppLinkResponse) _then;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_AppLinkResponseCopyWith<$Res>
    implements $AppLinkResponseCopyWith<$Res> {
  factory _$$_AppLinkResponseCopyWith(
          _$_AppLinkResponse value, $Res Function(_$_AppLinkResponse) then) =
      __$$_AppLinkResponseCopyWithImpl<$Res>;
  @override
  $Res call({String? url});
}

/// @nodoc
class __$$_AppLinkResponseCopyWithImpl<$Res>
    extends _$AppLinkResponseCopyWithImpl<$Res>
    implements _$$_AppLinkResponseCopyWith<$Res> {
  __$$_AppLinkResponseCopyWithImpl(
      _$_AppLinkResponse _value, $Res Function(_$_AppLinkResponse) _then)
      : super(_value, (v) => _then(v as _$_AppLinkResponse));

  @override
  _$_AppLinkResponse get _value => super._value as _$_AppLinkResponse;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_$_AppLinkResponse(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppLinkResponse implements _AppLinkResponse {
  const _$_AppLinkResponse({this.url});

  factory _$_AppLinkResponse.fromJson(Map<String, dynamic> json) =>
      _$$_AppLinkResponseFromJson(json);

  @override
  final String? url;

  @override
  String toString() {
    return 'AppLinkResponse(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppLinkResponse &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$$_AppLinkResponseCopyWith<_$_AppLinkResponse> get copyWith =>
      __$$_AppLinkResponseCopyWithImpl<_$_AppLinkResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppLinkResponseToJson(
      this,
    );
  }
}

abstract class _AppLinkResponse implements AppLinkResponse {
  const factory _AppLinkResponse({final String? url}) = _$_AppLinkResponse;

  factory _AppLinkResponse.fromJson(Map<String, dynamic> json) =
      _$_AppLinkResponse.fromJson;

  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$_AppLinkResponseCopyWith<_$_AppLinkResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
