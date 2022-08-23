// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'basket_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BasketResponse _$BasketResponseFromJson(Map<String, dynamic> json) {
  return _BasketResponse.fromJson(json);
}

/// @nodoc
mixin _$BasketResponse {
  String? get id => throw _privateConstructorUsedError;
  String? get creationDate => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  List<ItemImpl> get items => throw _privateConstructorUsedError;
  Map<dynamic, int> get amount => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  double get purchasePrice => throw _privateConstructorUsedError;
  int get discountPercents => throw _privateConstructorUsedError;
  double get oldTotal => throw _privateConstructorUsedError;
  bool? get empty => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BasketResponseCopyWith<BasketResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasketResponseCopyWith<$Res> {
  factory $BasketResponseCopyWith(
          BasketResponse value, $Res Function(BasketResponse) then) =
      _$BasketResponseCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? creationDate,
      String userId,
      List<ItemImpl> items,
      Map<dynamic, int> amount,
      double? price,
      double purchasePrice,
      int discountPercents,
      double oldTotal,
      bool? empty});
}

/// @nodoc
class _$BasketResponseCopyWithImpl<$Res>
    implements $BasketResponseCopyWith<$Res> {
  _$BasketResponseCopyWithImpl(this._value, this._then);

  final BasketResponse _value;
  // ignore: unused_field
  final $Res Function(BasketResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? creationDate = freezed,
    Object? userId = freezed,
    Object? items = freezed,
    Object? amount = freezed,
    Object? price = freezed,
    Object? purchasePrice = freezed,
    Object? discountPercents = freezed,
    Object? oldTotal = freezed,
    Object? empty = freezed,
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
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemImpl>,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, int>,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      purchasePrice: purchasePrice == freezed
          ? _value.purchasePrice
          : purchasePrice // ignore: cast_nullable_to_non_nullable
              as double,
      discountPercents: discountPercents == freezed
          ? _value.discountPercents
          : discountPercents // ignore: cast_nullable_to_non_nullable
              as int,
      oldTotal: oldTotal == freezed
          ? _value.oldTotal
          : oldTotal // ignore: cast_nullable_to_non_nullable
              as double,
      empty: empty == freezed
          ? _value.empty
          : empty // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$$_BasketResponseCopyWith<$Res>
    implements $BasketResponseCopyWith<$Res> {
  factory _$$_BasketResponseCopyWith(
          _$_BasketResponse value, $Res Function(_$_BasketResponse) then) =
      __$$_BasketResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? creationDate,
      String userId,
      List<ItemImpl> items,
      Map<dynamic, int> amount,
      double? price,
      double purchasePrice,
      int discountPercents,
      double oldTotal,
      bool? empty});
}

/// @nodoc
class __$$_BasketResponseCopyWithImpl<$Res>
    extends _$BasketResponseCopyWithImpl<$Res>
    implements _$$_BasketResponseCopyWith<$Res> {
  __$$_BasketResponseCopyWithImpl(
      _$_BasketResponse _value, $Res Function(_$_BasketResponse) _then)
      : super(_value, (v) => _then(v as _$_BasketResponse));

  @override
  _$_BasketResponse get _value => super._value as _$_BasketResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? creationDate = freezed,
    Object? userId = freezed,
    Object? items = freezed,
    Object? amount = freezed,
    Object? price = freezed,
    Object? purchasePrice = freezed,
    Object? discountPercents = freezed,
    Object? oldTotal = freezed,
    Object? empty = freezed,
  }) {
    return _then(_$_BasketResponse(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      creationDate: creationDate == freezed
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      items: items == freezed
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemImpl>,
      amount: amount == freezed
          ? _value._amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, int>,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      purchasePrice: purchasePrice == freezed
          ? _value.purchasePrice
          : purchasePrice // ignore: cast_nullable_to_non_nullable
              as double,
      discountPercents: discountPercents == freezed
          ? _value.discountPercents
          : discountPercents // ignore: cast_nullable_to_non_nullable
              as int,
      oldTotal: oldTotal == freezed
          ? _value.oldTotal
          : oldTotal // ignore: cast_nullable_to_non_nullable
              as double,
      empty: empty == freezed
          ? _value.empty
          : empty // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BasketResponse implements _BasketResponse {
  const _$_BasketResponse(
      {this.id,
      this.creationDate,
      required this.userId,
      required final List<ItemImpl> items,
      required final Map<dynamic, int> amount,
      this.price,
      required this.purchasePrice,
      required this.discountPercents,
      required this.oldTotal,
      this.empty})
      : _items = items,
        _amount = amount;

  factory _$_BasketResponse.fromJson(Map<String, dynamic> json) =>
      _$$_BasketResponseFromJson(json);

  @override
  final String? id;
  @override
  final String? creationDate;
  @override
  final String userId;
  final List<ItemImpl> _items;
  @override
  List<ItemImpl> get items {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  final Map<dynamic, int> _amount;
  @override
  Map<dynamic, int> get amount {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_amount);
  }

  @override
  final double? price;
  @override
  final double purchasePrice;
  @override
  final int discountPercents;
  @override
  final double oldTotal;
  @override
  final bool? empty;

  @override
  String toString() {
    return 'BasketResponse(id: $id, creationDate: $creationDate, userId: $userId, items: $items, amount: $amount, price: $price, purchasePrice: $purchasePrice, discountPercents: $discountPercents, oldTotal: $oldTotal, empty: $empty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BasketResponse &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.creationDate, creationDate) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            const DeepCollectionEquality().equals(other._amount, _amount) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality()
                .equals(other.purchasePrice, purchasePrice) &&
            const DeepCollectionEquality()
                .equals(other.discountPercents, discountPercents) &&
            const DeepCollectionEquality().equals(other.oldTotal, oldTotal) &&
            const DeepCollectionEquality().equals(other.empty, empty));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(creationDate),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(_items),
      const DeepCollectionEquality().hash(_amount),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(purchasePrice),
      const DeepCollectionEquality().hash(discountPercents),
      const DeepCollectionEquality().hash(oldTotal),
      const DeepCollectionEquality().hash(empty));

  @JsonKey(ignore: true)
  @override
  _$$_BasketResponseCopyWith<_$_BasketResponse> get copyWith =>
      __$$_BasketResponseCopyWithImpl<_$_BasketResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BasketResponseToJson(
      this,
    );
  }
}

abstract class _BasketResponse implements BasketResponse {
  const factory _BasketResponse(
      {final String? id,
      final String? creationDate,
      required final String userId,
      required final List<ItemImpl> items,
      required final Map<dynamic, int> amount,
      final double? price,
      required final double purchasePrice,
      required final int discountPercents,
      required final double oldTotal,
      final bool? empty}) = _$_BasketResponse;

  factory _BasketResponse.fromJson(Map<String, dynamic> json) =
      _$_BasketResponse.fromJson;

  @override
  String? get id;
  @override
  String? get creationDate;
  @override
  String get userId;
  @override
  List<ItemImpl> get items;
  @override
  Map<dynamic, int> get amount;
  @override
  double? get price;
  @override
  double get purchasePrice;
  @override
  int get discountPercents;
  @override
  double get oldTotal;
  @override
  bool? get empty;
  @override
  @JsonKey(ignore: true)
  _$$_BasketResponseCopyWith<_$_BasketResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
