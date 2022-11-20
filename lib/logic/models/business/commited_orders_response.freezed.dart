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
  String? get businessName => throw _privateConstructorUsedError;
  String? get businessId => throw _privateConstructorUsedError;
  List<ItemResponse>? get items => throw _privateConstructorUsedError;
  double? get oldTotal => throw _privateConstructorUsedError;
  double? get purchasePrice => throw _privateConstructorUsedError;
  int? get discountPercents => throw _privateConstructorUsedError;
  String? get paymentLink => throw _privateConstructorUsedError;

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
  $Res call(
      {String? businessName,
      String? businessId,
      List<ItemResponse>? items,
      double? oldTotal,
      double? purchasePrice,
      int? discountPercents,
      String? paymentLink});
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
    Object? businessName = freezed,
    Object? businessId = freezed,
    Object? items = freezed,
    Object? oldTotal = freezed,
    Object? purchasePrice = freezed,
    Object? discountPercents = freezed,
    Object? paymentLink = freezed,
  }) {
    return _then(_value.copyWith(
      businessName: businessName == freezed
          ? _value.businessName
          : businessName // ignore: cast_nullable_to_non_nullable
              as String?,
      businessId: businessId == freezed
          ? _value.businessId
          : businessId // ignore: cast_nullable_to_non_nullable
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
      paymentLink: paymentLink == freezed
          ? _value.paymentLink
          : paymentLink // ignore: cast_nullable_to_non_nullable
              as String?,
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
  $Res call(
      {String? businessName,
      String? businessId,
      List<ItemResponse>? items,
      double? oldTotal,
      double? purchasePrice,
      int? discountPercents,
      String? paymentLink});
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
    Object? businessName = freezed,
    Object? businessId = freezed,
    Object? items = freezed,
    Object? oldTotal = freezed,
    Object? purchasePrice = freezed,
    Object? discountPercents = freezed,
    Object? paymentLink = freezed,
  }) {
    return _then(_$_CommitedOrdersResponse(
      businessName: businessName == freezed
          ? _value.businessName
          : businessName // ignore: cast_nullable_to_non_nullable
              as String?,
      businessId: businessId == freezed
          ? _value.businessId
          : businessId // ignore: cast_nullable_to_non_nullable
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
      paymentLink: paymentLink == freezed
          ? _value.paymentLink
          : paymentLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_CommitedOrdersResponse implements _CommitedOrdersResponse {
  const _$_CommitedOrdersResponse(
      {this.businessName,
      this.businessId,
      final List<ItemResponse>? items,
      this.oldTotal,
      this.purchasePrice,
      this.discountPercents,
      this.paymentLink})
      : _items = items;

  factory _$_CommitedOrdersResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CommitedOrdersResponseFromJson(json);

  @override
  final String? businessName;
  @override
  final String? businessId;
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
  final String? paymentLink;

  @override
  String toString() {
    return 'CommitedOrdersResponse(businessName: $businessName, businessId: $businessId, items: $items, oldTotal: $oldTotal, purchasePrice: $purchasePrice, discountPercents: $discountPercents, paymentLink: $paymentLink)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommitedOrdersResponse &&
            const DeepCollectionEquality()
                .equals(other.businessName, businessName) &&
            const DeepCollectionEquality()
                .equals(other.businessId, businessId) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            const DeepCollectionEquality().equals(other.oldTotal, oldTotal) &&
            const DeepCollectionEquality()
                .equals(other.purchasePrice, purchasePrice) &&
            const DeepCollectionEquality()
                .equals(other.discountPercents, discountPercents) &&
            const DeepCollectionEquality()
                .equals(other.paymentLink, paymentLink));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(businessName),
      const DeepCollectionEquality().hash(businessId),
      const DeepCollectionEquality().hash(_items),
      const DeepCollectionEquality().hash(oldTotal),
      const DeepCollectionEquality().hash(purchasePrice),
      const DeepCollectionEquality().hash(discountPercents),
      const DeepCollectionEquality().hash(paymentLink));

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
      {final String? businessName,
      final String? businessId,
      final List<ItemResponse>? items,
      final double? oldTotal,
      final double? purchasePrice,
      final int? discountPercents,
      final String? paymentLink}) = _$_CommitedOrdersResponse;

  factory _CommitedOrdersResponse.fromJson(Map<String, dynamic> json) =
      _$_CommitedOrdersResponse.fromJson;

  @override
  String? get businessName;
  @override
  String? get businessId;
  @override
  List<ItemResponse>? get items;
  @override
  double? get oldTotal;
  @override
  double? get purchasePrice;
  @override
  int? get discountPercents;
  @override
  String? get paymentLink;
  @override
  @JsonKey(ignore: true)
  _$$_CommitedOrdersResponseCopyWith<_$_CommitedOrdersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
