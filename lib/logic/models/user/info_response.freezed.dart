// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'info_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InfoResponse _$InfoResponseFromJson(Map<String, dynamic> json) {
  return _InfoResponse.fromJson(json);
}

/// @nodoc
mixin _$InfoResponse {
  String? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InfoResponseCopyWith<InfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InfoResponseCopyWith<$Res> {
  factory $InfoResponseCopyWith(
          InfoResponse value, $Res Function(InfoResponse) then) =
      _$InfoResponseCopyWithImpl<$Res>;
  $Res call({String? value});
}

/// @nodoc
class _$InfoResponseCopyWithImpl<$Res> implements $InfoResponseCopyWith<$Res> {
  _$InfoResponseCopyWithImpl(this._value, this._then);

  final InfoResponse _value;
  // ignore: unused_field
  final $Res Function(InfoResponse) _then;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_InfoResponseCopyWith<$Res>
    implements $InfoResponseCopyWith<$Res> {
  factory _$$_InfoResponseCopyWith(
          _$_InfoResponse value, $Res Function(_$_InfoResponse) then) =
      __$$_InfoResponseCopyWithImpl<$Res>;
  @override
  $Res call({String? value});
}

/// @nodoc
class __$$_InfoResponseCopyWithImpl<$Res>
    extends _$InfoResponseCopyWithImpl<$Res>
    implements _$$_InfoResponseCopyWith<$Res> {
  __$$_InfoResponseCopyWithImpl(
      _$_InfoResponse _value, $Res Function(_$_InfoResponse) _then)
      : super(_value, (v) => _then(v as _$_InfoResponse));

  @override
  _$_InfoResponse get _value => super._value as _$_InfoResponse;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_InfoResponse(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InfoResponse implements _InfoResponse {
  const _$_InfoResponse({this.value});

  factory _$_InfoResponse.fromJson(Map<String, dynamic> json) =>
      _$$_InfoResponseFromJson(json);

  @override
  final String? value;

  @override
  String toString() {
    return 'InfoResponse(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InfoResponse &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_InfoResponseCopyWith<_$_InfoResponse> get copyWith =>
      __$$_InfoResponseCopyWithImpl<_$_InfoResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InfoResponseToJson(
      this,
    );
  }
}

abstract class _InfoResponse implements InfoResponse {
  const factory _InfoResponse({final String? value}) = _$_InfoResponse;

  factory _InfoResponse.fromJson(Map<String, dynamic> json) =
      _$_InfoResponse.fromJson;

  @override
  String? get value;
  @override
  @JsonKey(ignore: true)
  _$$_InfoResponseCopyWith<_$_InfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
