// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'restore_pass_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RestorePassPayload _$RestorePassPayloadFromJson(Map<String, dynamic> json) {
  return _RestorePassPayload.fromJson(json);
}

/// @nodoc
mixin _$RestorePassPayload {
  String get identifierType => throw _privateConstructorUsedError;
  String get identifier => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RestorePassPayloadCopyWith<RestorePassPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestorePassPayloadCopyWith<$Res> {
  factory $RestorePassPayloadCopyWith(
          RestorePassPayload value, $Res Function(RestorePassPayload) then) =
      _$RestorePassPayloadCopyWithImpl<$Res>;
  $Res call({String identifierType, String identifier});
}

/// @nodoc
class _$RestorePassPayloadCopyWithImpl<$Res>
    implements $RestorePassPayloadCopyWith<$Res> {
  _$RestorePassPayloadCopyWithImpl(this._value, this._then);

  final RestorePassPayload _value;
  // ignore: unused_field
  final $Res Function(RestorePassPayload) _then;

  @override
  $Res call({
    Object? identifierType = freezed,
    Object? identifier = freezed,
  }) {
    return _then(_value.copyWith(
      identifierType: identifierType == freezed
          ? _value.identifierType
          : identifierType // ignore: cast_nullable_to_non_nullable
              as String,
      identifier: identifier == freezed
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_RestorePassPayloadCopyWith<$Res>
    implements $RestorePassPayloadCopyWith<$Res> {
  factory _$$_RestorePassPayloadCopyWith(_$_RestorePassPayload value,
          $Res Function(_$_RestorePassPayload) then) =
      __$$_RestorePassPayloadCopyWithImpl<$Res>;
  @override
  $Res call({String identifierType, String identifier});
}

/// @nodoc
class __$$_RestorePassPayloadCopyWithImpl<$Res>
    extends _$RestorePassPayloadCopyWithImpl<$Res>
    implements _$$_RestorePassPayloadCopyWith<$Res> {
  __$$_RestorePassPayloadCopyWithImpl(
      _$_RestorePassPayload _value, $Res Function(_$_RestorePassPayload) _then)
      : super(_value, (v) => _then(v as _$_RestorePassPayload));

  @override
  _$_RestorePassPayload get _value => super._value as _$_RestorePassPayload;

  @override
  $Res call({
    Object? identifierType = freezed,
    Object? identifier = freezed,
  }) {
    return _then(_$_RestorePassPayload(
      identifierType: identifierType == freezed
          ? _value.identifierType
          : identifierType // ignore: cast_nullable_to_non_nullable
              as String,
      identifier: identifier == freezed
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RestorePassPayload implements _RestorePassPayload {
  const _$_RestorePassPayload(
      {required this.identifierType, required this.identifier});

  factory _$_RestorePassPayload.fromJson(Map<String, dynamic> json) =>
      _$$_RestorePassPayloadFromJson(json);

  @override
  final String identifierType;
  @override
  final String identifier;

  @override
  String toString() {
    return 'RestorePassPayload(identifierType: $identifierType, identifier: $identifier)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RestorePassPayload &&
            const DeepCollectionEquality()
                .equals(other.identifierType, identifierType) &&
            const DeepCollectionEquality()
                .equals(other.identifier, identifier));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(identifierType),
      const DeepCollectionEquality().hash(identifier));

  @JsonKey(ignore: true)
  @override
  _$$_RestorePassPayloadCopyWith<_$_RestorePassPayload> get copyWith =>
      __$$_RestorePassPayloadCopyWithImpl<_$_RestorePassPayload>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RestorePassPayloadToJson(
      this,
    );
  }
}

abstract class _RestorePassPayload implements RestorePassPayload {
  const factory _RestorePassPayload(
      {required final String identifierType,
      required final String identifier}) = _$_RestorePassPayload;

  factory _RestorePassPayload.fromJson(Map<String, dynamic> json) =
      _$_RestorePassPayload.fromJson;

  @override
  String get identifierType;
  @override
  String get identifier;
  @override
  @JsonKey(ignore: true)
  _$$_RestorePassPayloadCopyWith<_$_RestorePassPayload> get copyWith =>
      throw _privateConstructorUsedError;
}
