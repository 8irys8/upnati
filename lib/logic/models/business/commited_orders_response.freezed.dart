// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'commited_orders_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommitedOrdersResponse _$CommitedOrdersResponseFromJson(
    Map<String, dynamic> json) {
  return _CommitedOrdersResponse.fromJson(json);
}

/// @nodoc
mixin _$CommitedOrdersResponse {
  Map<dynamic, Order>? get orders => throw _privateConstructorUsedError;
  Map<dynamic, String>? get paymentLinks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommitedOrdersResponseCopyWith<CommitedOrdersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommitedOrdersResponseCopyWith<$Res> {
  factory $CommitedOrdersResponseCopyWith(CommitedOrdersResponse value,
          $Res Function(CommitedOrdersResponse) then) =
      _$CommitedOrdersResponseCopyWithImpl<$Res>;
  $Res call({Map<dynamic, Order>? orders, Map<dynamic, String>? paymentLinks});
}

/// @nodoc
class _$CommitedOrdersResponseCopyWithImpl<$Res>
    implements $CommitedOrdersResponseCopyWith<$Res> {
  _$CommitedOrdersResponseCopyWithImpl(this._value, this._then);

  final CommitedOrdersResponse _value;
  // ignore: unused_field
  final $Res Function(CommitedOrdersResponse) _then;

  @override
  $Res call({
    Object? orders = freezed,
    Object? paymentLinks = freezed,
  }) {
    return _then(_value.copyWith(
      orders: orders == freezed
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, Order>?,
      paymentLinks: paymentLinks == freezed
          ? _value.paymentLinks
          : paymentLinks // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, String>?,
    ));
  }
}

/// @nodoc
abstract class _$$_CommitedOrdersResponseCopyWith<$Res>
    implements $CommitedOrdersResponseCopyWith<$Res> {
  factory _$$_CommitedOrdersResponseCopyWith(_$_CommitedOrdersResponse value,
          $Res Function(_$_CommitedOrdersResponse) then) =
      __$$_CommitedOrdersResponseCopyWithImpl<$Res>;
  @override
  $Res call({Map<dynamic, Order>? orders, Map<dynamic, String>? paymentLinks});
}

/// @nodoc
class __$$_CommitedOrdersResponseCopyWithImpl<$Res>
    extends _$CommitedOrdersResponseCopyWithImpl<$Res>
    implements _$$_CommitedOrdersResponseCopyWith<$Res> {
  __$$_CommitedOrdersResponseCopyWithImpl(_$_CommitedOrdersResponse _value,
      $Res Function(_$_CommitedOrdersResponse) _then)
      : super(_value, (v) => _then(v as _$_CommitedOrdersResponse));

  @override
  _$_CommitedOrdersResponse get _value =>
      super._value as _$_CommitedOrdersResponse;

  @override
  $Res call({
    Object? orders = freezed,
    Object? paymentLinks = freezed,
  }) {
    return _then(_$_CommitedOrdersResponse(
      orders: orders == freezed
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, Order>?,
      paymentLinks: paymentLinks == freezed
          ? _value._paymentLinks
          : paymentLinks // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CommitedOrdersResponse implements _CommitedOrdersResponse {
  const _$_CommitedOrdersResponse(
      {final Map<dynamic, Order>? orders,
      final Map<dynamic, String>? paymentLinks})
      : _orders = orders,
        _paymentLinks = paymentLinks;

  factory _$_CommitedOrdersResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CommitedOrdersResponseFromJson(json);

  final Map<dynamic, Order>? _orders;
  @override
  Map<dynamic, Order>? get orders {
    final value = _orders;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<dynamic, String>? _paymentLinks;
  @override
  Map<dynamic, String>? get paymentLinks {
    final value = _paymentLinks;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'CommitedOrdersResponse(orders: $orders, paymentLinks: $paymentLinks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommitedOrdersResponse &&
            const DeepCollectionEquality().equals(other._orders, _orders) &&
            const DeepCollectionEquality()
                .equals(other._paymentLinks, _paymentLinks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_orders),
      const DeepCollectionEquality().hash(_paymentLinks));

  @JsonKey(ignore: true)
  @override
  _$$_CommitedOrdersResponseCopyWith<_$_CommitedOrdersResponse> get copyWith =>
      __$$_CommitedOrdersResponseCopyWithImpl<_$_CommitedOrdersResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommitedOrdersResponseToJson(
      this,
    );
  }
}

abstract class _CommitedOrdersResponse implements CommitedOrdersResponse {
  const factory _CommitedOrdersResponse(
      {final Map<dynamic, Order>? orders,
      final Map<dynamic, String>? paymentLinks}) = _$_CommitedOrdersResponse;

  factory _CommitedOrdersResponse.fromJson(Map<String, dynamic> json) =
      _$_CommitedOrdersResponse.fromJson;

  @override
  Map<dynamic, Order>? get orders;
  @override
  Map<dynamic, String>? get paymentLinks;
  @override
  @JsonKey(ignore: true)
  _$$_CommitedOrdersResponseCopyWith<_$_CommitedOrdersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
