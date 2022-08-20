// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginPayload _$LoginPayloadFromJson(Map<String, dynamic> json) {
  return _LoginPayload.fromJson(json);
}

/// @nodoc
mixin _$LoginPayload {
  String get identifier => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginPayloadCopyWith<LoginPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginPayloadCopyWith<$Res> {
  factory $LoginPayloadCopyWith(
          LoginPayload value, $Res Function(LoginPayload) then) =
      _$LoginPayloadCopyWithImpl<$Res>;
  $Res call({String identifier, String password});
}

/// @nodoc
class _$LoginPayloadCopyWithImpl<$Res> implements $LoginPayloadCopyWith<$Res> {
  _$LoginPayloadCopyWithImpl(this._value, this._then);

  final LoginPayload _value;
  // ignore: unused_field
  final $Res Function(LoginPayload) _then;

  @override
  $Res call({
    Object? identifier = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      identifier: identifier == freezed
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_LoginPayloadCopyWith<$Res>
    implements $LoginPayloadCopyWith<$Res> {
  factory _$$_LoginPayloadCopyWith(
          _$_LoginPayload value, $Res Function(_$_LoginPayload) then) =
      __$$_LoginPayloadCopyWithImpl<$Res>;
  @override
  $Res call({String identifier, String password});
}

/// @nodoc
class __$$_LoginPayloadCopyWithImpl<$Res>
    extends _$LoginPayloadCopyWithImpl<$Res>
    implements _$$_LoginPayloadCopyWith<$Res> {
  __$$_LoginPayloadCopyWithImpl(
      _$_LoginPayload _value, $Res Function(_$_LoginPayload) _then)
      : super(_value, (v) => _then(v as _$_LoginPayload));

  @override
  _$_LoginPayload get _value => super._value as _$_LoginPayload;

  @override
  $Res call({
    Object? identifier = freezed,
    Object? password = freezed,
  }) {
    return _then(_$_LoginPayload(
      identifier: identifier == freezed
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
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
class _$_LoginPayload implements _LoginPayload {
  const _$_LoginPayload({required this.identifier, required this.password});

  factory _$_LoginPayload.fromJson(Map<String, dynamic> json) =>
      _$$_LoginPayloadFromJson(json);

  @override
  final String identifier;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginPayload(identifier: $identifier, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginPayload &&
            const DeepCollectionEquality()
                .equals(other.identifier, identifier) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(identifier),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$_LoginPayloadCopyWith<_$_LoginPayload> get copyWith =>
      __$$_LoginPayloadCopyWithImpl<_$_LoginPayload>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginPayloadToJson(
      this,
    );
  }
}

abstract class _LoginPayload implements LoginPayload {
  const factory _LoginPayload(
      {required final String identifier,
      required final String password}) = _$_LoginPayload;

  factory _LoginPayload.fromJson(Map<String, dynamic> json) =
      _$_LoginPayload.fromJson;

  @override
  String get identifier;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_LoginPayloadCopyWith<_$_LoginPayload> get copyWith =>
      throw _privateConstructorUsedError;
}
