// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bank_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BankResponse _$BankResponseFromJson(Map<String, dynamic> json) {
  return _BankResponse.fromJson(json);
}

/// @nodoc
mixin _$BankResponse {
  String? get id => throw _privateConstructorUsedError;
  String? get creationDate => throw _privateConstructorUsedError;
  String get entityId => throw _privateConstructorUsedError;
  String get bankCurrency => throw _privateConstructorUsedError;
  double get balance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BankResponseCopyWith<BankResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankResponseCopyWith<$Res> {
  factory $BankResponseCopyWith(
          BankResponse value, $Res Function(BankResponse) then) =
      _$BankResponseCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? creationDate,
      String entityId,
      String bankCurrency,
      double balance});
}

/// @nodoc
class _$BankResponseCopyWithImpl<$Res> implements $BankResponseCopyWith<$Res> {
  _$BankResponseCopyWithImpl(this._value, this._then);

  final BankResponse _value;
  // ignore: unused_field
  final $Res Function(BankResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? creationDate = freezed,
    Object? entityId = freezed,
    Object? bankCurrency = freezed,
    Object? balance = freezed,
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
      entityId: entityId == freezed
          ? _value.entityId
          : entityId // ignore: cast_nullable_to_non_nullable
              as String,
      bankCurrency: bankCurrency == freezed
          ? _value.bankCurrency
          : bankCurrency // ignore: cast_nullable_to_non_nullable
              as String,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_BankResponseCopyWith<$Res>
    implements $BankResponseCopyWith<$Res> {
  factory _$$_BankResponseCopyWith(
          _$_BankResponse value, $Res Function(_$_BankResponse) then) =
      __$$_BankResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? creationDate,
      String entityId,
      String bankCurrency,
      double balance});
}

/// @nodoc
class __$$_BankResponseCopyWithImpl<$Res>
    extends _$BankResponseCopyWithImpl<$Res>
    implements _$$_BankResponseCopyWith<$Res> {
  __$$_BankResponseCopyWithImpl(
      _$_BankResponse _value, $Res Function(_$_BankResponse) _then)
      : super(_value, (v) => _then(v as _$_BankResponse));

  @override
  _$_BankResponse get _value => super._value as _$_BankResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? creationDate = freezed,
    Object? entityId = freezed,
    Object? bankCurrency = freezed,
    Object? balance = freezed,
  }) {
    return _then(_$_BankResponse(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      creationDate: creationDate == freezed
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as String?,
      entityId: entityId == freezed
          ? _value.entityId
          : entityId // ignore: cast_nullable_to_non_nullable
              as String,
      bankCurrency: bankCurrency == freezed
          ? _value.bankCurrency
          : bankCurrency // ignore: cast_nullable_to_non_nullable
              as String,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BankResponse implements _BankResponse {
  const _$_BankResponse(
      {this.id,
      this.creationDate,
      required this.entityId,
      required this.bankCurrency,
      required this.balance});

  factory _$_BankResponse.fromJson(Map<String, dynamic> json) =>
      _$$_BankResponseFromJson(json);

  @override
  final String? id;
  @override
  final String? creationDate;
  @override
  final String entityId;
  @override
  final String bankCurrency;
  @override
  final double balance;

  @override
  String toString() {
    return 'BankResponse(id: $id, creationDate: $creationDate, entityId: $entityId, bankCurrency: $bankCurrency, balance: $balance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BankResponse &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.creationDate, creationDate) &&
            const DeepCollectionEquality().equals(other.entityId, entityId) &&
            const DeepCollectionEquality()
                .equals(other.bankCurrency, bankCurrency) &&
            const DeepCollectionEquality().equals(other.balance, balance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(creationDate),
      const DeepCollectionEquality().hash(entityId),
      const DeepCollectionEquality().hash(bankCurrency),
      const DeepCollectionEquality().hash(balance));

  @JsonKey(ignore: true)
  @override
  _$$_BankResponseCopyWith<_$_BankResponse> get copyWith =>
      __$$_BankResponseCopyWithImpl<_$_BankResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BankResponseToJson(
      this,
    );
  }
}

abstract class _BankResponse implements BankResponse {
  const factory _BankResponse(
      {final String? id,
      final String? creationDate,
      required final String entityId,
      required final String bankCurrency,
      required final double balance}) = _$_BankResponse;

  factory _BankResponse.fromJson(Map<String, dynamic> json) =
      _$_BankResponse.fromJson;

  @override
  String? get id;
  @override
  String? get creationDate;
  @override
  String get entityId;
  @override
  String get bankCurrency;
  @override
  double get balance;
  @override
  @JsonKey(ignore: true)
  _$$_BankResponseCopyWith<_$_BankResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
