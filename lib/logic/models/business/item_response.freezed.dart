// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ItemResponse _$ItemResponseFromJson(Map<String, dynamic> json) {
  return _ItemResponse.fromJson(json);
}

/// @nodoc
mixin _$ItemResponse {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get businessId => throw _privateConstructorUsedError;
  String? get businessName => throw _privateConstructorUsedError;
  String? get businessImageUrl => throw _privateConstructorUsedError;
  String? get itemCategory => throw _privateConstructorUsedError;
  String? get itemType => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  Description? get description => throw _privateConstructorUsedError;
  List<String>? get imageUrls => throw _privateConstructorUsedError;
  List<String>? get videoUrls => throw _privateConstructorUsedError;
  Map<dynamic, String>? get characteristicsMap =>
      throw _privateConstructorUsedError;
  double? get purchasePrice => throw _privateConstructorUsedError;
  int? get discountPercents => throw _privateConstructorUsedError;
  int? get inStock => throw _privateConstructorUsedError;
  List<SingleValuePriceModifier>? get singleValuePriceModifiers =>
      throw _privateConstructorUsedError;
  bool? get stockConfigured => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemResponseCopyWith<ItemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemResponseCopyWith<$Res> {
  factory $ItemResponseCopyWith(
          ItemResponse value, $Res Function(ItemResponse) then) =
      _$ItemResponseCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? name,
      String? businessId,
      String? businessName,
      String? businessImageUrl,
      String? itemCategory,
      String? itemType,
      String? currency,
      double? price,
      Description? description,
      List<String>? imageUrls,
      List<String>? videoUrls,
      Map<dynamic, String>? characteristicsMap,
      double? purchasePrice,
      int? discountPercents,
      int? inStock,
      List<SingleValuePriceModifier>? singleValuePriceModifiers,
      bool? stockConfigured});

  $DescriptionCopyWith<$Res>? get description;
}

/// @nodoc
class _$ItemResponseCopyWithImpl<$Res> implements $ItemResponseCopyWith<$Res> {
  _$ItemResponseCopyWithImpl(this._value, this._then);

  final ItemResponse _value;
  // ignore: unused_field
  final $Res Function(ItemResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? businessId = freezed,
    Object? businessName = freezed,
    Object? businessImageUrl = freezed,
    Object? itemCategory = freezed,
    Object? itemType = freezed,
    Object? currency = freezed,
    Object? price = freezed,
    Object? description = freezed,
    Object? imageUrls = freezed,
    Object? videoUrls = freezed,
    Object? characteristicsMap = freezed,
    Object? purchasePrice = freezed,
    Object? discountPercents = freezed,
    Object? inStock = freezed,
    Object? singleValuePriceModifiers = freezed,
    Object? stockConfigured = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      businessId: businessId == freezed
          ? _value.businessId
          : businessId // ignore: cast_nullable_to_non_nullable
              as String?,
      businessName: businessName == freezed
          ? _value.businessName
          : businessName // ignore: cast_nullable_to_non_nullable
              as String?,
      businessImageUrl: businessImageUrl == freezed
          ? _value.businessImageUrl
          : businessImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      itemCategory: itemCategory == freezed
          ? _value.itemCategory
          : itemCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      itemType: itemType == freezed
          ? _value.itemType
          : itemType // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as Description?,
      imageUrls: imageUrls == freezed
          ? _value.imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      videoUrls: videoUrls == freezed
          ? _value.videoUrls
          : videoUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      characteristicsMap: characteristicsMap == freezed
          ? _value.characteristicsMap
          : characteristicsMap // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, String>?,
      purchasePrice: purchasePrice == freezed
          ? _value.purchasePrice
          : purchasePrice // ignore: cast_nullable_to_non_nullable
              as double?,
      discountPercents: discountPercents == freezed
          ? _value.discountPercents
          : discountPercents // ignore: cast_nullable_to_non_nullable
              as int?,
      inStock: inStock == freezed
          ? _value.inStock
          : inStock // ignore: cast_nullable_to_non_nullable
              as int?,
      singleValuePriceModifiers: singleValuePriceModifiers == freezed
          ? _value.singleValuePriceModifiers
          : singleValuePriceModifiers // ignore: cast_nullable_to_non_nullable
              as List<SingleValuePriceModifier>?,
      stockConfigured: stockConfigured == freezed
          ? _value.stockConfigured
          : stockConfigured // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  @override
  $DescriptionCopyWith<$Res>? get description {
    if (_value.description == null) {
      return null;
    }

    return $DescriptionCopyWith<$Res>(_value.description!, (value) {
      return _then(_value.copyWith(description: value));
    });
  }
}

/// @nodoc
abstract class _$$_ItemResponseCopyWith<$Res>
    implements $ItemResponseCopyWith<$Res> {
  factory _$$_ItemResponseCopyWith(
          _$_ItemResponse value, $Res Function(_$_ItemResponse) then) =
      __$$_ItemResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? name,
      String? businessId,
      String? businessName,
      String? businessImageUrl,
      String? itemCategory,
      String? itemType,
      String? currency,
      double? price,
      Description? description,
      List<String>? imageUrls,
      List<String>? videoUrls,
      Map<dynamic, String>? characteristicsMap,
      double? purchasePrice,
      int? discountPercents,
      int? inStock,
      List<SingleValuePriceModifier>? singleValuePriceModifiers,
      bool? stockConfigured});

  @override
  $DescriptionCopyWith<$Res>? get description;
}

/// @nodoc
class __$$_ItemResponseCopyWithImpl<$Res>
    extends _$ItemResponseCopyWithImpl<$Res>
    implements _$$_ItemResponseCopyWith<$Res> {
  __$$_ItemResponseCopyWithImpl(
      _$_ItemResponse _value, $Res Function(_$_ItemResponse) _then)
      : super(_value, (v) => _then(v as _$_ItemResponse));

  @override
  _$_ItemResponse get _value => super._value as _$_ItemResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? businessId = freezed,
    Object? businessName = freezed,
    Object? businessImageUrl = freezed,
    Object? itemCategory = freezed,
    Object? itemType = freezed,
    Object? currency = freezed,
    Object? price = freezed,
    Object? description = freezed,
    Object? imageUrls = freezed,
    Object? videoUrls = freezed,
    Object? characteristicsMap = freezed,
    Object? purchasePrice = freezed,
    Object? discountPercents = freezed,
    Object? inStock = freezed,
    Object? singleValuePriceModifiers = freezed,
    Object? stockConfigured = freezed,
  }) {
    return _then(_$_ItemResponse(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      businessId: businessId == freezed
          ? _value.businessId
          : businessId // ignore: cast_nullable_to_non_nullable
              as String?,
      businessName: businessName == freezed
          ? _value.businessName
          : businessName // ignore: cast_nullable_to_non_nullable
              as String?,
      businessImageUrl: businessImageUrl == freezed
          ? _value.businessImageUrl
          : businessImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      itemCategory: itemCategory == freezed
          ? _value.itemCategory
          : itemCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      itemType: itemType == freezed
          ? _value.itemType
          : itemType // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as Description?,
      imageUrls: imageUrls == freezed
          ? _value._imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      videoUrls: videoUrls == freezed
          ? _value._videoUrls
          : videoUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      characteristicsMap: characteristicsMap == freezed
          ? _value._characteristicsMap
          : characteristicsMap // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, String>?,
      purchasePrice: purchasePrice == freezed
          ? _value.purchasePrice
          : purchasePrice // ignore: cast_nullable_to_non_nullable
              as double?,
      discountPercents: discountPercents == freezed
          ? _value.discountPercents
          : discountPercents // ignore: cast_nullable_to_non_nullable
              as int?,
      inStock: inStock == freezed
          ? _value.inStock
          : inStock // ignore: cast_nullable_to_non_nullable
              as int?,
      singleValuePriceModifiers: singleValuePriceModifiers == freezed
          ? _value._singleValuePriceModifiers
          : singleValuePriceModifiers // ignore: cast_nullable_to_non_nullable
              as List<SingleValuePriceModifier>?,
      stockConfigured: stockConfigured == freezed
          ? _value.stockConfigured
          : stockConfigured // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ItemResponse implements _ItemResponse {
  const _$_ItemResponse(
      {this.id,
      this.name,
      this.businessId,
      this.businessName,
      this.businessImageUrl,
      this.itemCategory,
      this.itemType,
      this.currency,
      this.price,
      this.description,
      final List<String>? imageUrls,
      final List<String>? videoUrls,
      final Map<dynamic, String>? characteristicsMap,
      this.purchasePrice,
      this.discountPercents,
      this.inStock,
      final List<SingleValuePriceModifier>? singleValuePriceModifiers,
      this.stockConfigured})
      : _imageUrls = imageUrls,
        _videoUrls = videoUrls,
        _characteristicsMap = characteristicsMap,
        _singleValuePriceModifiers = singleValuePriceModifiers;

  factory _$_ItemResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ItemResponseFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? businessId;
  @override
  final String? businessName;
  @override
  final String? businessImageUrl;
  @override
  final String? itemCategory;
  @override
  final String? itemType;
  @override
  final String? currency;
  @override
  final double? price;
  @override
  final Description? description;
  final List<String>? _imageUrls;
  @override
  List<String>? get imageUrls {
    final value = _imageUrls;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _videoUrls;
  @override
  List<String>? get videoUrls {
    final value = _videoUrls;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<dynamic, String>? _characteristicsMap;
  @override
  Map<dynamic, String>? get characteristicsMap {
    final value = _characteristicsMap;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final double? purchasePrice;
  @override
  final int? discountPercents;
  @override
  final int? inStock;
  final List<SingleValuePriceModifier>? _singleValuePriceModifiers;
  @override
  List<SingleValuePriceModifier>? get singleValuePriceModifiers {
    final value = _singleValuePriceModifiers;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? stockConfigured;

  @override
  String toString() {
    return 'ItemResponse(id: $id, name: $name, businessId: $businessId, businessName: $businessName, businessImageUrl: $businessImageUrl, itemCategory: $itemCategory, itemType: $itemType, currency: $currency, price: $price, description: $description, imageUrls: $imageUrls, videoUrls: $videoUrls, characteristicsMap: $characteristicsMap, purchasePrice: $purchasePrice, discountPercents: $discountPercents, inStock: $inStock, singleValuePriceModifiers: $singleValuePriceModifiers, stockConfigured: $stockConfigured)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemResponse &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.businessId, businessId) &&
            const DeepCollectionEquality()
                .equals(other.businessName, businessName) &&
            const DeepCollectionEquality()
                .equals(other.businessImageUrl, businessImageUrl) &&
            const DeepCollectionEquality()
                .equals(other.itemCategory, itemCategory) &&
            const DeepCollectionEquality().equals(other.itemType, itemType) &&
            const DeepCollectionEquality().equals(other.currency, currency) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other._imageUrls, _imageUrls) &&
            const DeepCollectionEquality()
                .equals(other._videoUrls, _videoUrls) &&
            const DeepCollectionEquality()
                .equals(other._characteristicsMap, _characteristicsMap) &&
            const DeepCollectionEquality()
                .equals(other.purchasePrice, purchasePrice) &&
            const DeepCollectionEquality()
                .equals(other.discountPercents, discountPercents) &&
            const DeepCollectionEquality().equals(other.inStock, inStock) &&
            const DeepCollectionEquality().equals(
                other._singleValuePriceModifiers, _singleValuePriceModifiers) &&
            const DeepCollectionEquality()
                .equals(other.stockConfigured, stockConfigured));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(businessId),
      const DeepCollectionEquality().hash(businessName),
      const DeepCollectionEquality().hash(businessImageUrl),
      const DeepCollectionEquality().hash(itemCategory),
      const DeepCollectionEquality().hash(itemType),
      const DeepCollectionEquality().hash(currency),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(_imageUrls),
      const DeepCollectionEquality().hash(_videoUrls),
      const DeepCollectionEquality().hash(_characteristicsMap),
      const DeepCollectionEquality().hash(purchasePrice),
      const DeepCollectionEquality().hash(discountPercents),
      const DeepCollectionEquality().hash(inStock),
      const DeepCollectionEquality().hash(_singleValuePriceModifiers),
      const DeepCollectionEquality().hash(stockConfigured));

  @JsonKey(ignore: true)
  @override
  _$$_ItemResponseCopyWith<_$_ItemResponse> get copyWith =>
      __$$_ItemResponseCopyWithImpl<_$_ItemResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemResponseToJson(
      this,
    );
  }
}

abstract class _ItemResponse implements ItemResponse {
  const factory _ItemResponse(
      {final String? id,
      final String? name,
      final String? businessId,
      final String? businessName,
      final String? businessImageUrl,
      final String? itemCategory,
      final String? itemType,
      final String? currency,
      final double? price,
      final Description? description,
      final List<String>? imageUrls,
      final List<String>? videoUrls,
      final Map<dynamic, String>? characteristicsMap,
      final double? purchasePrice,
      final int? discountPercents,
      final int? inStock,
      final List<SingleValuePriceModifier>? singleValuePriceModifiers,
      final bool? stockConfigured}) = _$_ItemResponse;

  factory _ItemResponse.fromJson(Map<String, dynamic> json) =
      _$_ItemResponse.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get businessId;
  @override
  String? get businessName;
  @override
  String? get businessImageUrl;
  @override
  String? get itemCategory;
  @override
  String? get itemType;
  @override
  String? get currency;
  @override
  double? get price;
  @override
  Description? get description;
  @override
  List<String>? get imageUrls;
  @override
  List<String>? get videoUrls;
  @override
  Map<dynamic, String>? get characteristicsMap;
  @override
  double? get purchasePrice;
  @override
  int? get discountPercents;
  @override
  int? get inStock;
  @override
  List<SingleValuePriceModifier>? get singleValuePriceModifiers;
  @override
  bool? get stockConfigured;
  @override
  @JsonKey(ignore: true)
  _$$_ItemResponseCopyWith<_$_ItemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
