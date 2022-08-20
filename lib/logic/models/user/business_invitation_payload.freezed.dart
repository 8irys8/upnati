// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'business_invitation_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BusinessInvitationPayload _$BusinessInvitationPayloadFromJson(
    Map<String, dynamic> json) {
  return _BusinessInvitationPayload.fromJson(json);
}

/// @nodoc
mixin _$BusinessInvitationPayload {
  String get toId => throw _privateConstructorUsedError;
  String get toRole => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BusinessInvitationPayloadCopyWith<BusinessInvitationPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessInvitationPayloadCopyWith<$Res> {
  factory $BusinessInvitationPayloadCopyWith(BusinessInvitationPayload value,
          $Res Function(BusinessInvitationPayload) then) =
      _$BusinessInvitationPayloadCopyWithImpl<$Res>;
  $Res call({String toId, String toRole});
}

/// @nodoc
class _$BusinessInvitationPayloadCopyWithImpl<$Res>
    implements $BusinessInvitationPayloadCopyWith<$Res> {
  _$BusinessInvitationPayloadCopyWithImpl(this._value, this._then);

  final BusinessInvitationPayload _value;
  // ignore: unused_field
  final $Res Function(BusinessInvitationPayload) _then;

  @override
  $Res call({
    Object? toId = freezed,
    Object? toRole = freezed,
  }) {
    return _then(_value.copyWith(
      toId: toId == freezed
          ? _value.toId
          : toId // ignore: cast_nullable_to_non_nullable
              as String,
      toRole: toRole == freezed
          ? _value.toRole
          : toRole // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_BusinessInvitationPayloadCopyWith<$Res>
    implements $BusinessInvitationPayloadCopyWith<$Res> {
  factory _$$_BusinessInvitationPayloadCopyWith(
          _$_BusinessInvitationPayload value,
          $Res Function(_$_BusinessInvitationPayload) then) =
      __$$_BusinessInvitationPayloadCopyWithImpl<$Res>;
  @override
  $Res call({String toId, String toRole});
}

/// @nodoc
class __$$_BusinessInvitationPayloadCopyWithImpl<$Res>
    extends _$BusinessInvitationPayloadCopyWithImpl<$Res>
    implements _$$_BusinessInvitationPayloadCopyWith<$Res> {
  __$$_BusinessInvitationPayloadCopyWithImpl(
      _$_BusinessInvitationPayload _value,
      $Res Function(_$_BusinessInvitationPayload) _then)
      : super(_value, (v) => _then(v as _$_BusinessInvitationPayload));

  @override
  _$_BusinessInvitationPayload get _value =>
      super._value as _$_BusinessInvitationPayload;

  @override
  $Res call({
    Object? toId = freezed,
    Object? toRole = freezed,
  }) {
    return _then(_$_BusinessInvitationPayload(
      toId: toId == freezed
          ? _value.toId
          : toId // ignore: cast_nullable_to_non_nullable
              as String,
      toRole: toRole == freezed
          ? _value.toRole
          : toRole // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BusinessInvitationPayload implements _BusinessInvitationPayload {
  const _$_BusinessInvitationPayload(
      {required this.toId, required this.toRole});

  factory _$_BusinessInvitationPayload.fromJson(Map<String, dynamic> json) =>
      _$$_BusinessInvitationPayloadFromJson(json);

  @override
  final String toId;
  @override
  final String toRole;

  @override
  String toString() {
    return 'BusinessInvitationPayload(toId: $toId, toRole: $toRole)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BusinessInvitationPayload &&
            const DeepCollectionEquality().equals(other.toId, toId) &&
            const DeepCollectionEquality().equals(other.toRole, toRole));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(toId),
      const DeepCollectionEquality().hash(toRole));

  @JsonKey(ignore: true)
  @override
  _$$_BusinessInvitationPayloadCopyWith<_$_BusinessInvitationPayload>
      get copyWith => __$$_BusinessInvitationPayloadCopyWithImpl<
          _$_BusinessInvitationPayload>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BusinessInvitationPayloadToJson(
      this,
    );
  }
}

abstract class _BusinessInvitationPayload implements BusinessInvitationPayload {
  const factory _BusinessInvitationPayload(
      {required final String toId,
      required final String toRole}) = _$_BusinessInvitationPayload;

  factory _BusinessInvitationPayload.fromJson(Map<String, dynamic> json) =
      _$_BusinessInvitationPayload.fromJson;

  @override
  String get toId;
  @override
  String get toRole;
  @override
  @JsonKey(ignore: true)
  _$$_BusinessInvitationPayloadCopyWith<_$_BusinessInvitationPayload>
      get copyWith => throw _privateConstructorUsedError;
}
