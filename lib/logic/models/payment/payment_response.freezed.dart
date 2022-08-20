// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'payment_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentResponse _$PaymentResponseFromJson(Map<String, dynamic> json) {
  return _PaymentResponse.fromJson(json);
}

/// @nodoc
mixin _$PaymentResponse {
  String? get businessId => throw _privateConstructorUsedError;
  String? get orderId => throw _privateConstructorUsedError;
  String? get paymentMethod => throw _privateConstructorUsedError;
  String? get bankCurrency => throw _privateConstructorUsedError;
  double? get total => throw _privateConstructorUsedError;
  String? get executorId => throw _privateConstructorUsedError;
  Map<dynamic, String>? get additionalData =>
      throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentResponseCopyWith<PaymentResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentResponseCopyWith<$Res> {
  factory $PaymentResponseCopyWith(
          PaymentResponse value, $Res Function(PaymentResponse) then) =
      _$PaymentResponseCopyWithImpl<$Res>;
  $Res call(
      {String? businessId,
      String? orderId,
      String? paymentMethod,
      String? bankCurrency,
      double? total,
      String? executorId,
      Map<dynamic, String>? additionalData,
      String? id});
}

/// @nodoc
class _$PaymentResponseCopyWithImpl<$Res>
    implements $PaymentResponseCopyWith<$Res> {
  _$PaymentResponseCopyWithImpl(this._value, this._then);

  final PaymentResponse _value;
  // ignore: unused_field
  final $Res Function(PaymentResponse) _then;

  @override
  $Res call({
    Object? businessId = freezed,
    Object? orderId = freezed,
    Object? paymentMethod = freezed,
    Object? bankCurrency = freezed,
    Object? total = freezed,
    Object? executorId = freezed,
    Object? additionalData = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      businessId: businessId == freezed
          ? _value.businessId
          : businessId // ignore: cast_nullable_to_non_nullable
              as String?,
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethod: paymentMethod == freezed
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      bankCurrency: bankCurrency == freezed
          ? _value.bankCurrency
          : bankCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double?,
      executorId: executorId == freezed
          ? _value.executorId
          : executorId // ignore: cast_nullable_to_non_nullable
              as String?,
      additionalData: additionalData == freezed
          ? _value.additionalData
          : additionalData // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, String>?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_PaymentResponseCopyWith<$Res>
    implements $PaymentResponseCopyWith<$Res> {
  factory _$$_PaymentResponseCopyWith(
          _$_PaymentResponse value, $Res Function(_$_PaymentResponse) then) =
      __$$_PaymentResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? businessId,
      String? orderId,
      String? paymentMethod,
      String? bankCurrency,
      double? total,
      String? executorId,
      Map<dynamic, String>? additionalData,
      String? id});
}

/// @nodoc
class __$$_PaymentResponseCopyWithImpl<$Res>
    extends _$PaymentResponseCopyWithImpl<$Res>
    implements _$$_PaymentResponseCopyWith<$Res> {
  __$$_PaymentResponseCopyWithImpl(
      _$_PaymentResponse _value, $Res Function(_$_PaymentResponse) _then)
      : super(_value, (v) => _then(v as _$_PaymentResponse));

  @override
  _$_PaymentResponse get _value => super._value as _$_PaymentResponse;

  @override
  $Res call({
    Object? businessId = freezed,
    Object? orderId = freezed,
    Object? paymentMethod = freezed,
    Object? bankCurrency = freezed,
    Object? total = freezed,
    Object? executorId = freezed,
    Object? additionalData = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_PaymentResponse(
      businessId: businessId == freezed
          ? _value.businessId
          : businessId // ignore: cast_nullable_to_non_nullable
              as String?,
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethod: paymentMethod == freezed
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      bankCurrency: bankCurrency == freezed
          ? _value.bankCurrency
          : bankCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double?,
      executorId: executorId == freezed
          ? _value.executorId
          : executorId // ignore: cast_nullable_to_non_nullable
              as String?,
      additionalData: additionalData == freezed
          ? _value._additionalData
          : additionalData // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, String>?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentResponse implements _PaymentResponse {
  const _$_PaymentResponse(
      {this.businessId,
      this.orderId,
      this.paymentMethod,
      this.bankCurrency,
      this.total,
      this.executorId,
      final Map<dynamic, String>? additionalData,
      this.id})
      : _additionalData = additionalData;

  factory _$_PaymentResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentResponseFromJson(json);

  @override
  final String? businessId;
  @override
  final String? orderId;
  @override
  final String? paymentMethod;
  @override
  final String? bankCurrency;
  @override
  final double? total;
  @override
  final String? executorId;
  final Map<dynamic, String>? _additionalData;
  @override
  Map<dynamic, String>? get additionalData {
    final value = _additionalData;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? id;

  @override
  String toString() {
    return 'PaymentResponse(businessId: $businessId, orderId: $orderId, paymentMethod: $paymentMethod, bankCurrency: $bankCurrency, total: $total, executorId: $executorId, additionalData: $additionalData, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentResponse &&
            const DeepCollectionEquality()
                .equals(other.businessId, businessId) &&
            const DeepCollectionEquality().equals(other.orderId, orderId) &&
            const DeepCollectionEquality()
                .equals(other.paymentMethod, paymentMethod) &&
            const DeepCollectionEquality()
                .equals(other.bankCurrency, bankCurrency) &&
            const DeepCollectionEquality().equals(other.total, total) &&
            const DeepCollectionEquality()
                .equals(other.executorId, executorId) &&
            const DeepCollectionEquality()
                .equals(other._additionalData, _additionalData) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(businessId),
      const DeepCollectionEquality().hash(orderId),
      const DeepCollectionEquality().hash(paymentMethod),
      const DeepCollectionEquality().hash(bankCurrency),
      const DeepCollectionEquality().hash(total),
      const DeepCollectionEquality().hash(executorId),
      const DeepCollectionEquality().hash(_additionalData),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$_PaymentResponseCopyWith<_$_PaymentResponse> get copyWith =>
      __$$_PaymentResponseCopyWithImpl<_$_PaymentResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentResponseToJson(
      this,
    );
  }
}

abstract class _PaymentResponse implements PaymentResponse {
  const factory _PaymentResponse(
      {final String? businessId,
      final String? orderId,
      final String? paymentMethod,
      final String? bankCurrency,
      final double? total,
      final String? executorId,
      final Map<dynamic, String>? additionalData,
      final String? id}) = _$_PaymentResponse;

  factory _PaymentResponse.fromJson(Map<String, dynamic> json) =
      _$_PaymentResponse.fromJson;

  @override
  String? get businessId;
  @override
  String? get orderId;
  @override
  String? get paymentMethod;
  @override
  String? get bankCurrency;
  @override
  double? get total;
  @override
  String? get executorId;
  @override
  Map<dynamic, String>? get additionalData;
  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentResponseCopyWith<_$_PaymentResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
