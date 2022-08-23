// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order_preview_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderPreviewResponse _$OrderPreviewResponseFromJson(Map<String, dynamic> json) {
  return _OrderPreviewResponse.fromJson(json);
}

/// @nodoc
mixin _$OrderPreviewResponse {
  String get businessName => throw _privateConstructorUsedError;
  String get businessId => throw _privateConstructorUsedError;
  List<ItemPreview> get itemPreviews => throw _privateConstructorUsedError;
  double get oldTotal => throw _privateConstructorUsedError;
  double get purchasePrice => throw _privateConstructorUsedError;
  int get discountPercents => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderPreviewResponseCopyWith<OrderPreviewResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderPreviewResponseCopyWith<$Res> {
  factory $OrderPreviewResponseCopyWith(OrderPreviewResponse value,
          $Res Function(OrderPreviewResponse) then) =
      _$OrderPreviewResponseCopyWithImpl<$Res>;
  $Res call(
      {String businessName,
      String businessId,
      List<ItemPreview> itemPreviews,
      double oldTotal,
      double purchasePrice,
      int discountPercents});
}

/// @nodoc
class _$OrderPreviewResponseCopyWithImpl<$Res>
    implements $OrderPreviewResponseCopyWith<$Res> {
  _$OrderPreviewResponseCopyWithImpl(this._value, this._then);

  final OrderPreviewResponse _value;
  // ignore: unused_field
  final $Res Function(OrderPreviewResponse) _then;

  @override
  $Res call({
    Object? businessName = freezed,
    Object? businessId = freezed,
    Object? itemPreviews = freezed,
    Object? oldTotal = freezed,
    Object? purchasePrice = freezed,
    Object? discountPercents = freezed,
  }) {
    return _then(_value.copyWith(
      businessName: businessName == freezed
          ? _value.businessName
          : businessName // ignore: cast_nullable_to_non_nullable
              as String,
      businessId: businessId == freezed
          ? _value.businessId
          : businessId // ignore: cast_nullable_to_non_nullable
              as String,
      itemPreviews: itemPreviews == freezed
          ? _value.itemPreviews
          : itemPreviews // ignore: cast_nullable_to_non_nullable
              as List<ItemPreview>,
      oldTotal: oldTotal == freezed
          ? _value.oldTotal
          : oldTotal // ignore: cast_nullable_to_non_nullable
              as double,
      purchasePrice: purchasePrice == freezed
          ? _value.purchasePrice
          : purchasePrice // ignore: cast_nullable_to_non_nullable
              as double,
      discountPercents: discountPercents == freezed
          ? _value.discountPercents
          : discountPercents // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_OrderPreviewResponseCopyWith<$Res>
    implements $OrderPreviewResponseCopyWith<$Res> {
  factory _$$_OrderPreviewResponseCopyWith(_$_OrderPreviewResponse value,
          $Res Function(_$_OrderPreviewResponse) then) =
      __$$_OrderPreviewResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String businessName,
      String businessId,
      List<ItemPreview> itemPreviews,
      double oldTotal,
      double purchasePrice,
      int discountPercents});
}

/// @nodoc
class __$$_OrderPreviewResponseCopyWithImpl<$Res>
    extends _$OrderPreviewResponseCopyWithImpl<$Res>
    implements _$$_OrderPreviewResponseCopyWith<$Res> {
  __$$_OrderPreviewResponseCopyWithImpl(_$_OrderPreviewResponse _value,
      $Res Function(_$_OrderPreviewResponse) _then)
      : super(_value, (v) => _then(v as _$_OrderPreviewResponse));

  @override
  _$_OrderPreviewResponse get _value => super._value as _$_OrderPreviewResponse;

  @override
  $Res call({
    Object? businessName = freezed,
    Object? businessId = freezed,
    Object? itemPreviews = freezed,
    Object? oldTotal = freezed,
    Object? purchasePrice = freezed,
    Object? discountPercents = freezed,
  }) {
    return _then(_$_OrderPreviewResponse(
      businessName: businessName == freezed
          ? _value.businessName
          : businessName // ignore: cast_nullable_to_non_nullable
              as String,
      businessId: businessId == freezed
          ? _value.businessId
          : businessId // ignore: cast_nullable_to_non_nullable
              as String,
      itemPreviews: itemPreviews == freezed
          ? _value._itemPreviews
          : itemPreviews // ignore: cast_nullable_to_non_nullable
              as List<ItemPreview>,
      oldTotal: oldTotal == freezed
          ? _value.oldTotal
          : oldTotal // ignore: cast_nullable_to_non_nullable
              as double,
      purchasePrice: purchasePrice == freezed
          ? _value.purchasePrice
          : purchasePrice // ignore: cast_nullable_to_non_nullable
              as double,
      discountPercents: discountPercents == freezed
          ? _value.discountPercents
          : discountPercents // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderPreviewResponse implements _OrderPreviewResponse {
  const _$_OrderPreviewResponse(
      {required this.businessName,
      required this.businessId,
      required final List<ItemPreview> itemPreviews,
      required this.oldTotal,
      required this.purchasePrice,
      required this.discountPercents})
      : _itemPreviews = itemPreviews;

  factory _$_OrderPreviewResponse.fromJson(Map<String, dynamic> json) =>
      _$$_OrderPreviewResponseFromJson(json);

  @override
  final String businessName;
  @override
  final String businessId;
  final List<ItemPreview> _itemPreviews;
  @override
  List<ItemPreview> get itemPreviews {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_itemPreviews);
  }

  @override
  final double oldTotal;
  @override
  final double purchasePrice;
  @override
  final int discountPercents;

  @override
  String toString() {
    return 'OrderPreviewResponse(businessName: $businessName, businessId: $businessId, itemPreviews: $itemPreviews, oldTotal: $oldTotal, purchasePrice: $purchasePrice, discountPercents: $discountPercents)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderPreviewResponse &&
            const DeepCollectionEquality()
                .equals(other.businessName, businessName) &&
            const DeepCollectionEquality()
                .equals(other.businessId, businessId) &&
            const DeepCollectionEquality()
                .equals(other._itemPreviews, _itemPreviews) &&
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
      const DeepCollectionEquality().hash(businessName),
      const DeepCollectionEquality().hash(businessId),
      const DeepCollectionEquality().hash(_itemPreviews),
      const DeepCollectionEquality().hash(oldTotal),
      const DeepCollectionEquality().hash(purchasePrice),
      const DeepCollectionEquality().hash(discountPercents));

  @JsonKey(ignore: true)
  @override
  _$$_OrderPreviewResponseCopyWith<_$_OrderPreviewResponse> get copyWith =>
      __$$_OrderPreviewResponseCopyWithImpl<_$_OrderPreviewResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderPreviewResponseToJson(
      this,
    );
  }
}

abstract class _OrderPreviewResponse implements OrderPreviewResponse {
  const factory _OrderPreviewResponse(
      {required final String businessName,
      required final String businessId,
      required final List<ItemPreview> itemPreviews,
      required final double oldTotal,
      required final double purchasePrice,
      required final int discountPercents}) = _$_OrderPreviewResponse;

  factory _OrderPreviewResponse.fromJson(Map<String, dynamic> json) =
      _$_OrderPreviewResponse.fromJson;

  @override
  String get businessName;
  @override
  String get businessId;
  @override
  List<ItemPreview> get itemPreviews;
  @override
  double get oldTotal;
  @override
  double get purchasePrice;
  @override
  int get discountPercents;
  @override
  @JsonKey(ignore: true)
  _$$_OrderPreviewResponseCopyWith<_$_OrderPreviewResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

ItemPreview _$ItemPreviewFromJson(Map<String, dynamic> json) {
  return _ItemPreview.fromJson(json);
}

/// @nodoc
mixin _$ItemPreview {
  ItemResponse get item => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemPreviewCopyWith<ItemPreview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemPreviewCopyWith<$Res> {
  factory $ItemPreviewCopyWith(
          ItemPreview value, $Res Function(ItemPreview) then) =
      _$ItemPreviewCopyWithImpl<$Res>;
  $Res call({ItemResponse item, int amount});

  $ItemResponseCopyWith<$Res> get item;
}

/// @nodoc
class _$ItemPreviewCopyWithImpl<$Res> implements $ItemPreviewCopyWith<$Res> {
  _$ItemPreviewCopyWithImpl(this._value, this._then);

  final ItemPreview _value;
  // ignore: unused_field
  final $Res Function(ItemPreview) _then;

  @override
  $Res call({
    Object? item = freezed,
    Object? amount = freezed,
  }) {
    return _then(_value.copyWith(
      item: item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as ItemResponse,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $ItemResponseCopyWith<$Res> get item {
    return $ItemResponseCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc
abstract class _$$_ItemPreviewCopyWith<$Res>
    implements $ItemPreviewCopyWith<$Res> {
  factory _$$_ItemPreviewCopyWith(
          _$_ItemPreview value, $Res Function(_$_ItemPreview) then) =
      __$$_ItemPreviewCopyWithImpl<$Res>;
  @override
  $Res call({ItemResponse item, int amount});

  @override
  $ItemResponseCopyWith<$Res> get item;
}

/// @nodoc
class __$$_ItemPreviewCopyWithImpl<$Res> extends _$ItemPreviewCopyWithImpl<$Res>
    implements _$$_ItemPreviewCopyWith<$Res> {
  __$$_ItemPreviewCopyWithImpl(
      _$_ItemPreview _value, $Res Function(_$_ItemPreview) _then)
      : super(_value, (v) => _then(v as _$_ItemPreview));

  @override
  _$_ItemPreview get _value => super._value as _$_ItemPreview;

  @override
  $Res call({
    Object? item = freezed,
    Object? amount = freezed,
  }) {
    return _then(_$_ItemPreview(
      item: item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as ItemResponse,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ItemPreview implements _ItemPreview {
  const _$_ItemPreview({required this.item, required this.amount});

  factory _$_ItemPreview.fromJson(Map<String, dynamic> json) =>
      _$$_ItemPreviewFromJson(json);

  @override
  final ItemResponse item;
  @override
  final int amount;

  @override
  String toString() {
    return 'ItemPreview(item: $item, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemPreview &&
            const DeepCollectionEquality().equals(other.item, item) &&
            const DeepCollectionEquality().equals(other.amount, amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(item),
      const DeepCollectionEquality().hash(amount));

  @JsonKey(ignore: true)
  @override
  _$$_ItemPreviewCopyWith<_$_ItemPreview> get copyWith =>
      __$$_ItemPreviewCopyWithImpl<_$_ItemPreview>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemPreviewToJson(
      this,
    );
  }
}

abstract class _ItemPreview implements ItemPreview {
  const factory _ItemPreview(
      {required final ItemResponse item,
      required final int amount}) = _$_ItemPreview;

  factory _ItemPreview.fromJson(Map<String, dynamic> json) =
      _$_ItemPreview.fromJson;

  @override
  ItemResponse get item;
  @override
  int get amount;
  @override
  @JsonKey(ignore: true)
  _$$_ItemPreviewCopyWith<_$_ItemPreview> get copyWith =>
      throw _privateConstructorUsedError;
}
