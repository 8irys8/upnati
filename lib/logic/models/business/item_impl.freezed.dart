// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'item_impl.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ItemImpl _$ItemImplFromJson(Map<String, dynamic> json) {
  return _ItemImpl.fromJson(json);
}

/// @nodoc
mixin _$ItemImpl {
  String? get id => throw _privateConstructorUsedError;
  String? get creationDate => throw _privateConstructorUsedError;
  Map<dynamic, NameLocalData> get name => throw _privateConstructorUsedError;
  Map<dynamic, DescriptionLocalData> get description =>
      throw _privateConstructorUsedError;
  List<DeliveryOption>? get deliveryOptions =>
      throw _privateConstructorUsedError;
  List<String>? get imageUrls => throw _privateConstructorUsedError;
  Map<dynamic, String>? get characteristicsMap =>
      throw _privateConstructorUsedError;
  String get itemCategory => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  double get purchasePrice => throw _privateConstructorUsedError;
  int get discountPercents => throw _privateConstructorUsedError;
  int? get inStock => throw _privateConstructorUsedError;
  List<SingleValuePriceModifier>? get singleValuePriceModifiers =>
      throw _privateConstructorUsedError;
  String? get itemType => throw _privateConstructorUsedError;
  int? get stock => throw _privateConstructorUsedError;
  bool? get stockConfigured => throw _privateConstructorUsedError;
  double get oldTotal => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemImplCopyWith<ItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemImplCopyWith<$Res> {
  factory $ItemImplCopyWith(ItemImpl value, $Res Function(ItemImpl) then) =
      _$ItemImplCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? creationDate,
      Map<dynamic, NameLocalData> name,
      Map<dynamic, DescriptionLocalData> description,
      List<DeliveryOption>? deliveryOptions,
      List<String>? imageUrls,
      Map<dynamic, String>? characteristicsMap,
      String itemCategory,
      String currency,
      double? price,
      double purchasePrice,
      int discountPercents,
      int? inStock,
      List<SingleValuePriceModifier>? singleValuePriceModifiers,
      String? itemType,
      int? stock,
      bool? stockConfigured,
      double oldTotal});
}

/// @nodoc
class _$ItemImplCopyWithImpl<$Res> implements $ItemImplCopyWith<$Res> {
  _$ItemImplCopyWithImpl(this._value, this._then);

  final ItemImpl _value;
  // ignore: unused_field
  final $Res Function(ItemImpl) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? creationDate = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? deliveryOptions = freezed,
    Object? imageUrls = freezed,
    Object? characteristicsMap = freezed,
    Object? itemCategory = freezed,
    Object? currency = freezed,
    Object? price = freezed,
    Object? purchasePrice = freezed,
    Object? discountPercents = freezed,
    Object? inStock = freezed,
    Object? singleValuePriceModifiers = freezed,
    Object? itemType = freezed,
    Object? stock = freezed,
    Object? stockConfigured = freezed,
    Object? oldTotal = freezed,
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
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, NameLocalData>,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, DescriptionLocalData>,
      deliveryOptions: deliveryOptions == freezed
          ? _value.deliveryOptions
          : deliveryOptions // ignore: cast_nullable_to_non_nullable
              as List<DeliveryOption>?,
      imageUrls: imageUrls == freezed
          ? _value.imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      characteristicsMap: characteristicsMap == freezed
          ? _value.characteristicsMap
          : characteristicsMap // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, String>?,
      itemCategory: itemCategory == freezed
          ? _value.itemCategory
          : itemCategory // ignore: cast_nullable_to_non_nullable
              as String,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
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
      inStock: inStock == freezed
          ? _value.inStock
          : inStock // ignore: cast_nullable_to_non_nullable
              as int?,
      singleValuePriceModifiers: singleValuePriceModifiers == freezed
          ? _value.singleValuePriceModifiers
          : singleValuePriceModifiers // ignore: cast_nullable_to_non_nullable
              as List<SingleValuePriceModifier>?,
      itemType: itemType == freezed
          ? _value.itemType
          : itemType // ignore: cast_nullable_to_non_nullable
              as String?,
      stock: stock == freezed
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int?,
      stockConfigured: stockConfigured == freezed
          ? _value.stockConfigured
          : stockConfigured // ignore: cast_nullable_to_non_nullable
              as bool?,
      oldTotal: oldTotal == freezed
          ? _value.oldTotal
          : oldTotal // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_ItemImplCopyWith<$Res> implements $ItemImplCopyWith<$Res> {
  factory _$$_ItemImplCopyWith(
          _$_ItemImpl value, $Res Function(_$_ItemImpl) then) =
      __$$_ItemImplCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? creationDate,
      Map<dynamic, NameLocalData> name,
      Map<dynamic, DescriptionLocalData> description,
      List<DeliveryOption>? deliveryOptions,
      List<String>? imageUrls,
      Map<dynamic, String>? characteristicsMap,
      String itemCategory,
      String currency,
      double? price,
      double purchasePrice,
      int discountPercents,
      int? inStock,
      List<SingleValuePriceModifier>? singleValuePriceModifiers,
      String? itemType,
      int? stock,
      bool? stockConfigured,
      double oldTotal});
}

/// @nodoc
class __$$_ItemImplCopyWithImpl<$Res> extends _$ItemImplCopyWithImpl<$Res>
    implements _$$_ItemImplCopyWith<$Res> {
  __$$_ItemImplCopyWithImpl(
      _$_ItemImpl _value, $Res Function(_$_ItemImpl) _then)
      : super(_value, (v) => _then(v as _$_ItemImpl));

  @override
  _$_ItemImpl get _value => super._value as _$_ItemImpl;

  @override
  $Res call({
    Object? id = freezed,
    Object? creationDate = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? deliveryOptions = freezed,
    Object? imageUrls = freezed,
    Object? characteristicsMap = freezed,
    Object? itemCategory = freezed,
    Object? currency = freezed,
    Object? price = freezed,
    Object? purchasePrice = freezed,
    Object? discountPercents = freezed,
    Object? inStock = freezed,
    Object? singleValuePriceModifiers = freezed,
    Object? itemType = freezed,
    Object? stock = freezed,
    Object? stockConfigured = freezed,
    Object? oldTotal = freezed,
  }) {
    return _then(_$_ItemImpl(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      creationDate: creationDate == freezed
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value._name
          : name // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, NameLocalData>,
      description: description == freezed
          ? _value._description
          : description // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, DescriptionLocalData>,
      deliveryOptions: deliveryOptions == freezed
          ? _value._deliveryOptions
          : deliveryOptions // ignore: cast_nullable_to_non_nullable
              as List<DeliveryOption>?,
      imageUrls: imageUrls == freezed
          ? _value._imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      characteristicsMap: characteristicsMap == freezed
          ? _value._characteristicsMap
          : characteristicsMap // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, String>?,
      itemCategory: itemCategory == freezed
          ? _value.itemCategory
          : itemCategory // ignore: cast_nullable_to_non_nullable
              as String,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
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
      inStock: inStock == freezed
          ? _value.inStock
          : inStock // ignore: cast_nullable_to_non_nullable
              as int?,
      singleValuePriceModifiers: singleValuePriceModifiers == freezed
          ? _value._singleValuePriceModifiers
          : singleValuePriceModifiers // ignore: cast_nullable_to_non_nullable
              as List<SingleValuePriceModifier>?,
      itemType: itemType == freezed
          ? _value.itemType
          : itemType // ignore: cast_nullable_to_non_nullable
              as String?,
      stock: stock == freezed
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int?,
      stockConfigured: stockConfigured == freezed
          ? _value.stockConfigured
          : stockConfigured // ignore: cast_nullable_to_non_nullable
              as bool?,
      oldTotal: oldTotal == freezed
          ? _value.oldTotal
          : oldTotal // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ItemImpl implements _ItemImpl {
  const _$_ItemImpl(
      {this.id,
      this.creationDate,
      required final Map<dynamic, NameLocalData> name,
      required final Map<dynamic, DescriptionLocalData> description,
      final List<DeliveryOption>? deliveryOptions,
      final List<String>? imageUrls,
      final Map<dynamic, String>? characteristicsMap,
      required this.itemCategory,
      required this.currency,
      this.price,
      required this.purchasePrice,
      required this.discountPercents,
      this.inStock,
      final List<SingleValuePriceModifier>? singleValuePriceModifiers,
      this.itemType,
      this.stock,
      this.stockConfigured,
      required this.oldTotal})
      : _name = name,
        _description = description,
        _deliveryOptions = deliveryOptions,
        _imageUrls = imageUrls,
        _characteristicsMap = characteristicsMap,
        _singleValuePriceModifiers = singleValuePriceModifiers;

  factory _$_ItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$_ItemImplFromJson(json);

  @override
  final String? id;
  @override
  final String? creationDate;
  final Map<dynamic, NameLocalData> _name;
  @override
  Map<dynamic, NameLocalData> get name {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_name);
  }

  final Map<dynamic, DescriptionLocalData> _description;
  @override
  Map<dynamic, DescriptionLocalData> get description {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_description);
  }

  final List<DeliveryOption>? _deliveryOptions;
  @override
  List<DeliveryOption>? get deliveryOptions {
    final value = _deliveryOptions;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _imageUrls;
  @override
  List<String>? get imageUrls {
    final value = _imageUrls;
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
  final String itemCategory;
  @override
  final String currency;
  @override
  final double? price;
  @override
  final double purchasePrice;
  @override
  final int discountPercents;
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
  final String? itemType;
  @override
  final int? stock;
  @override
  final bool? stockConfigured;
  @override
  final double oldTotal;

  @override
  String toString() {
    return 'ItemImpl(id: $id, creationDate: $creationDate, name: $name, description: $description, deliveryOptions: $deliveryOptions, imageUrls: $imageUrls, characteristicsMap: $characteristicsMap, itemCategory: $itemCategory, currency: $currency, price: $price, purchasePrice: $purchasePrice, discountPercents: $discountPercents, inStock: $inStock, singleValuePriceModifiers: $singleValuePriceModifiers, itemType: $itemType, stock: $stock, stockConfigured: $stockConfigured, oldTotal: $oldTotal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemImpl &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.creationDate, creationDate) &&
            const DeepCollectionEquality().equals(other._name, _name) &&
            const DeepCollectionEquality()
                .equals(other._description, _description) &&
            const DeepCollectionEquality()
                .equals(other._deliveryOptions, _deliveryOptions) &&
            const DeepCollectionEquality()
                .equals(other._imageUrls, _imageUrls) &&
            const DeepCollectionEquality()
                .equals(other._characteristicsMap, _characteristicsMap) &&
            const DeepCollectionEquality()
                .equals(other.itemCategory, itemCategory) &&
            const DeepCollectionEquality().equals(other.currency, currency) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality()
                .equals(other.purchasePrice, purchasePrice) &&
            const DeepCollectionEquality()
                .equals(other.discountPercents, discountPercents) &&
            const DeepCollectionEquality().equals(other.inStock, inStock) &&
            const DeepCollectionEquality().equals(
                other._singleValuePriceModifiers, _singleValuePriceModifiers) &&
            const DeepCollectionEquality().equals(other.itemType, itemType) &&
            const DeepCollectionEquality().equals(other.stock, stock) &&
            const DeepCollectionEquality()
                .equals(other.stockConfigured, stockConfigured) &&
            const DeepCollectionEquality().equals(other.oldTotal, oldTotal));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(creationDate),
      const DeepCollectionEquality().hash(_name),
      const DeepCollectionEquality().hash(_description),
      const DeepCollectionEquality().hash(_deliveryOptions),
      const DeepCollectionEquality().hash(_imageUrls),
      const DeepCollectionEquality().hash(_characteristicsMap),
      const DeepCollectionEquality().hash(itemCategory),
      const DeepCollectionEquality().hash(currency),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(purchasePrice),
      const DeepCollectionEquality().hash(discountPercents),
      const DeepCollectionEquality().hash(inStock),
      const DeepCollectionEquality().hash(_singleValuePriceModifiers),
      const DeepCollectionEquality().hash(itemType),
      const DeepCollectionEquality().hash(stock),
      const DeepCollectionEquality().hash(stockConfigured),
      const DeepCollectionEquality().hash(oldTotal));

  @JsonKey(ignore: true)
  @override
  _$$_ItemImplCopyWith<_$_ItemImpl> get copyWith =>
      __$$_ItemImplCopyWithImpl<_$_ItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemImplToJson(
      this,
    );
  }
}

abstract class _ItemImpl implements ItemImpl {
  const factory _ItemImpl(
      {final String? id,
      final String? creationDate,
      required final Map<dynamic, NameLocalData> name,
      required final Map<dynamic, DescriptionLocalData> description,
      final List<DeliveryOption>? deliveryOptions,
      final List<String>? imageUrls,
      final Map<dynamic, String>? characteristicsMap,
      required final String itemCategory,
      required final String currency,
      final double? price,
      required final double purchasePrice,
      required final int discountPercents,
      final int? inStock,
      final List<SingleValuePriceModifier>? singleValuePriceModifiers,
      final String? itemType,
      final int? stock,
      final bool? stockConfigured,
      required final double oldTotal}) = _$_ItemImpl;

  factory _ItemImpl.fromJson(Map<String, dynamic> json) = _$_ItemImpl.fromJson;

  @override
  String? get id;
  @override
  String? get creationDate;
  @override
  Map<dynamic, NameLocalData> get name;
  @override
  Map<dynamic, DescriptionLocalData> get description;
  @override
  List<DeliveryOption>? get deliveryOptions;
  @override
  List<String>? get imageUrls;
  @override
  Map<dynamic, String>? get characteristicsMap;
  @override
  String get itemCategory;
  @override
  String get currency;
  @override
  double? get price;
  @override
  double get purchasePrice;
  @override
  int get discountPercents;
  @override
  int? get inStock;
  @override
  List<SingleValuePriceModifier>? get singleValuePriceModifiers;
  @override
  String? get itemType;
  @override
  int? get stock;
  @override
  bool? get stockConfigured;
  @override
  double get oldTotal;
  @override
  @JsonKey(ignore: true)
  _$$_ItemImplCopyWith<_$_ItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NameLocalData _$NameLocalDataFromJson(Map<String, dynamic> json) {
  return _NameLocalData.fromJson(json);
}

/// @nodoc
mixin _$NameLocalData {
  String get upstoreLocale => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NameLocalDataCopyWith<NameLocalData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NameLocalDataCopyWith<$Res> {
  factory $NameLocalDataCopyWith(
          NameLocalData value, $Res Function(NameLocalData) then) =
      _$NameLocalDataCopyWithImpl<$Res>;
  $Res call({String upstoreLocale, String name});
}

/// @nodoc
class _$NameLocalDataCopyWithImpl<$Res>
    implements $NameLocalDataCopyWith<$Res> {
  _$NameLocalDataCopyWithImpl(this._value, this._then);

  final NameLocalData _value;
  // ignore: unused_field
  final $Res Function(NameLocalData) _then;

  @override
  $Res call({
    Object? upstoreLocale = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      upstoreLocale: upstoreLocale == freezed
          ? _value.upstoreLocale
          : upstoreLocale // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_NameLocalDataCopyWith<$Res>
    implements $NameLocalDataCopyWith<$Res> {
  factory _$$_NameLocalDataCopyWith(
          _$_NameLocalData value, $Res Function(_$_NameLocalData) then) =
      __$$_NameLocalDataCopyWithImpl<$Res>;
  @override
  $Res call({String upstoreLocale, String name});
}

/// @nodoc
class __$$_NameLocalDataCopyWithImpl<$Res>
    extends _$NameLocalDataCopyWithImpl<$Res>
    implements _$$_NameLocalDataCopyWith<$Res> {
  __$$_NameLocalDataCopyWithImpl(
      _$_NameLocalData _value, $Res Function(_$_NameLocalData) _then)
      : super(_value, (v) => _then(v as _$_NameLocalData));

  @override
  _$_NameLocalData get _value => super._value as _$_NameLocalData;

  @override
  $Res call({
    Object? upstoreLocale = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_NameLocalData(
      upstoreLocale: upstoreLocale == freezed
          ? _value.upstoreLocale
          : upstoreLocale // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NameLocalData implements _NameLocalData {
  const _$_NameLocalData({required this.upstoreLocale, required this.name});

  factory _$_NameLocalData.fromJson(Map<String, dynamic> json) =>
      _$$_NameLocalDataFromJson(json);

  @override
  final String upstoreLocale;
  @override
  final String name;

  @override
  String toString() {
    return 'NameLocalData(upstoreLocale: $upstoreLocale, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NameLocalData &&
            const DeepCollectionEquality()
                .equals(other.upstoreLocale, upstoreLocale) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(upstoreLocale),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_NameLocalDataCopyWith<_$_NameLocalData> get copyWith =>
      __$$_NameLocalDataCopyWithImpl<_$_NameLocalData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NameLocalDataToJson(
      this,
    );
  }
}

abstract class _NameLocalData implements NameLocalData {
  const factory _NameLocalData(
      {required final String upstoreLocale,
      required final String name}) = _$_NameLocalData;

  factory _NameLocalData.fromJson(Map<String, dynamic> json) =
      _$_NameLocalData.fromJson;

  @override
  String get upstoreLocale;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_NameLocalDataCopyWith<_$_NameLocalData> get copyWith =>
      throw _privateConstructorUsedError;
}

DescriptionLocalData _$DescriptionLocalDataFromJson(Map<String, dynamic> json) {
  return _DescriptionLocalData.fromJson(json);
}

/// @nodoc
mixin _$DescriptionLocalData {
  String get upstoreLocale => throw _privateConstructorUsedError;
  Description get description => throw _privateConstructorUsedError;
  String? get full => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DescriptionLocalDataCopyWith<DescriptionLocalData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DescriptionLocalDataCopyWith<$Res> {
  factory $DescriptionLocalDataCopyWith(DescriptionLocalData value,
          $Res Function(DescriptionLocalData) then) =
      _$DescriptionLocalDataCopyWithImpl<$Res>;
  $Res call({String upstoreLocale, Description description, String? full});

  $DescriptionCopyWith<$Res> get description;
}

/// @nodoc
class _$DescriptionLocalDataCopyWithImpl<$Res>
    implements $DescriptionLocalDataCopyWith<$Res> {
  _$DescriptionLocalDataCopyWithImpl(this._value, this._then);

  final DescriptionLocalData _value;
  // ignore: unused_field
  final $Res Function(DescriptionLocalData) _then;

  @override
  $Res call({
    Object? upstoreLocale = freezed,
    Object? description = freezed,
    Object? full = freezed,
  }) {
    return _then(_value.copyWith(
      upstoreLocale: upstoreLocale == freezed
          ? _value.upstoreLocale
          : upstoreLocale // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as Description,
      full: full == freezed
          ? _value.full
          : full // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $DescriptionCopyWith<$Res> get description {
    return $DescriptionCopyWith<$Res>(_value.description, (value) {
      return _then(_value.copyWith(description: value));
    });
  }
}

/// @nodoc
abstract class _$$_DescriptionLocalDataCopyWith<$Res>
    implements $DescriptionLocalDataCopyWith<$Res> {
  factory _$$_DescriptionLocalDataCopyWith(_$_DescriptionLocalData value,
          $Res Function(_$_DescriptionLocalData) then) =
      __$$_DescriptionLocalDataCopyWithImpl<$Res>;
  @override
  $Res call({String upstoreLocale, Description description, String? full});

  @override
  $DescriptionCopyWith<$Res> get description;
}

/// @nodoc
class __$$_DescriptionLocalDataCopyWithImpl<$Res>
    extends _$DescriptionLocalDataCopyWithImpl<$Res>
    implements _$$_DescriptionLocalDataCopyWith<$Res> {
  __$$_DescriptionLocalDataCopyWithImpl(_$_DescriptionLocalData _value,
      $Res Function(_$_DescriptionLocalData) _then)
      : super(_value, (v) => _then(v as _$_DescriptionLocalData));

  @override
  _$_DescriptionLocalData get _value => super._value as _$_DescriptionLocalData;

  @override
  $Res call({
    Object? upstoreLocale = freezed,
    Object? description = freezed,
    Object? full = freezed,
  }) {
    return _then(_$_DescriptionLocalData(
      upstoreLocale: upstoreLocale == freezed
          ? _value.upstoreLocale
          : upstoreLocale // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as Description,
      full: full == freezed
          ? _value.full
          : full // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DescriptionLocalData implements _DescriptionLocalData {
  const _$_DescriptionLocalData(
      {required this.upstoreLocale, required this.description, this.full});

  factory _$_DescriptionLocalData.fromJson(Map<String, dynamic> json) =>
      _$$_DescriptionLocalDataFromJson(json);

  @override
  final String upstoreLocale;
  @override
  final Description description;
  @override
  final String? full;

  @override
  String toString() {
    return 'DescriptionLocalData(upstoreLocale: $upstoreLocale, description: $description, full: $full)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DescriptionLocalData &&
            const DeepCollectionEquality()
                .equals(other.upstoreLocale, upstoreLocale) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.full, full));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(upstoreLocale),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(full));

  @JsonKey(ignore: true)
  @override
  _$$_DescriptionLocalDataCopyWith<_$_DescriptionLocalData> get copyWith =>
      __$$_DescriptionLocalDataCopyWithImpl<_$_DescriptionLocalData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DescriptionLocalDataToJson(
      this,
    );
  }
}

abstract class _DescriptionLocalData implements DescriptionLocalData {
  const factory _DescriptionLocalData(
      {required final String upstoreLocale,
      required final Description description,
      final String? full}) = _$_DescriptionLocalData;

  factory _DescriptionLocalData.fromJson(Map<String, dynamic> json) =
      _$_DescriptionLocalData.fromJson;

  @override
  String get upstoreLocale;
  @override
  Description get description;
  @override
  String? get full;
  @override
  @JsonKey(ignore: true)
  _$$_DescriptionLocalDataCopyWith<_$_DescriptionLocalData> get copyWith =>
      throw _privateConstructorUsedError;
}

DeliveryOption _$DeliveryOptionFromJson(Map<String, dynamic> json) {
  return _DeliveryOption.fromJson(json);
}

/// @nodoc
mixin _$DeliveryOption {
  String? get id => throw _privateConstructorUsedError;
  String? get creationDate => throw _privateConstructorUsedError;
  List<ItemImpl>? get items => throw _privateConstructorUsedError;
  DeliveryCompany? get company => throw _privateConstructorUsedError;
  String get deliveryType => throw _privateConstructorUsedError;
  String get deliverySpeed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryOptionCopyWith<DeliveryOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryOptionCopyWith<$Res> {
  factory $DeliveryOptionCopyWith(
          DeliveryOption value, $Res Function(DeliveryOption) then) =
      _$DeliveryOptionCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? creationDate,
      List<ItemImpl>? items,
      DeliveryCompany? company,
      String deliveryType,
      String deliverySpeed});

  $DeliveryCompanyCopyWith<$Res>? get company;
}

/// @nodoc
class _$DeliveryOptionCopyWithImpl<$Res>
    implements $DeliveryOptionCopyWith<$Res> {
  _$DeliveryOptionCopyWithImpl(this._value, this._then);

  final DeliveryOption _value;
  // ignore: unused_field
  final $Res Function(DeliveryOption) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? creationDate = freezed,
    Object? items = freezed,
    Object? company = freezed,
    Object? deliveryType = freezed,
    Object? deliverySpeed = freezed,
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
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemImpl>?,
      company: company == freezed
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as DeliveryCompany?,
      deliveryType: deliveryType == freezed
          ? _value.deliveryType
          : deliveryType // ignore: cast_nullable_to_non_nullable
              as String,
      deliverySpeed: deliverySpeed == freezed
          ? _value.deliverySpeed
          : deliverySpeed // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $DeliveryCompanyCopyWith<$Res>? get company {
    if (_value.company == null) {
      return null;
    }

    return $DeliveryCompanyCopyWith<$Res>(_value.company!, (value) {
      return _then(_value.copyWith(company: value));
    });
  }
}

/// @nodoc
abstract class _$$_DeliveryOptionCopyWith<$Res>
    implements $DeliveryOptionCopyWith<$Res> {
  factory _$$_DeliveryOptionCopyWith(
          _$_DeliveryOption value, $Res Function(_$_DeliveryOption) then) =
      __$$_DeliveryOptionCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? creationDate,
      List<ItemImpl>? items,
      DeliveryCompany? company,
      String deliveryType,
      String deliverySpeed});

  @override
  $DeliveryCompanyCopyWith<$Res>? get company;
}

/// @nodoc
class __$$_DeliveryOptionCopyWithImpl<$Res>
    extends _$DeliveryOptionCopyWithImpl<$Res>
    implements _$$_DeliveryOptionCopyWith<$Res> {
  __$$_DeliveryOptionCopyWithImpl(
      _$_DeliveryOption _value, $Res Function(_$_DeliveryOption) _then)
      : super(_value, (v) => _then(v as _$_DeliveryOption));

  @override
  _$_DeliveryOption get _value => super._value as _$_DeliveryOption;

  @override
  $Res call({
    Object? id = freezed,
    Object? creationDate = freezed,
    Object? items = freezed,
    Object? company = freezed,
    Object? deliveryType = freezed,
    Object? deliverySpeed = freezed,
  }) {
    return _then(_$_DeliveryOption(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      creationDate: creationDate == freezed
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as String?,
      items: items == freezed
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemImpl>?,
      company: company == freezed
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as DeliveryCompany?,
      deliveryType: deliveryType == freezed
          ? _value.deliveryType
          : deliveryType // ignore: cast_nullable_to_non_nullable
              as String,
      deliverySpeed: deliverySpeed == freezed
          ? _value.deliverySpeed
          : deliverySpeed // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeliveryOption implements _DeliveryOption {
  const _$_DeliveryOption(
      {this.id,
      this.creationDate,
      final List<ItemImpl>? items,
      this.company,
      required this.deliveryType,
      required this.deliverySpeed})
      : _items = items;

  factory _$_DeliveryOption.fromJson(Map<String, dynamic> json) =>
      _$$_DeliveryOptionFromJson(json);

  @override
  final String? id;
  @override
  final String? creationDate;
  final List<ItemImpl>? _items;
  @override
  List<ItemImpl>? get items {
    final value = _items;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final DeliveryCompany? company;
  @override
  final String deliveryType;
  @override
  final String deliverySpeed;

  @override
  String toString() {
    return 'DeliveryOption(id: $id, creationDate: $creationDate, items: $items, company: $company, deliveryType: $deliveryType, deliverySpeed: $deliverySpeed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeliveryOption &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.creationDate, creationDate) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            const DeepCollectionEquality().equals(other.company, company) &&
            const DeepCollectionEquality()
                .equals(other.deliveryType, deliveryType) &&
            const DeepCollectionEquality()
                .equals(other.deliverySpeed, deliverySpeed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(creationDate),
      const DeepCollectionEquality().hash(_items),
      const DeepCollectionEquality().hash(company),
      const DeepCollectionEquality().hash(deliveryType),
      const DeepCollectionEquality().hash(deliverySpeed));

  @JsonKey(ignore: true)
  @override
  _$$_DeliveryOptionCopyWith<_$_DeliveryOption> get copyWith =>
      __$$_DeliveryOptionCopyWithImpl<_$_DeliveryOption>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeliveryOptionToJson(
      this,
    );
  }
}

abstract class _DeliveryOption implements DeliveryOption {
  const factory _DeliveryOption(
      {final String? id,
      final String? creationDate,
      final List<ItemImpl>? items,
      final DeliveryCompany? company,
      required final String deliveryType,
      required final String deliverySpeed}) = _$_DeliveryOption;

  factory _DeliveryOption.fromJson(Map<String, dynamic> json) =
      _$_DeliveryOption.fromJson;

  @override
  String? get id;
  @override
  String? get creationDate;
  @override
  List<ItemImpl>? get items;
  @override
  DeliveryCompany? get company;
  @override
  String get deliveryType;
  @override
  String get deliverySpeed;
  @override
  @JsonKey(ignore: true)
  _$$_DeliveryOptionCopyWith<_$_DeliveryOption> get copyWith =>
      throw _privateConstructorUsedError;
}

DeliveryCompany _$DeliveryCompanyFromJson(Map<String, dynamic> json) {
  return _DeliveryCompany.fromJson(json);
}

/// @nodoc
mixin _$DeliveryCompany {
  String? get id => throw _privateConstructorUsedError;
  String? get creationDate => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  List<String>? get imageUrls => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryCompanyCopyWith<DeliveryCompany> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryCompanyCopyWith<$Res> {
  factory $DeliveryCompanyCopyWith(
          DeliveryCompany value, $Res Function(DeliveryCompany) then) =
      _$DeliveryCompanyCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? creationDate,
      String? name,
      List<String>? imageUrls});
}

/// @nodoc
class _$DeliveryCompanyCopyWithImpl<$Res>
    implements $DeliveryCompanyCopyWith<$Res> {
  _$DeliveryCompanyCopyWithImpl(this._value, this._then);

  final DeliveryCompany _value;
  // ignore: unused_field
  final $Res Function(DeliveryCompany) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? creationDate = freezed,
    Object? name = freezed,
    Object? imageUrls = freezed,
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
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrls: imageUrls == freezed
          ? _value.imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
abstract class _$$_DeliveryCompanyCopyWith<$Res>
    implements $DeliveryCompanyCopyWith<$Res> {
  factory _$$_DeliveryCompanyCopyWith(
          _$_DeliveryCompany value, $Res Function(_$_DeliveryCompany) then) =
      __$$_DeliveryCompanyCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? creationDate,
      String? name,
      List<String>? imageUrls});
}

/// @nodoc
class __$$_DeliveryCompanyCopyWithImpl<$Res>
    extends _$DeliveryCompanyCopyWithImpl<$Res>
    implements _$$_DeliveryCompanyCopyWith<$Res> {
  __$$_DeliveryCompanyCopyWithImpl(
      _$_DeliveryCompany _value, $Res Function(_$_DeliveryCompany) _then)
      : super(_value, (v) => _then(v as _$_DeliveryCompany));

  @override
  _$_DeliveryCompany get _value => super._value as _$_DeliveryCompany;

  @override
  $Res call({
    Object? id = freezed,
    Object? creationDate = freezed,
    Object? name = freezed,
    Object? imageUrls = freezed,
  }) {
    return _then(_$_DeliveryCompany(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      creationDate: creationDate == freezed
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrls: imageUrls == freezed
          ? _value._imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeliveryCompany implements _DeliveryCompany {
  const _$_DeliveryCompany(
      {this.id, this.creationDate, this.name, final List<String>? imageUrls})
      : _imageUrls = imageUrls;

  factory _$_DeliveryCompany.fromJson(Map<String, dynamic> json) =>
      _$$_DeliveryCompanyFromJson(json);

  @override
  final String? id;
  @override
  final String? creationDate;
  @override
  final String? name;
  final List<String>? _imageUrls;
  @override
  List<String>? get imageUrls {
    final value = _imageUrls;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DeliveryCompany(id: $id, creationDate: $creationDate, name: $name, imageUrls: $imageUrls)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeliveryCompany &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.creationDate, creationDate) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other._imageUrls, _imageUrls));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(creationDate),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(_imageUrls));

  @JsonKey(ignore: true)
  @override
  _$$_DeliveryCompanyCopyWith<_$_DeliveryCompany> get copyWith =>
      __$$_DeliveryCompanyCopyWithImpl<_$_DeliveryCompany>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeliveryCompanyToJson(
      this,
    );
  }
}

abstract class _DeliveryCompany implements DeliveryCompany {
  const factory _DeliveryCompany(
      {final String? id,
      final String? creationDate,
      final String? name,
      final List<String>? imageUrls}) = _$_DeliveryCompany;

  factory _DeliveryCompany.fromJson(Map<String, dynamic> json) =
      _$_DeliveryCompany.fromJson;

  @override
  String? get id;
  @override
  String? get creationDate;
  @override
  String? get name;
  @override
  List<String>? get imageUrls;
  @override
  @JsonKey(ignore: true)
  _$$_DeliveryCompanyCopyWith<_$_DeliveryCompany> get copyWith =>
      throw _privateConstructorUsedError;
}
