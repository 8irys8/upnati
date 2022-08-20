// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'confirm_restore_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ConfirmRestorePayload _$ConfirmRestorePayloadFromJson(
    Map<String, dynamic> json) {
  return _ConfirmRestorePayload.fromJson(json);
}

/// @nodoc
mixin _$ConfirmRestorePayload {
  String get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConfirmRestorePayloadCopyWith<ConfirmRestorePayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmRestorePayloadCopyWith<$Res> {
  factory $ConfirmRestorePayloadCopyWith(ConfirmRestorePayload value,
          $Res Function(ConfirmRestorePayload) then) =
      _$ConfirmRestorePayloadCopyWithImpl<$Res>;
  $Res call({String code});
}

/// @nodoc
class _$ConfirmRestorePayloadCopyWithImpl<$Res>
    implements $ConfirmRestorePayloadCopyWith<$Res> {
  _$ConfirmRestorePayloadCopyWithImpl(this._value, this._then);

  final ConfirmRestorePayload _value;
  // ignore: unused_field
  final $Res Function(ConfirmRestorePayload) _then;

  @override
  $Res call({
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ConfirmRestorePayloadCopyWith<$Res>
    implements $ConfirmRestorePayloadCopyWith<$Res> {
  factory _$$_ConfirmRestorePayloadCopyWith(_$_ConfirmRestorePayload value,
          $Res Function(_$_ConfirmRestorePayload) then) =
      __$$_ConfirmRestorePayloadCopyWithImpl<$Res>;
  @override
  $Res call({String code});
}

/// @nodoc
class __$$_ConfirmRestorePayloadCopyWithImpl<$Res>
    extends _$ConfirmRestorePayloadCopyWithImpl<$Res>
    implements _$$_ConfirmRestorePayloadCopyWith<$Res> {
  __$$_ConfirmRestorePayloadCopyWithImpl(_$_ConfirmRestorePayload _value,
      $Res Function(_$_ConfirmRestorePayload) _then)
      : super(_value, (v) => _then(v as _$_ConfirmRestorePayload));

  @override
  _$_ConfirmRestorePayload get _value =>
      super._value as _$_ConfirmRestorePayload;

  @override
  $Res call({
    Object? code = freezed,
  }) {
    return _then(_$_ConfirmRestorePayload(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ConfirmRestorePayload implements _ConfirmRestorePayload {
  const _$_ConfirmRestorePayload({required this.code});

  factory _$_ConfirmRestorePayload.fromJson(Map<String, dynamic> json) =>
      _$$_ConfirmRestorePayloadFromJson(json);

  @override
  final String code;

  @override
  String toString() {
    return 'ConfirmRestorePayload(code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConfirmRestorePayload &&
            const DeepCollectionEquality().equals(other.code, code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(code));

  @JsonKey(ignore: true)
  @override
  _$$_ConfirmRestorePayloadCopyWith<_$_ConfirmRestorePayload> get copyWith =>
      __$$_ConfirmRestorePayloadCopyWithImpl<_$_ConfirmRestorePayload>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConfirmRestorePayloadToJson(
      this,
    );
  }
}

abstract class _ConfirmRestorePayload implements ConfirmRestorePayload {
  const factory _ConfirmRestorePayload({required final String code}) =
      _$_ConfirmRestorePayload;

  factory _ConfirmRestorePayload.fromJson(Map<String, dynamic> json) =
      _$_ConfirmRestorePayload.fromJson;

  @override
  String get code;
  @override
  @JsonKey(ignore: true)
  _$$_ConfirmRestorePayloadCopyWith<_$_ConfirmRestorePayload> get copyWith =>
      throw _privateConstructorUsedError;
}
