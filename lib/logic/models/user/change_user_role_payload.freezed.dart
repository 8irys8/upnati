// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'change_user_role_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChangeUserRolePayload _$ChangeUserRolePayloadFromJson(
    Map<String, dynamic> json) {
  return _ChangeUserRolePayload.fromJson(json);
}

/// @nodoc
mixin _$ChangeUserRolePayload {
  String get role => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChangeUserRolePayloadCopyWith<ChangeUserRolePayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeUserRolePayloadCopyWith<$Res> {
  factory $ChangeUserRolePayloadCopyWith(ChangeUserRolePayload value,
          $Res Function(ChangeUserRolePayload) then) =
      _$ChangeUserRolePayloadCopyWithImpl<$Res>;
  $Res call({String role});
}

/// @nodoc
class _$ChangeUserRolePayloadCopyWithImpl<$Res>
    implements $ChangeUserRolePayloadCopyWith<$Res> {
  _$ChangeUserRolePayloadCopyWithImpl(this._value, this._then);

  final ChangeUserRolePayload _value;
  // ignore: unused_field
  final $Res Function(ChangeUserRolePayload) _then;

  @override
  $Res call({
    Object? role = freezed,
  }) {
    return _then(_value.copyWith(
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ChangeUserRolePayloadCopyWith<$Res>
    implements $ChangeUserRolePayloadCopyWith<$Res> {
  factory _$$_ChangeUserRolePayloadCopyWith(_$_ChangeUserRolePayload value,
          $Res Function(_$_ChangeUserRolePayload) then) =
      __$$_ChangeUserRolePayloadCopyWithImpl<$Res>;
  @override
  $Res call({String role});
}

/// @nodoc
class __$$_ChangeUserRolePayloadCopyWithImpl<$Res>
    extends _$ChangeUserRolePayloadCopyWithImpl<$Res>
    implements _$$_ChangeUserRolePayloadCopyWith<$Res> {
  __$$_ChangeUserRolePayloadCopyWithImpl(_$_ChangeUserRolePayload _value,
      $Res Function(_$_ChangeUserRolePayload) _then)
      : super(_value, (v) => _then(v as _$_ChangeUserRolePayload));

  @override
  _$_ChangeUserRolePayload get _value =>
      super._value as _$_ChangeUserRolePayload;

  @override
  $Res call({
    Object? role = freezed,
  }) {
    return _then(_$_ChangeUserRolePayload(
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChangeUserRolePayload implements _ChangeUserRolePayload {
  const _$_ChangeUserRolePayload({required this.role});

  factory _$_ChangeUserRolePayload.fromJson(Map<String, dynamic> json) =>
      _$$_ChangeUserRolePayloadFromJson(json);

  @override
  final String role;

  @override
  String toString() {
    return 'ChangeUserRolePayload(role: $role)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeUserRolePayload &&
            const DeepCollectionEquality().equals(other.role, role));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(role));

  @JsonKey(ignore: true)
  @override
  _$$_ChangeUserRolePayloadCopyWith<_$_ChangeUserRolePayload> get copyWith =>
      __$$_ChangeUserRolePayloadCopyWithImpl<_$_ChangeUserRolePayload>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChangeUserRolePayloadToJson(
      this,
    );
  }
}

abstract class _ChangeUserRolePayload implements ChangeUserRolePayload {
  const factory _ChangeUserRolePayload({required final String role}) =
      _$_ChangeUserRolePayload;

  factory _ChangeUserRolePayload.fromJson(Map<String, dynamic> json) =
      _$_ChangeUserRolePayload.fromJson;

  @override
  String get role;
  @override
  @JsonKey(ignore: true)
  _$$_ChangeUserRolePayloadCopyWith<_$_ChangeUserRolePayload> get copyWith =>
      throw _privateConstructorUsedError;
}
