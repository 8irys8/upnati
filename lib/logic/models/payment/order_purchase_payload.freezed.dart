// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order_purchase_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderPurchasePayload _$OrderPurchasePayloadFromJson(Map<String, dynamic> json) {
  return _OrderPurchasePayload.fromJson(json);
}

/// @nodoc
mixin _$OrderPurchasePayload {
  String get orderId => throw _privateConstructorUsedError;
  String get businessId => throw _privateConstructorUsedError;
  String get bankCurrency => throw _privateConstructorUsedError;
  String get paymentMethod => throw _privateConstructorUsedError;
  List<ItemInfoResponse> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderPurchasePayloadCopyWith<OrderPurchasePayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderPurchasePayloadCopyWith<$Res> {
  factory $OrderPurchasePayloadCopyWith(OrderPurchasePayload value,
          $Res Function(OrderPurchasePayload) then) =
      _$OrderPurchasePayloadCopyWithImpl<$Res>;
  $Res call(
      {String orderId,
      String businessId,
      String bankCurrency,
      String paymentMethod,
      List<ItemInfoResponse> items});
}

/// @nodoc
class _$OrderPurchasePayloadCopyWithImpl<$Res>
    implements $OrderPurchasePayloadCopyWith<$Res> {
  _$OrderPurchasePayloadCopyWithImpl(this._value, this._then);

  final OrderPurchasePayload _value;
  // ignore: unused_field
  final $Res Function(OrderPurchasePayload) _then;

  @override
  $Res call({
    Object? orderId = freezed,
    Object? businessId = freezed,
    Object? bankCurrency = freezed,
    Object? paymentMethod = freezed,
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      businessId: businessId == freezed
          ? _value.businessId
          : businessId // ignore: cast_nullable_to_non_nullable
              as String,
      bankCurrency: bankCurrency == freezed
          ? _value.bankCurrency
          : bankCurrency // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethod: paymentMethod == freezed
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemInfoResponse>,
    ));
  }
}

/// @nodoc
abstract class _$$_OrderPurchasePayloadCopyWith<$Res>
    implements $OrderPurchasePayloadCopyWith<$Res> {
  factory _$$_OrderPurchasePayloadCopyWith(_$_OrderPurchasePayload value,
          $Res Function(_$_OrderPurchasePayload) then) =
      __$$_OrderPurchasePayloadCopyWithImpl<$Res>;
  @override
  $Res call(
      {String orderId,
      String businessId,
      String bankCurrency,
      String paymentMethod,
      List<ItemInfoResponse> items});
}

/// @nodoc
class __$$_OrderPurchasePayloadCopyWithImpl<$Res>
    extends _$OrderPurchasePayloadCopyWithImpl<$Res>
    implements _$$_OrderPurchasePayloadCopyWith<$Res> {
  __$$_OrderPurchasePayloadCopyWithImpl(_$_OrderPurchasePayload _value,
      $Res Function(_$_OrderPurchasePayload) _then)
      : super(_value, (v) => _then(v as _$_OrderPurchasePayload));

  @override
  _$_OrderPurchasePayload get _value => super._value as _$_OrderPurchasePayload;

  @override
  $Res call({
    Object? orderId = freezed,
    Object? businessId = freezed,
    Object? bankCurrency = freezed,
    Object? paymentMethod = freezed,
    Object? items = freezed,
  }) {
    return _then(_$_OrderPurchasePayload(
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      businessId: businessId == freezed
          ? _value.businessId
          : businessId // ignore: cast_nullable_to_non_nullable
              as String,
      bankCurrency: bankCurrency == freezed
          ? _value.bankCurrency
          : bankCurrency // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethod: paymentMethod == freezed
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      items: items == freezed
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemInfoResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderPurchasePayload implements _OrderPurchasePayload {
  const _$_OrderPurchasePayload(
      {required this.orderId,
      required this.businessId,
      required this.bankCurrency,
      required this.paymentMethod,
      required final List<ItemInfoResponse> items})
      : _items = items;

  factory _$_OrderPurchasePayload.fromJson(Map<String, dynamic> json) =>
      _$$_OrderPurchasePayloadFromJson(json);

  @override
  final String orderId;
  @override
  final String businessId;
  @override
  final String bankCurrency;
  @override
  final String paymentMethod;
  final List<ItemInfoResponse> _items;
  @override
  List<ItemInfoResponse> get items {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'OrderPurchasePayload(orderId: $orderId, businessId: $businessId, bankCurrency: $bankCurrency, paymentMethod: $paymentMethod, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderPurchasePayload &&
            const DeepCollectionEquality().equals(other.orderId, orderId) &&
            const DeepCollectionEquality()
                .equals(other.businessId, businessId) &&
            const DeepCollectionEquality()
                .equals(other.bankCurrency, bankCurrency) &&
            const DeepCollectionEquality()
                .equals(other.paymentMethod, paymentMethod) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(orderId),
      const DeepCollectionEquality().hash(businessId),
      const DeepCollectionEquality().hash(bankCurrency),
      const DeepCollectionEquality().hash(paymentMethod),
      const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  _$$_OrderPurchasePayloadCopyWith<_$_OrderPurchasePayload> get copyWith =>
      __$$_OrderPurchasePayloadCopyWithImpl<_$_OrderPurchasePayload>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderPurchasePayloadToJson(
      this,
    );
  }
}

abstract class _OrderPurchasePayload implements OrderPurchasePayload {
  const factory _OrderPurchasePayload(
      {required final String orderId,
      required final String businessId,
      required final String bankCurrency,
      required final String paymentMethod,
      required final List<ItemInfoResponse> items}) = _$_OrderPurchasePayload;

  factory _OrderPurchasePayload.fromJson(Map<String, dynamic> json) =
      _$_OrderPurchasePayload.fromJson;

  @override
  String get orderId;
  @override
  String get businessId;
  @override
  String get bankCurrency;
  @override
  String get paymentMethod;
  @override
  List<ItemInfoResponse> get items;
  @override
  @JsonKey(ignore: true)
  _$$_OrderPurchasePayloadCopyWith<_$_OrderPurchasePayload> get copyWith =>
      throw _privateConstructorUsedError;
}
