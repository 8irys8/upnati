// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'restore_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RestorePayload _$RestorePayloadFromJson(Map<String, dynamic> json) {
  return _RestorePayload.fromJson(json);
}

/// @nodoc
mixin _$RestorePayload {
  String get code => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RestorePayloadCopyWith<RestorePayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestorePayloadCopyWith<$Res> {
  factory $RestorePayloadCopyWith(
          RestorePayload value, $Res Function(RestorePayload) then) =
      _$RestorePayloadCopyWithImpl<$Res>;
  $Res call({String code, String password});
}

/// @nodoc
class _$RestorePayloadCopyWithImpl<$Res>
    implements $RestorePayloadCopyWith<$Res> {
  _$RestorePayloadCopyWithImpl(this._value, this._then);

  final RestorePayload _value;
  // ignore: unused_field
  final $Res Function(RestorePayload) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_RestorePayloadCopyWith<$Res>
    implements $RestorePayloadCopyWith<$Res> {
  factory _$$_RestorePayloadCopyWith(
          _$_RestorePayload value, $Res Function(_$_RestorePayload) then) =
      __$$_RestorePayloadCopyWithImpl<$Res>;
  @override
  $Res call({String code, String password});
}

/// @nodoc
class __$$_RestorePayloadCopyWithImpl<$Res>
    extends _$RestorePayloadCopyWithImpl<$Res>
    implements _$$_RestorePayloadCopyWith<$Res> {
  __$$_RestorePayloadCopyWithImpl(
      _$_RestorePayload _value, $Res Function(_$_RestorePayload) _then)
      : super(_value, (v) => _then(v as _$_RestorePayload));

  @override
  _$_RestorePayload get _value => super._value as _$_RestorePayload;

  @override
  $Res call({
    Object? code = freezed,
    Object? password = freezed,
  }) {
    return _then(_$_RestorePayload(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RestorePayload implements _RestorePayload {
  const _$_RestorePayload({required this.code, required this.password});

  factory _$_RestorePayload.fromJson(Map<String, dynamic> json) =>
      _$$_RestorePayloadFromJson(json);

  @override
  final String code;
  @override
  final String password;

  @override
  String toString() {
    return 'RestorePayload(code: $code, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RestorePayload &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$_RestorePayloadCopyWith<_$_RestorePayload> get copyWith =>
      __$$_RestorePayloadCopyWithImpl<_$_RestorePayload>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RestorePayloadToJson(
      this,
    );
  }
}

abstract class _RestorePayload implements RestorePayload {
  const factory _RestorePayload(
      {required final String code,
      required final String password}) = _$_RestorePayload;

  factory _RestorePayload.fromJson(Map<String, dynamic> json) =
      _$_RestorePayload.fromJson;

  @override
  String get code;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_RestorePayloadCopyWith<_$_RestorePayload> get copyWith =>
      throw _privateConstructorUsedError;
}
