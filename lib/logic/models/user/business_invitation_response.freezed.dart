// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'business_invitation_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BusinessInvitationResponse _$BusinessInvitationResponseFromJson(
    Map<String, dynamic> json) {
  return _BusinessInvitationResponse.fromJson(json);
}

/// @nodoc
mixin _$BusinessInvitationResponse {
  String? get id => throw _privateConstructorUsedError;
  String? get creationDate => throw _privateConstructorUsedError;
  String get fromId => throw _privateConstructorUsedError;
  String get fromRole => throw _privateConstructorUsedError;
  String get toId => throw _privateConstructorUsedError;
  String get businessId => throw _privateConstructorUsedError;
  String get toRole => throw _privateConstructorUsedError;
  bool? get accepted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BusinessInvitationResponseCopyWith<BusinessInvitationResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessInvitationResponseCopyWith<$Res> {
  factory $BusinessInvitationResponseCopyWith(BusinessInvitationResponse value,
          $Res Function(BusinessInvitationResponse) then) =
      _$BusinessInvitationResponseCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? creationDate,
      String fromId,
      String fromRole,
      String toId,
      String businessId,
      String toRole,
      bool? accepted});
}

/// @nodoc
class _$BusinessInvitationResponseCopyWithImpl<$Res>
    implements $BusinessInvitationResponseCopyWith<$Res> {
  _$BusinessInvitationResponseCopyWithImpl(this._value, this._then);

  final BusinessInvitationResponse _value;
  // ignore: unused_field
  final $Res Function(BusinessInvitationResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? creationDate = freezed,
    Object? fromId = freezed,
    Object? fromRole = freezed,
    Object? toId = freezed,
    Object? businessId = freezed,
    Object? toRole = freezed,
    Object? accepted = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      creationDate: creationDate == freezed
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as String?,
      fromId: fromId == freezed
          ? _value.fromId
          : fromId // ignore: cast_nullable_to_non_nullable
              as String,
      fromRole: fromRole == freezed
          ? _value.fromRole
          : fromRole // ignore: cast_nullable_to_non_nullable
              as String,
      toId: toId == freezed
          ? _value.toId
          : toId // ignore: cast_nullable_to_non_nullable
              as String,
      businessId: businessId == freezed
          ? _value.businessId
          : businessId // ignore: cast_nullable_to_non_nullable
              as String,
      toRole: toRole == freezed
          ? _value.toRole
          : toRole // ignore: cast_nullable_to_non_nullable
              as String,
      accepted: accepted == freezed
          ? _value.accepted
          : accepted // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$$_BusinessInvitationResponseCopyWith<$Res>
    implements $BusinessInvitationResponseCopyWith<$Res> {
  factory _$$_BusinessInvitationResponseCopyWith(
          _$_BusinessInvitationResponse value,
          $Res Function(_$_BusinessInvitationResponse) then) =
      __$$_BusinessInvitationResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? creationDate,
      String fromId,
      String fromRole,
      String toId,
      String businessId,
      String toRole,
      bool? accepted});
}

/// @nodoc
class __$$_BusinessInvitationResponseCopyWithImpl<$Res>
    extends _$BusinessInvitationResponseCopyWithImpl<$Res>
    implements _$$_BusinessInvitationResponseCopyWith<$Res> {
  __$$_BusinessInvitationResponseCopyWithImpl(
      _$_BusinessInvitationResponse _value,
      $Res Function(_$_BusinessInvitationResponse) _then)
      : super(_value, (v) => _then(v as _$_BusinessInvitationResponse));

  @override
  _$_BusinessInvitationResponse get _value =>
      super._value as _$_BusinessInvitationResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? creationDate = freezed,
    Object? fromId = freezed,
    Object? fromRole = freezed,
    Object? toId = freezed,
    Object? businessId = freezed,
    Object? toRole = freezed,
    Object? accepted = freezed,
  }) {
    return _then(_$_BusinessInvitationResponse(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      creationDate: creationDate == freezed
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as String?,
      fromId: fromId == freezed
          ? _value.fromId
          : fromId // ignore: cast_nullable_to_non_nullable
              as String,
      fromRole: fromRole == freezed
          ? _value.fromRole
          : fromRole // ignore: cast_nullable_to_non_nullable
              as String,
      toId: toId == freezed
          ? _value.toId
          : toId // ignore: cast_nullable_to_non_nullable
              as String,
      businessId: businessId == freezed
          ? _value.businessId
          : businessId // ignore: cast_nullable_to_non_nullable
              as String,
      toRole: toRole == freezed
          ? _value.toRole
          : toRole // ignore: cast_nullable_to_non_nullable
              as String,
      accepted: accepted == freezed
          ? _value.accepted
          : accepted // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BusinessInvitationResponse implements _BusinessInvitationResponse {
  const _$_BusinessInvitationResponse(
      {this.id,
      this.creationDate,
      required this.fromId,
      required this.fromRole,
      required this.toId,
      required this.businessId,
      required this.toRole,
      this.accepted});

  factory _$_BusinessInvitationResponse.fromJson(Map<String, dynamic> json) =>
      _$$_BusinessInvitationResponseFromJson(json);

  @override
  final String? id;
  @override
  final String? creationDate;
  @override
  final String fromId;
  @override
  final String fromRole;
  @override
  final String toId;
  @override
  final String businessId;
  @override
  final String toRole;
  @override
  final bool? accepted;

  @override
  String toString() {
    return 'BusinessInvitationResponse(id: $id, creationDate: $creationDate, fromId: $fromId, fromRole: $fromRole, toId: $toId, businessId: $businessId, toRole: $toRole, accepted: $accepted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BusinessInvitationResponse &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.creationDate, creationDate) &&
            const DeepCollectionEquality().equals(other.fromId, fromId) &&
            const DeepCollectionEquality().equals(other.fromRole, fromRole) &&
            const DeepCollectionEquality().equals(other.toId, toId) &&
            const DeepCollectionEquality()
                .equals(other.businessId, businessId) &&
            const DeepCollectionEquality().equals(other.toRole, toRole) &&
            const DeepCollectionEquality().equals(other.accepted, accepted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(creationDate),
      const DeepCollectionEquality().hash(fromId),
      const DeepCollectionEquality().hash(fromRole),
      const DeepCollectionEquality().hash(toId),
      const DeepCollectionEquality().hash(businessId),
      const DeepCollectionEquality().hash(toRole),
      const DeepCollectionEquality().hash(accepted));

  @JsonKey(ignore: true)
  @override
  _$$_BusinessInvitationResponseCopyWith<_$_BusinessInvitationResponse>
      get copyWith => __$$_BusinessInvitationResponseCopyWithImpl<
          _$_BusinessInvitationResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BusinessInvitationResponseToJson(
      this,
    );
  }
}

abstract class _BusinessInvitationResponse
    implements BusinessInvitationResponse {
  const factory _BusinessInvitationResponse(
      {final String? id,
      final String? creationDate,
      required final String fromId,
      required final String fromRole,
      required final String toId,
      required final String businessId,
      required final String toRole,
      final bool? accepted}) = _$_BusinessInvitationResponse;

  factory _BusinessInvitationResponse.fromJson(Map<String, dynamic> json) =
      _$_BusinessInvitationResponse.fromJson;

  @override
  String? get id;
  @override
  String? get creationDate;
  @override
  String get fromId;
  @override
  String get fromRole;
  @override
  String get toId;
  @override
  String get businessId;
  @override
  String get toRole;
  @override
  bool? get accepted;
  @override
  @JsonKey(ignore: true)
  _$$_BusinessInvitationResponseCopyWith<_$_BusinessInvitationResponse>
      get copyWith => throw _privateConstructorUsedError;
}
