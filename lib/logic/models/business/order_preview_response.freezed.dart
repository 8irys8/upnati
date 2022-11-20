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
  String? get businessId => throw _privateConstructorUsedError;
  String? get deliveryOptionId => throw _privateConstructorUsedError;
  ItemCollection? get itemCollections => throw _privateConstructorUsedError;

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
      {String? businessId,
      String? deliveryOptionId,
      ItemCollection? itemCollections});

  $ItemCollectionCopyWith<$Res>? get itemCollections;
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
    Object? businessId = freezed,
    Object? deliveryOptionId = freezed,
    Object? itemCollections = freezed,
  }) {
    return _then(_value.copyWith(
      businessId: businessId == freezed
          ? _value.businessId
          : businessId // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryOptionId: deliveryOptionId == freezed
          ? _value.deliveryOptionId
          : deliveryOptionId // ignore: cast_nullable_to_non_nullable
              as String?,
      itemCollections: itemCollections == freezed
          ? _value.itemCollections
          : itemCollections // ignore: cast_nullable_to_non_nullable
              as ItemCollection?,
    ));
  }

  @override
  $ItemCollectionCopyWith<$Res>? get itemCollections {
    if (_value.itemCollections == null) {
      return null;
    }

    return $ItemCollectionCopyWith<$Res>(_value.itemCollections!, (value) {
      return _then(_value.copyWith(itemCollections: value));
    });
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
      {String? businessId,
      String? deliveryOptionId,
      ItemCollection? itemCollections});

  @override
  $ItemCollectionCopyWith<$Res>? get itemCollections;
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
    Object? businessId = freezed,
    Object? deliveryOptionId = freezed,
    Object? itemCollections = freezed,
  }) {
    return _then(_$_OrderPreviewResponse(
      businessId: businessId == freezed
          ? _value.businessId
          : businessId // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryOptionId: deliveryOptionId == freezed
          ? _value.deliveryOptionId
          : deliveryOptionId // ignore: cast_nullable_to_non_nullable
              as String?,
      itemCollections: itemCollections == freezed
          ? _value.itemCollections
          : itemCollections // ignore: cast_nullable_to_non_nullable
              as ItemCollection?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_OrderPreviewResponse implements _OrderPreviewResponse {
  const _$_OrderPreviewResponse(
      {this.businessId, this.deliveryOptionId, this.itemCollections});

  factory _$_OrderPreviewResponse.fromJson(Map<String, dynamic> json) =>
      _$$_OrderPreviewResponseFromJson(json);

  @override
  final String? businessId;
  @override
  final String? deliveryOptionId;
  @override
  final ItemCollection? itemCollections;

  @override
  String toString() {
    return 'OrderPreviewResponse(businessId: $businessId, deliveryOptionId: $deliveryOptionId, itemCollections: $itemCollections)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderPreviewResponse &&
            const DeepCollectionEquality()
                .equals(other.businessId, businessId) &&
            const DeepCollectionEquality()
                .equals(other.deliveryOptionId, deliveryOptionId) &&
            const DeepCollectionEquality()
                .equals(other.itemCollections, itemCollections));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(businessId),
      const DeepCollectionEquality().hash(deliveryOptionId),
      const DeepCollectionEquality().hash(itemCollections));

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
      {final String? businessId,
      final String? deliveryOptionId,
      final ItemCollection? itemCollections}) = _$_OrderPreviewResponse;

  factory _OrderPreviewResponse.fromJson(Map<String, dynamic> json) =
      _$_OrderPreviewResponse.fromJson;

  @override
  String? get businessId;
  @override
  String? get deliveryOptionId;
  @override
  ItemCollection? get itemCollections;
  @override
  @JsonKey(ignore: true)
  _$$_OrderPreviewResponseCopyWith<_$_OrderPreviewResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

DeliveryInfo _$DeliveryInfoFromJson(Map<String, dynamic> json) {
  return _DeliveryInfo.fromJson(json);
}

/// @nodoc
mixin _$DeliveryInfo {
  String? get address => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get postalCode => throw _privateConstructorUsedError;
  String? get receiverName => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryInfoCopyWith<DeliveryInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryInfoCopyWith<$Res> {
  factory $DeliveryInfoCopyWith(
          DeliveryInfo value, $Res Function(DeliveryInfo) then) =
      _$DeliveryInfoCopyWithImpl<$Res>;
  $Res call(
      {String? address,
      String? city,
      String? postalCode,
      String? receiverName,
      String? phoneNumber,
      String? email});
}

/// @nodoc
class _$DeliveryInfoCopyWithImpl<$Res> implements $DeliveryInfoCopyWith<$Res> {
  _$DeliveryInfoCopyWithImpl(this._value, this._then);

  final DeliveryInfo _value;
  // ignore: unused_field
  final $Res Function(DeliveryInfo) _then;

  @override
  $Res call({
    Object? address = freezed,
    Object? city = freezed,
    Object? postalCode = freezed,
    Object? receiverName = freezed,
    Object? phoneNumber = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      postalCode: postalCode == freezed
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String?,
      receiverName: receiverName == freezed
          ? _value.receiverName
          : receiverName // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_DeliveryInfoCopyWith<$Res>
    implements $DeliveryInfoCopyWith<$Res> {
  factory _$$_DeliveryInfoCopyWith(
          _$_DeliveryInfo value, $Res Function(_$_DeliveryInfo) then) =
      __$$_DeliveryInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? address,
      String? city,
      String? postalCode,
      String? receiverName,
      String? phoneNumber,
      String? email});
}

/// @nodoc
class __$$_DeliveryInfoCopyWithImpl<$Res>
    extends _$DeliveryInfoCopyWithImpl<$Res>
    implements _$$_DeliveryInfoCopyWith<$Res> {
  __$$_DeliveryInfoCopyWithImpl(
      _$_DeliveryInfo _value, $Res Function(_$_DeliveryInfo) _then)
      : super(_value, (v) => _then(v as _$_DeliveryInfo));

  @override
  _$_DeliveryInfo get _value => super._value as _$_DeliveryInfo;

  @override
  $Res call({
    Object? address = freezed,
    Object? city = freezed,
    Object? postalCode = freezed,
    Object? receiverName = freezed,
    Object? phoneNumber = freezed,
    Object? email = freezed,
  }) {
    return _then(_$_DeliveryInfo(
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      postalCode: postalCode == freezed
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String?,
      receiverName: receiverName == freezed
          ? _value.receiverName
          : receiverName // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeliveryInfo implements _DeliveryInfo {
  const _$_DeliveryInfo(
      {this.address,
      this.city,
      this.postalCode,
      this.receiverName,
      this.phoneNumber,
      this.email});

  factory _$_DeliveryInfo.fromJson(Map<String, dynamic> json) =>
      _$$_DeliveryInfoFromJson(json);

  @override
  final String? address;
  @override
  final String? city;
  @override
  final String? postalCode;
  @override
  final String? receiverName;
  @override
  final String? phoneNumber;
  @override
  final String? email;

  @override
  String toString() {
    return 'DeliveryInfo(address: $address, city: $city, postalCode: $postalCode, receiverName: $receiverName, phoneNumber: $phoneNumber, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeliveryInfo &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality()
                .equals(other.postalCode, postalCode) &&
            const DeepCollectionEquality()
                .equals(other.receiverName, receiverName) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(city),
      const DeepCollectionEquality().hash(postalCode),
      const DeepCollectionEquality().hash(receiverName),
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  _$$_DeliveryInfoCopyWith<_$_DeliveryInfo> get copyWith =>
      __$$_DeliveryInfoCopyWithImpl<_$_DeliveryInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeliveryInfoToJson(
      this,
    );
  }
}

abstract class _DeliveryInfo implements DeliveryInfo {
  const factory _DeliveryInfo(
      {final String? address,
      final String? city,
      final String? postalCode,
      final String? receiverName,
      final String? phoneNumber,
      final String? email}) = _$_DeliveryInfo;

  factory _DeliveryInfo.fromJson(Map<String, dynamic> json) =
      _$_DeliveryInfo.fromJson;

  @override
  String? get address;
  @override
  String? get city;
  @override
  String? get postalCode;
  @override
  String? get receiverName;
  @override
  String? get phoneNumber;
  @override
  String? get email;
  @override
  @JsonKey(ignore: true)
  _$$_DeliveryInfoCopyWith<_$_DeliveryInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
