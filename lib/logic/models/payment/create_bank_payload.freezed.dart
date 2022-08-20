// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_bank_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateBankPayload _$CreateBankPayloadFromJson(Map<String, dynamic> json) {
  return _CreateBankPayload.fromJson(json);
}

/// @nodoc
mixin _$CreateBankPayload {
  String get bankCurrency => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateBankPayloadCopyWith<CreateBankPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateBankPayloadCopyWith<$Res> {
  factory $CreateBankPayloadCopyWith(
          CreateBankPayload value, $Res Function(CreateBankPayload) then) =
      _$CreateBankPayloadCopyWithImpl<$Res>;
  $Res call({String bankCurrency});
}

/// @nodoc
class _$CreateBankPayloadCopyWithImpl<$Res>
    implements $CreateBankPayloadCopyWith<$Res> {
  _$CreateBankPayloadCopyWithImpl(this._value, this._then);

  final CreateBankPayload _value;
  // ignore: unused_field
  final $Res Function(CreateBankPayload) _then;

  @override
  $Res call({
    Object? bankCurrency = freezed,
  }) {
    return _then(_value.copyWith(
      bankCurrency: bankCurrency == freezed
          ? _value.bankCurrency
          : bankCurrency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_CreateBankPayloadCopyWith<$Res>
    implements $CreateBankPayloadCopyWith<$Res> {
  factory _$$_CreateBankPayloadCopyWith(_$_CreateBankPayload value,
          $Res Function(_$_CreateBankPayload) then) =
      __$$_CreateBankPayloadCopyWithImpl<$Res>;
  @override
  $Res call({String bankCurrency});
}

/// @nodoc
class __$$_CreateBankPayloadCopyWithImpl<$Res>
    extends _$CreateBankPayloadCopyWithImpl<$Res>
    implements _$$_CreateBankPayloadCopyWith<$Res> {
  __$$_CreateBankPayloadCopyWithImpl(
      _$_CreateBankPayload _value, $Res Function(_$_CreateBankPayload) _then)
      : super(_value, (v) => _then(v as _$_CreateBankPayload));

  @override
  _$_CreateBankPayload get _value => super._value as _$_CreateBankPayload;

  @override
  $Res call({
    Object? bankCurrency = freezed,
  }) {
    return _then(_$_CreateBankPayload(
      bankCurrency: bankCurrency == freezed
          ? _value.bankCurrency
          : bankCurrency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateBankPayload implements _CreateBankPayload {
  const _$_CreateBankPayload({required this.bankCurrency});

  factory _$_CreateBankPayload.fromJson(Map<String, dynamic> json) =>
      _$$_CreateBankPayloadFromJson(json);

  @override
  final String bankCurrency;

  @override
  String toString() {
    return 'CreateBankPayload(bankCurrency: $bankCurrency)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateBankPayload &&
            const DeepCollectionEquality()
                .equals(other.bankCurrency, bankCurrency));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(bankCurrency));

  @JsonKey(ignore: true)
  @override
  _$$_CreateBankPayloadCopyWith<_$_CreateBankPayload> get copyWith =>
      __$$_CreateBankPayloadCopyWithImpl<_$_CreateBankPayload>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateBankPayloadToJson(
      this,
    );
  }
}

abstract class _CreateBankPayload implements CreateBankPayload {
  const factory _CreateBankPayload({required final String bankCurrency}) =
      _$_CreateBankPayload;

  factory _CreateBankPayload.fromJson(Map<String, dynamic> json) =
      _$_CreateBankPayload.fromJson;

  @override
  String get bankCurrency;
  @override
  @JsonKey(ignore: true)
  _$$_CreateBankPayloadCopyWith<_$_CreateBankPayload> get copyWith =>
      throw _privateConstructorUsedError;
}
