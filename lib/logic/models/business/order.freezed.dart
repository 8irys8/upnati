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
  String? get id => throw _privateConstructorUsedError;
  String? get creationDate => throw _privateConstructorUsedError;
  Business get business => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  List<ItemImpl> get items => throw _privateConstructorUsedError;
  Map<dynamic, int> get amount => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  double get purchasePrice => throw _privateConstructorUsedError;
  int get discountPercents => throw _privateConstructorUsedError;
  double get oldTotal => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderCopyWith<Order> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCopyWith<$Res> {
  factory $OrderCopyWith(Order value, $Res Function(Order) then) =
      _$OrderCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? creationDate,
      Business business,
      String userId,
      List<ItemImpl> items,
      Map<dynamic, int> amount,
      String status,
      double? price,
      double purchasePrice,
      int discountPercents,
      double oldTotal});

  $BusinessCopyWith<$Res> get business;
}

/// @nodoc
class _$OrderCopyWithImpl<$Res> implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._value, this._then);

  final Order _value;
  // ignore: unused_field
  final $Res Function(Order) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? creationDate = freezed,
    Object? business = freezed,
    Object? userId = freezed,
    Object? items = freezed,
    Object? amount = freezed,
    Object? status = freezed,
    Object? price = freezed,
    Object? purchasePrice = freezed,
    Object? discountPercents = freezed,
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
      business: business == freezed
          ? _value.business
          : business // ignore: cast_nullable_to_non_nullable
              as Business,
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
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
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
      oldTotal: oldTotal == freezed
          ? _value.oldTotal
          : oldTotal // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }

  @override
  $BusinessCopyWith<$Res> get business {
    return $BusinessCopyWith<$Res>(_value.business, (value) {
      return _then(_value.copyWith(business: value));
    });
  }
}

/// @nodoc
abstract class _$$_OrderCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$$_OrderCopyWith(_$_Order value, $Res Function(_$_Order) then) =
      __$$_OrderCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? creationDate,
      Business business,
      String userId,
      List<ItemImpl> items,
      Map<dynamic, int> amount,
      String status,
      double? price,
      double purchasePrice,
      int discountPercents,
      double oldTotal});

  @override
  $BusinessCopyWith<$Res> get business;
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
    Object? id = freezed,
    Object? creationDate = freezed,
    Object? business = freezed,
    Object? userId = freezed,
    Object? items = freezed,
    Object? amount = freezed,
    Object? status = freezed,
    Object? price = freezed,
    Object? purchasePrice = freezed,
    Object? discountPercents = freezed,
    Object? oldTotal = freezed,
  }) {
    return _then(_$_Order(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      creationDate: creationDate == freezed
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as String?,
      business: business == freezed
          ? _value.business
          : business // ignore: cast_nullable_to_non_nullable
              as Business,
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
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
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
      oldTotal: oldTotal == freezed
          ? _value.oldTotal
          : oldTotal // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Order implements _Order {
  const _$_Order(
      {this.id,
      this.creationDate,
      required this.business,
      required this.userId,
      required final List<ItemImpl> items,
      required final Map<dynamic, int> amount,
      required this.status,
      this.price,
      required this.purchasePrice,
      required this.discountPercents,
      required this.oldTotal})
      : _items = items,
        _amount = amount;

  factory _$_Order.fromJson(Map<String, dynamic> json) =>
      _$$_OrderFromJson(json);

  @override
  final String? id;
  @override
  final String? creationDate;
  @override
  final Business business;
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
  final String status;
  @override
  final double? price;
  @override
  final double purchasePrice;
  @override
  final int discountPercents;
  @override
  final double oldTotal;

  @override
  String toString() {
    return 'Order(id: $id, creationDate: $creationDate, business: $business, userId: $userId, items: $items, amount: $amount, status: $status, price: $price, purchasePrice: $purchasePrice, discountPercents: $discountPercents, oldTotal: $oldTotal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Order &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.creationDate, creationDate) &&
            const DeepCollectionEquality().equals(other.business, business) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            const DeepCollectionEquality().equals(other._amount, _amount) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality()
                .equals(other.purchasePrice, purchasePrice) &&
            const DeepCollectionEquality()
                .equals(other.discountPercents, discountPercents) &&
            const DeepCollectionEquality().equals(other.oldTotal, oldTotal));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(creationDate),
      const DeepCollectionEquality().hash(business),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(_items),
      const DeepCollectionEquality().hash(_amount),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(purchasePrice),
      const DeepCollectionEquality().hash(discountPercents),
      const DeepCollectionEquality().hash(oldTotal));

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
      {final String? id,
      final String? creationDate,
      required final Business business,
      required final String userId,
      required final List<ItemImpl> items,
      required final Map<dynamic, int> amount,
      required final String status,
      final double? price,
      required final double purchasePrice,
      required final int discountPercents,
      required final double oldTotal}) = _$_Order;

  factory _Order.fromJson(Map<String, dynamic> json) = _$_Order.fromJson;

  @override
  String? get id;
  @override
  String? get creationDate;
  @override
  Business get business;
  @override
  String get userId;
  @override
  List<ItemImpl> get items;
  @override
  Map<dynamic, int> get amount;
  @override
  String get status;
  @override
  double? get price;
  @override
  double get purchasePrice;
  @override
  int get discountPercents;
  @override
  double get oldTotal;
  @override
  @JsonKey(ignore: true)
  _$$_OrderCopyWith<_$_Order> get copyWith =>
      throw _privateConstructorUsedError;
}

Business _$BusinessFromJson(Map<String, dynamic> json) {
  return _Business.fromJson(json);
}

/// @nodoc
mixin _$Business {
  String? get id => throw _privateConstructorUsedError;
  String? get creationDate => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get defaultLocale => throw _privateConstructorUsedError;
  Map<dynamic, DescriptionLocalData> get description =>
      throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  LocationResponse get location => throw _privateConstructorUsedError;
  List<String>? get imageUrls => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BusinessCopyWith<Business> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessCopyWith<$Res> {
  factory $BusinessCopyWith(Business value, $Res Function(Business) then) =
      _$BusinessCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? creationDate,
      String name,
      String defaultLocale,
      Map<dynamic, DescriptionLocalData> description,
      String category,
      LocationResponse location,
      List<String>? imageUrls});

  $LocationResponseCopyWith<$Res> get location;
}

/// @nodoc
class _$BusinessCopyWithImpl<$Res> implements $BusinessCopyWith<$Res> {
  _$BusinessCopyWithImpl(this._value, this._then);

  final Business _value;
  // ignore: unused_field
  final $Res Function(Business) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? creationDate = freezed,
    Object? name = freezed,
    Object? defaultLocale = freezed,
    Object? description = freezed,
    Object? category = freezed,
    Object? location = freezed,
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
              as String,
      defaultLocale: defaultLocale == freezed
          ? _value.defaultLocale
          : defaultLocale // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, DescriptionLocalData>,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationResponse,
      imageUrls: imageUrls == freezed
          ? _value.imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }

  @override
  $LocationResponseCopyWith<$Res> get location {
    return $LocationResponseCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value));
    });
  }
}

/// @nodoc
abstract class _$$_BusinessCopyWith<$Res> implements $BusinessCopyWith<$Res> {
  factory _$$_BusinessCopyWith(
          _$_Business value, $Res Function(_$_Business) then) =
      __$$_BusinessCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? creationDate,
      String name,
      String defaultLocale,
      Map<dynamic, DescriptionLocalData> description,
      String category,
      LocationResponse location,
      List<String>? imageUrls});

  @override
  $LocationResponseCopyWith<$Res> get location;
}

/// @nodoc
class __$$_BusinessCopyWithImpl<$Res> extends _$BusinessCopyWithImpl<$Res>
    implements _$$_BusinessCopyWith<$Res> {
  __$$_BusinessCopyWithImpl(
      _$_Business _value, $Res Function(_$_Business) _then)
      : super(_value, (v) => _then(v as _$_Business));

  @override
  _$_Business get _value => super._value as _$_Business;

  @override
  $Res call({
    Object? id = freezed,
    Object? creationDate = freezed,
    Object? name = freezed,
    Object? defaultLocale = freezed,
    Object? description = freezed,
    Object? category = freezed,
    Object? location = freezed,
    Object? imageUrls = freezed,
  }) {
    return _then(_$_Business(
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
              as String,
      defaultLocale: defaultLocale == freezed
          ? _value.defaultLocale
          : defaultLocale // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value._description
          : description // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, DescriptionLocalData>,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationResponse,
      imageUrls: imageUrls == freezed
          ? _value._imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Business implements _Business {
  const _$_Business(
      {this.id,
      this.creationDate,
      required this.name,
      required this.defaultLocale,
      required final Map<dynamic, DescriptionLocalData> description,
      required this.category,
      required this.location,
      final List<String>? imageUrls})
      : _description = description,
        _imageUrls = imageUrls;

  factory _$_Business.fromJson(Map<String, dynamic> json) =>
      _$$_BusinessFromJson(json);

  @override
  final String? id;
  @override
  final String? creationDate;
  @override
  final String name;
  @override
  final String defaultLocale;
  final Map<dynamic, DescriptionLocalData> _description;
  @override
  Map<dynamic, DescriptionLocalData> get description {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_description);
  }

  @override
  final String category;
  @override
  final LocationResponse location;
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
    return 'Business(id: $id, creationDate: $creationDate, name: $name, defaultLocale: $defaultLocale, description: $description, category: $category, location: $location, imageUrls: $imageUrls)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Business &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.creationDate, creationDate) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.defaultLocale, defaultLocale) &&
            const DeepCollectionEquality()
                .equals(other._description, _description) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality().equals(other.location, location) &&
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
      const DeepCollectionEquality().hash(defaultLocale),
      const DeepCollectionEquality().hash(_description),
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(location),
      const DeepCollectionEquality().hash(_imageUrls));

  @JsonKey(ignore: true)
  @override
  _$$_BusinessCopyWith<_$_Business> get copyWith =>
      __$$_BusinessCopyWithImpl<_$_Business>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BusinessToJson(
      this,
    );
  }
}

abstract class _Business implements Business {
  const factory _Business(
      {final String? id,
      final String? creationDate,
      required final String name,
      required final String defaultLocale,
      required final Map<dynamic, DescriptionLocalData> description,
      required final String category,
      required final LocationResponse location,
      final List<String>? imageUrls}) = _$_Business;

  factory _Business.fromJson(Map<String, dynamic> json) = _$_Business.fromJson;

  @override
  String? get id;
  @override
  String? get creationDate;
  @override
  String get name;
  @override
  String get defaultLocale;
  @override
  Map<dynamic, DescriptionLocalData> get description;
  @override
  String get category;
  @override
  LocationResponse get location;
  @override
  List<String>? get imageUrls;
  @override
  @JsonKey(ignore: true)
  _$$_BusinessCopyWith<_$_Business> get copyWith =>
      throw _privateConstructorUsedError;
}
