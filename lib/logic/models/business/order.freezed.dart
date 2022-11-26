// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Order _$OrderFromJson(Map<String, dynamic> json) {
  return _Order.fromJson(json);
}

/// @nodoc
mixin _$Order {
  String? get businessId => throw _privateConstructorUsedError;
  String? get businessName => throw _privateConstructorUsedError;
  List<ItemResponse>? get items => throw _privateConstructorUsedError;
  double? get oldTotal => throw _privateConstructorUsedError;
  double? get purchasePrice => throw _privateConstructorUsedError;
  int? get discountPercents => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderCopyWith<Order> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCopyWith<$Res> {
  factory $OrderCopyWith(Order value, $Res Function(Order) then) =
      _$OrderCopyWithImpl<$Res>;
  $Res call(
      {String? businessId,
      String? businessName,
      List<ItemResponse>? items,
      double? oldTotal,
      double? purchasePrice,
      int? discountPercents});
}

/// @nodoc
class _$OrderCopyWithImpl<$Res> implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._value, this._then);

  final Order _value;
  // ignore: unused_field
  final $Res Function(Order) _then;

  @override
  $Res call({
    Object? businessId = freezed,
    Object? businessName = freezed,
    Object? items = freezed,
    Object? oldTotal = freezed,
    Object? purchasePrice = freezed,
    Object? discountPercents = freezed,
  }) {
    return _then(_value.copyWith(
      businessId: businessId == freezed
          ? _value.businessId
          : businessId // ignore: cast_nullable_to_non_nullable
              as String?,
      businessName: businessName == freezed
          ? _value.businessName
          : businessName // ignore: cast_nullable_to_non_nullable
              as String?,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemResponse>?,
      oldTotal: oldTotal == freezed
          ? _value.oldTotal
          : oldTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      purchasePrice: purchasePrice == freezed
          ? _value.purchasePrice
          : purchasePrice // ignore: cast_nullable_to_non_nullable
              as double?,
      discountPercents: discountPercents == freezed
          ? _value.discountPercents
          : discountPercents // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_OrderCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$$_OrderCopyWith(_$_Order value, $Res Function(_$_Order) then) =
      __$$_OrderCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? businessId,
      String? businessName,
      List<ItemResponse>? items,
      double? oldTotal,
      double? purchasePrice,
      int? discountPercents});
}

/// @nodoc
class __$$_OrderCopyWithImpl<$Res> extends _$OrderCopyWithImpl<$Res>
    implements _$$_OrderCopyWith<$Res> {
  __$$_OrderCopyWithImpl(_$_Order _value, $Res Function(_$_Order) _then)
      : super(_value, (v) => _then(v as _$_Order));

  @override
  _$_Order get _value => super._value as _$_Order;

  @override
  $Res call({
    Object? businessId = freezed,
    Object? businessName = freezed,
    Object? items = freezed,
    Object? oldTotal = freezed,
    Object? purchasePrice = freezed,
    Object? discountPercents = freezed,
  }) {
    return _then(_$_Order(
      businessId: businessId == freezed
          ? _value.businessId
          : businessId // ignore: cast_nullable_to_non_nullable
              as String?,
      businessName: businessName == freezed
          ? _value.businessName
          : businessName // ignore: cast_nullable_to_non_nullable
              as String?,
      items: items == freezed
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemResponse>?,
      oldTotal: oldTotal == freezed
          ? _value.oldTotal
          : oldTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      purchasePrice: purchasePrice == freezed
          ? _value.purchasePrice
          : purchasePrice // ignore: cast_nullable_to_non_nullable
              as double?,
      discountPercents: discountPercents == freezed
          ? _value.discountPercents
          : discountPercents // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Order implements _Order {
  const _$_Order(
      {this.businessId,
      this.businessName,
      final List<ItemResponse>? items,
      this.oldTotal,
      this.purchasePrice,
      this.discountPercents})
      : _items = items;

  factory _$_Order.fromJson(Map<String, dynamic> json) =>
      _$$_OrderFromJson(json);

  @override
  final String? businessId;
  @override
  final String? businessName;
  final List<ItemResponse>? _items;
  @override
  List<ItemResponse>? get items {
    final value = _items;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final double? oldTotal;
  @override
  final double? purchasePrice;
  @override
  final int? discountPercents;

  @override
  String toString() {
    return 'Order(businessId: $businessId, businessName: $businessName, items: $items, oldTotal: $oldTotal, purchasePrice: $purchasePrice, discountPercents: $discountPercents)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Order &&
            const DeepCollectionEquality()
                .equals(other.businessId, businessId) &&
            const DeepCollectionEquality()
                .equals(other.businessName, businessName) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            const DeepCollectionEquality().equals(other.oldTotal, oldTotal) &&
            const DeepCollectionEquality()
                .equals(other.purchasePrice, purchasePrice) &&
            const DeepCollectionEquality()
                .equals(other.discountPercents, discountPercents));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(businessId),
      const DeepCollectionEquality().hash(businessName),
      const DeepCollectionEquality().hash(_items),
      const DeepCollectionEquality().hash(oldTotal),
      const DeepCollectionEquality().hash(purchasePrice),
      const DeepCollectionEquality().hash(discountPercents));

  @JsonKey(ignore: true)
  @override
  _$$_OrderCopyWith<_$_Order> get copyWith =>
      __$$_OrderCopyWithImpl<_$_Order>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderToJson(
      this,
    );
  }
}

abstract class _Order implements Order {
  const factory _Order(
      {final String? businessId,
      final String? businessName,
      final List<ItemResponse>? items,
      final double? oldTotal,
      final double? purchasePrice,
      final int? discountPercents}) = _$_Order;

  factory _Order.fromJson(Map<String, dynamic> json) = _$_Order.fromJson;

  @override
  String? get businessId;
  @override
  String? get businessName;
  @override
  List<ItemResponse>? get items;
  @override
  double? get oldTotal;
  @override
  double? get purchasePrice;
  @override
  int? get discountPercents;
  @override
  @JsonKey(ignore: true)
  _$$_OrderCopyWith<_$_Order> get copyWith =>
      throw _privateConstructorUsedError;
}
