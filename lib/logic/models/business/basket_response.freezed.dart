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
  PageItemBasketResponse? get items => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  double? get purchasePrice => throw _privateConstructorUsedError;
  int? get discountPercents => throw _privateConstructorUsedError;

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
      PageItemBasketResponse? items,
      double? price,
      double? purchasePrice,
      int? discountPercents});

  $PageItemBasketResponseCopyWith<$Res>? get items;
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
    Object? items = freezed,
    Object? price = freezed,
    Object? purchasePrice = freezed,
    Object? discountPercents = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as PageItemBasketResponse?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
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

  @override
  $PageItemBasketResponseCopyWith<$Res>? get items {
    if (_value.items == null) {
      return null;
    }

    return $PageItemBasketResponseCopyWith<$Res>(_value.items!, (value) {
      return _then(_value.copyWith(items: value));
    });
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
      PageItemBasketResponse? items,
      double? price,
      double? purchasePrice,
      int? discountPercents});

  @override
  $PageItemBasketResponseCopyWith<$Res>? get items;
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
    Object? items = freezed,
    Object? price = freezed,
    Object? purchasePrice = freezed,
    Object? discountPercents = freezed,
  }) {
    return _then(_$_BasketResponse(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as PageItemBasketResponse?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
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
class _$_BasketResponse implements _BasketResponse {
  const _$_BasketResponse(
      {this.id,
      this.items,
      this.price,
      this.purchasePrice,
      this.discountPercents});

  factory _$_BasketResponse.fromJson(Map<String, dynamic> json) =>
      _$$_BasketResponseFromJson(json);

  @override
  final String? id;
  @override
  final PageItemBasketResponse? items;
  @override
  final double? price;
  @override
  final double? purchasePrice;
  @override
  final int? discountPercents;

  @override
  String toString() {
    return 'BasketResponse(id: $id, items: $items, price: $price, purchasePrice: $purchasePrice, discountPercents: $discountPercents)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BasketResponse &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.items, items) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality()
                .equals(other.purchasePrice, purchasePrice) &&
            const DeepCollectionEquality()
                .equals(other.discountPercents, discountPercents));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(items),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(purchasePrice),
      const DeepCollectionEquality().hash(discountPercents));

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
      final PageItemBasketResponse? items,
      final double? price,
      final double? purchasePrice,
      final int? discountPercents}) = _$_BasketResponse;

  factory _BasketResponse.fromJson(Map<String, dynamic> json) =
      _$_BasketResponse.fromJson;

  @override
  String? get id;
  @override
  PageItemBasketResponse? get items;
  @override
  double? get price;
  @override
  double? get purchasePrice;
  @override
  int? get discountPercents;
  @override
  @JsonKey(ignore: true)
  _$$_BasketResponseCopyWith<_$_BasketResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
