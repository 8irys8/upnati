// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'item_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ItemForm _$ItemFormFromJson(Map<String, dynamic> json) {
  return _ItemForm.fromJson(json);
}

/// @nodoc
mixin _$ItemForm {
  String? get id => throw _privateConstructorUsedError;
  List<LocalName>? get name => throw _privateConstructorUsedError;
  String? get itemCategory => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;
  List<LocalDescription>? get description => throw _privateConstructorUsedError;
  double? get itemPrice => throw _privateConstructorUsedError;
  DeliveryReq? get delivery => throw _privateConstructorUsedError;
  int? get inStock => throw _privateConstructorUsedError;
  List<SingleValuePriceModifierForm>? get singleValuePriceModifiers =>
      throw _privateConstructorUsedError;
  List<String>? get imageUrls => throw _privateConstructorUsedError;
  List<String>? get videoUrls => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemFormCopyWith<ItemForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemFormCopyWith<$Res> {
  factory $ItemFormCopyWith(ItemForm value, $Res Function(ItemForm) then) =
      _$ItemFormCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      List<LocalName>? name,
      String? itemCategory,
      String? currency,
      List<LocalDescription>? description,
      double? itemPrice,
      DeliveryReq? delivery,
      int? inStock,
      List<SingleValuePriceModifierForm>? singleValuePriceModifiers,
      List<String>? imageUrls,
      List<String>? videoUrls});

  $DeliveryReqCopyWith<$Res>? get delivery;
}

/// @nodoc
class _$ItemFormCopyWithImpl<$Res> implements $ItemFormCopyWith<$Res> {
  _$ItemFormCopyWithImpl(this._value, this._then);

  final ItemForm _value;
  // ignore: unused_field
  final $Res Function(ItemForm) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? itemCategory = freezed,
    Object? currency = freezed,
    Object? description = freezed,
    Object? itemPrice = freezed,
    Object? delivery = freezed,
    Object? inStock = freezed,
    Object? singleValuePriceModifiers = freezed,
    Object? imageUrls = freezed,
    Object? videoUrls = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as List<LocalName>?,
      itemCategory: itemCategory == freezed
          ? _value.itemCategory
          : itemCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as List<LocalDescription>?,
      itemPrice: itemPrice == freezed
          ? _value.itemPrice
          : itemPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      delivery: delivery == freezed
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as DeliveryReq?,
      inStock: inStock == freezed
          ? _value.inStock
          : inStock // ignore: cast_nullable_to_non_nullable
              as int?,
      singleValuePriceModifiers: singleValuePriceModifiers == freezed
          ? _value.singleValuePriceModifiers
          : singleValuePriceModifiers // ignore: cast_nullable_to_non_nullable
              as List<SingleValuePriceModifierForm>?,
      imageUrls: imageUrls == freezed
          ? _value.imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      videoUrls: videoUrls == freezed
          ? _value.videoUrls
          : videoUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }

  @override
  $DeliveryReqCopyWith<$Res>? get delivery {
    if (_value.delivery == null) {
      return null;
    }

    return $DeliveryReqCopyWith<$Res>(_value.delivery!, (value) {
      return _then(_value.copyWith(delivery: value));
    });
  }
}

/// @nodoc
abstract class _$$_ItemFormCopyWith<$Res> implements $ItemFormCopyWith<$Res> {
  factory _$$_ItemFormCopyWith(
          _$_ItemForm value, $Res Function(_$_ItemForm) then) =
      __$$_ItemFormCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      List<LocalName>? name,
      String? itemCategory,
      String? currency,
      List<LocalDescription>? description,
      double? itemPrice,
      DeliveryReq? delivery,
      int? inStock,
      List<SingleValuePriceModifierForm>? singleValuePriceModifiers,
      List<String>? imageUrls,
      List<String>? videoUrls});

  @override
  $DeliveryReqCopyWith<$Res>? get delivery;
}

/// @nodoc
class __$$_ItemFormCopyWithImpl<$Res> extends _$ItemFormCopyWithImpl<$Res>
    implements _$$_ItemFormCopyWith<$Res> {
  __$$_ItemFormCopyWithImpl(
      _$_ItemForm _value, $Res Function(_$_ItemForm) _then)
      : super(_value, (v) => _then(v as _$_ItemForm));

  @override
  _$_ItemForm get _value => super._value as _$_ItemForm;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? itemCategory = freezed,
    Object? currency = freezed,
    Object? description = freezed,
    Object? itemPrice = freezed,
    Object? delivery = freezed,
    Object? inStock = freezed,
    Object? singleValuePriceModifiers = freezed,
    Object? imageUrls = freezed,
    Object? videoUrls = freezed,
  }) {
    return _then(_$_ItemForm(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value._name
          : name // ignore: cast_nullable_to_non_nullable
              as List<LocalName>?,
      itemCategory: itemCategory == freezed
          ? _value.itemCategory
          : itemCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value._description
          : description // ignore: cast_nullable_to_non_nullable
              as List<LocalDescription>?,
      itemPrice: itemPrice == freezed
          ? _value.itemPrice
          : itemPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      delivery: delivery == freezed
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as DeliveryReq?,
      inStock: inStock == freezed
          ? _value.inStock
          : inStock // ignore: cast_nullable_to_non_nullable
              as int?,
      singleValuePriceModifiers: singleValuePriceModifiers == freezed
          ? _value._singleValuePriceModifiers
          : singleValuePriceModifiers // ignore: cast_nullable_to_non_nullable
              as List<SingleValuePriceModifierForm>?,
      imageUrls: imageUrls == freezed
          ? _value._imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      videoUrls: videoUrls == freezed
          ? _value._videoUrls
          : videoUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ItemForm implements _ItemForm {
  const _$_ItemForm(
      {this.id,
      final List<LocalName>? name,
      this.itemCategory,
      this.currency,
      final List<LocalDescription>? description,
      this.itemPrice,
      this.delivery,
      this.inStock,
      final List<SingleValuePriceModifierForm>? singleValuePriceModifiers,
      final List<String>? imageUrls,
      final List<String>? videoUrls})
      : _name = name,
        _description = description,
        _singleValuePriceModifiers = singleValuePriceModifiers,
        _imageUrls = imageUrls,
        _videoUrls = videoUrls;

  factory _$_ItemForm.fromJson(Map<String, dynamic> json) =>
      _$$_ItemFormFromJson(json);

  @override
  final String? id;
  final List<LocalName>? _name;
  @override
  List<LocalName>? get name {
    final value = _name;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? itemCategory;
  @override
  final String? currency;
  final List<LocalDescription>? _description;
  @override
  List<LocalDescription>? get description {
    final value = _description;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final double? itemPrice;
  @override
  final DeliveryReq? delivery;
  @override
  final int? inStock;
  final List<SingleValuePriceModifierForm>? _singleValuePriceModifiers;
  @override
  List<SingleValuePriceModifierForm>? get singleValuePriceModifiers {
    final value = _singleValuePriceModifiers;
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

  final List<String>? _videoUrls;
  @override
  List<String>? get videoUrls {
    final value = _videoUrls;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ItemForm(id: $id, name: $name, itemCategory: $itemCategory, currency: $currency, description: $description, itemPrice: $itemPrice, delivery: $delivery, inStock: $inStock, singleValuePriceModifiers: $singleValuePriceModifiers, imageUrls: $imageUrls, videoUrls: $videoUrls)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemForm &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other._name, _name) &&
            const DeepCollectionEquality()
                .equals(other.itemCategory, itemCategory) &&
            const DeepCollectionEquality().equals(other.currency, currency) &&
            const DeepCollectionEquality()
                .equals(other._description, _description) &&
            const DeepCollectionEquality().equals(other.itemPrice, itemPrice) &&
            const DeepCollectionEquality().equals(other.delivery, delivery) &&
            const DeepCollectionEquality().equals(other.inStock, inStock) &&
            const DeepCollectionEquality().equals(
                other._singleValuePriceModifiers, _singleValuePriceModifiers) &&
            const DeepCollectionEquality()
                .equals(other._imageUrls, _imageUrls) &&
            const DeepCollectionEquality()
                .equals(other._videoUrls, _videoUrls));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(_name),
      const DeepCollectionEquality().hash(itemCategory),
      const DeepCollectionEquality().hash(currency),
      const DeepCollectionEquality().hash(_description),
      const DeepCollectionEquality().hash(itemPrice),
      const DeepCollectionEquality().hash(delivery),
      const DeepCollectionEquality().hash(inStock),
      const DeepCollectionEquality().hash(_singleValuePriceModifiers),
      const DeepCollectionEquality().hash(_imageUrls),
      const DeepCollectionEquality().hash(_videoUrls));

  @JsonKey(ignore: true)
  @override
  _$$_ItemFormCopyWith<_$_ItemForm> get copyWith =>
      __$$_ItemFormCopyWithImpl<_$_ItemForm>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemFormToJson(
      this,
    );
  }
}

abstract class _ItemForm implements ItemForm {
  const factory _ItemForm(
      {final String? id,
      final List<LocalName>? name,
      final String? itemCategory,
      final String? currency,
      final List<LocalDescription>? description,
      final double? itemPrice,
      final DeliveryReq? delivery,
      final int? inStock,
      final List<SingleValuePriceModifierForm>? singleValuePriceModifiers,
      final List<String>? imageUrls,
      final List<String>? videoUrls}) = _$_ItemForm;

  factory _ItemForm.fromJson(Map<String, dynamic> json) = _$_ItemForm.fromJson;

  @override
  String? get id;
  @override
  List<LocalName>? get name;
  @override
  String? get itemCategory;
  @override
  String? get currency;
  @override
  List<LocalDescription>? get description;
  @override
  double? get itemPrice;
  @override
  DeliveryReq? get delivery;
  @override
  int? get inStock;
  @override
  List<SingleValuePriceModifierForm>? get singleValuePriceModifiers;
  @override
  List<String>? get imageUrls;
  @override
  List<String>? get videoUrls;
  @override
  @JsonKey(ignore: true)
  _$$_ItemFormCopyWith<_$_ItemForm> get copyWith =>
      throw _privateConstructorUsedError;
}

LocalName _$LocalNameFromJson(Map<String, dynamic> json) {
  return _LocalName.fromJson(json);
}

/// @nodoc
mixin _$LocalName {
  String get locale => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocalNameCopyWith<LocalName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalNameCopyWith<$Res> {
  factory $LocalNameCopyWith(LocalName value, $Res Function(LocalName) then) =
      _$LocalNameCopyWithImpl<$Res>;
  $Res call({String locale, String name});
}

/// @nodoc
class _$LocalNameCopyWithImpl<$Res> implements $LocalNameCopyWith<$Res> {
  _$LocalNameCopyWithImpl(this._value, this._then);

  final LocalName _value;
  // ignore: unused_field
  final $Res Function(LocalName) _then;

  @override
  $Res call({
    Object? locale = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_LocalNameCopyWith<$Res> implements $LocalNameCopyWith<$Res> {
  factory _$$_LocalNameCopyWith(
          _$_LocalName value, $Res Function(_$_LocalName) then) =
      __$$_LocalNameCopyWithImpl<$Res>;
  @override
  $Res call({String locale, String name});
}

/// @nodoc
class __$$_LocalNameCopyWithImpl<$Res> extends _$LocalNameCopyWithImpl<$Res>
    implements _$$_LocalNameCopyWith<$Res> {
  __$$_LocalNameCopyWithImpl(
      _$_LocalName _value, $Res Function(_$_LocalName) _then)
      : super(_value, (v) => _then(v as _$_LocalName));

  @override
  _$_LocalName get _value => super._value as _$_LocalName;

  @override
  $Res call({
    Object? locale = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_LocalName(
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
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
class _$_LocalName implements _LocalName {
  const _$_LocalName({required this.locale, required this.name});

  factory _$_LocalName.fromJson(Map<String, dynamic> json) =>
      _$$_LocalNameFromJson(json);

  @override
  final String locale;
  @override
  final String name;

  @override
  String toString() {
    return 'LocalName(locale: $locale, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocalName &&
            const DeepCollectionEquality().equals(other.locale, locale) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(locale),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_LocalNameCopyWith<_$_LocalName> get copyWith =>
      __$$_LocalNameCopyWithImpl<_$_LocalName>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocalNameToJson(
      this,
    );
  }
}

abstract class _LocalName implements LocalName {
  const factory _LocalName(
      {required final String locale,
      required final String name}) = _$_LocalName;

  factory _LocalName.fromJson(Map<String, dynamic> json) =
      _$_LocalName.fromJson;

  @override
  String get locale;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_LocalNameCopyWith<_$_LocalName> get copyWith =>
      throw _privateConstructorUsedError;
}

SingleValuePriceModifierForm _$SingleValuePriceModifierFormFromJson(
    Map<String, dynamic> json) {
  return _SingleValuePriceModifierForm.fromJson(json);
}

/// @nodoc
mixin _$SingleValuePriceModifierForm {
  double? get value => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SingleValuePriceModifierFormCopyWith<SingleValuePriceModifierForm>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleValuePriceModifierFormCopyWith<$Res> {
  factory $SingleValuePriceModifierFormCopyWith(
          SingleValuePriceModifierForm value,
          $Res Function(SingleValuePriceModifierForm) then) =
      _$SingleValuePriceModifierFormCopyWithImpl<$Res>;
  $Res call({double? value, String type});
}

/// @nodoc
class _$SingleValuePriceModifierFormCopyWithImpl<$Res>
    implements $SingleValuePriceModifierFormCopyWith<$Res> {
  _$SingleValuePriceModifierFormCopyWithImpl(this._value, this._then);

  final SingleValuePriceModifierForm _value;
  // ignore: unused_field
  final $Res Function(SingleValuePriceModifierForm) _then;

  @override
  $Res call({
    Object? value = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_SingleValuePriceModifierFormCopyWith<$Res>
    implements $SingleValuePriceModifierFormCopyWith<$Res> {
  factory _$$_SingleValuePriceModifierFormCopyWith(
          _$_SingleValuePriceModifierForm value,
          $Res Function(_$_SingleValuePriceModifierForm) then) =
      __$$_SingleValuePriceModifierFormCopyWithImpl<$Res>;
  @override
  $Res call({double? value, String type});
}

/// @nodoc
class __$$_SingleValuePriceModifierFormCopyWithImpl<$Res>
    extends _$SingleValuePriceModifierFormCopyWithImpl<$Res>
    implements _$$_SingleValuePriceModifierFormCopyWith<$Res> {
  __$$_SingleValuePriceModifierFormCopyWithImpl(
      _$_SingleValuePriceModifierForm _value,
      $Res Function(_$_SingleValuePriceModifierForm) _then)
      : super(_value, (v) => _then(v as _$_SingleValuePriceModifierForm));

  @override
  _$_SingleValuePriceModifierForm get _value =>
      super._value as _$_SingleValuePriceModifierForm;

  @override
  $Res call({
    Object? value = freezed,
    Object? type = freezed,
  }) {
    return _then(_$_SingleValuePriceModifierForm(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SingleValuePriceModifierForm implements _SingleValuePriceModifierForm {
  const _$_SingleValuePriceModifierForm({this.value, required this.type});

  factory _$_SingleValuePriceModifierForm.fromJson(Map<String, dynamic> json) =>
      _$$_SingleValuePriceModifierFormFromJson(json);

  @override
  final double? value;
  @override
  final String type;

  @override
  String toString() {
    return 'SingleValuePriceModifierForm(value: $value, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SingleValuePriceModifierForm &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  _$$_SingleValuePriceModifierFormCopyWith<_$_SingleValuePriceModifierForm>
      get copyWith => __$$_SingleValuePriceModifierFormCopyWithImpl<
          _$_SingleValuePriceModifierForm>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SingleValuePriceModifierFormToJson(
      this,
    );
  }
}

abstract class _SingleValuePriceModifierForm
    implements SingleValuePriceModifierForm {
  const factory _SingleValuePriceModifierForm(
      {final double? value,
      required final String type}) = _$_SingleValuePriceModifierForm;

  factory _SingleValuePriceModifierForm.fromJson(Map<String, dynamic> json) =
      _$_SingleValuePriceModifierForm.fromJson;

  @override
  double? get value;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$_SingleValuePriceModifierFormCopyWith<_$_SingleValuePriceModifierForm>
      get copyWith => throw _privateConstructorUsedError;
}

DeliveryReq _$DeliveryReqFromJson(Map<String, dynamic> json) {
  return _DeliveryReq.fromJson(json);
}

/// @nodoc
mixin _$DeliveryReq {
  double? get price => throw _privateConstructorUsedError;
  String? get preparationTime => throw _privateConstructorUsedError;
  String? get deliveryTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryReqCopyWith<DeliveryReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryReqCopyWith<$Res> {
  factory $DeliveryReqCopyWith(
          DeliveryReq value, $Res Function(DeliveryReq) then) =
      _$DeliveryReqCopyWithImpl<$Res>;
  $Res call({double? price, String? preparationTime, String? deliveryTime});
}

/// @nodoc
class _$DeliveryReqCopyWithImpl<$Res> implements $DeliveryReqCopyWith<$Res> {
  _$DeliveryReqCopyWithImpl(this._value, this._then);

  final DeliveryReq _value;
  // ignore: unused_field
  final $Res Function(DeliveryReq) _then;

  @override
  $Res call({
    Object? price = freezed,
    Object? preparationTime = freezed,
    Object? deliveryTime = freezed,
  }) {
    return _then(_value.copyWith(
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      preparationTime: preparationTime == freezed
          ? _value.preparationTime
          : preparationTime // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryTime: deliveryTime == freezed
          ? _value.deliveryTime
          : deliveryTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_DeliveryReqCopyWith<$Res>
    implements $DeliveryReqCopyWith<$Res> {
  factory _$$_DeliveryReqCopyWith(
          _$_DeliveryReq value, $Res Function(_$_DeliveryReq) then) =
      __$$_DeliveryReqCopyWithImpl<$Res>;
  @override
  $Res call({double? price, String? preparationTime, String? deliveryTime});
}

/// @nodoc
class __$$_DeliveryReqCopyWithImpl<$Res> extends _$DeliveryReqCopyWithImpl<$Res>
    implements _$$_DeliveryReqCopyWith<$Res> {
  __$$_DeliveryReqCopyWithImpl(
      _$_DeliveryReq _value, $Res Function(_$_DeliveryReq) _then)
      : super(_value, (v) => _then(v as _$_DeliveryReq));

  @override
  _$_DeliveryReq get _value => super._value as _$_DeliveryReq;

  @override
  $Res call({
    Object? price = freezed,
    Object? preparationTime = freezed,
    Object? deliveryTime = freezed,
  }) {
    return _then(_$_DeliveryReq(
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      preparationTime: preparationTime == freezed
          ? _value.preparationTime
          : preparationTime // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryTime: deliveryTime == freezed
          ? _value.deliveryTime
          : deliveryTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeliveryReq implements _DeliveryReq {
  const _$_DeliveryReq({this.price, this.preparationTime, this.deliveryTime});

  factory _$_DeliveryReq.fromJson(Map<String, dynamic> json) =>
      _$$_DeliveryReqFromJson(json);

  @override
  final double? price;
  @override
  final String? preparationTime;
  @override
  final String? deliveryTime;

  @override
  String toString() {
    return 'DeliveryReq(price: $price, preparationTime: $preparationTime, deliveryTime: $deliveryTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeliveryReq &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality()
                .equals(other.preparationTime, preparationTime) &&
            const DeepCollectionEquality()
                .equals(other.deliveryTime, deliveryTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(preparationTime),
      const DeepCollectionEquality().hash(deliveryTime));

  @JsonKey(ignore: true)
  @override
  _$$_DeliveryReqCopyWith<_$_DeliveryReq> get copyWith =>
      __$$_DeliveryReqCopyWithImpl<_$_DeliveryReq>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeliveryReqToJson(
      this,
    );
  }
}

abstract class _DeliveryReq implements DeliveryReq {
  const factory _DeliveryReq(
      {final double? price,
      final String? preparationTime,
      final String? deliveryTime}) = _$_DeliveryReq;

  factory _DeliveryReq.fromJson(Map<String, dynamic> json) =
      _$_DeliveryReq.fromJson;

  @override
  double? get price;
  @override
  String? get preparationTime;
  @override
  String? get deliveryTime;
  @override
  @JsonKey(ignore: true)
  _$$_DeliveryReqCopyWith<_$_DeliveryReq> get copyWith =>
      throw _privateConstructorUsedError;
}
