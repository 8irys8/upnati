// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'item_info_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ItemInfoResponse _$ItemInfoResponseFromJson(Map<String, dynamic> json) {
  return _ItemInfoResponse.fromJson(json);
}

/// @nodoc
mixin _$ItemInfoResponse {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get amount => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemInfoResponseCopyWith<ItemInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemInfoResponseCopyWith<$Res> {
  factory $ItemInfoResponseCopyWith(
          ItemInfoResponse value, $Res Function(ItemInfoResponse) then) =
      _$ItemInfoResponseCopyWithImpl<$Res>;
  $Res call({String? id, String? name, int? amount, double? price});
}

/// @nodoc
class _$ItemInfoResponseCopyWithImpl<$Res>
    implements $ItemInfoResponseCopyWith<$Res> {
  _$ItemInfoResponseCopyWithImpl(this._value, this._then);

  final ItemInfoResponse _value;
  // ignore: unused_field
  final $Res Function(ItemInfoResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? amount = freezed,
    Object? price = freezed,
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
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$$_ItemInfoResponseCopyWith<$Res>
    implements $ItemInfoResponseCopyWith<$Res> {
  factory _$$_ItemInfoResponseCopyWith(
          _$_ItemInfoResponse value, $Res Function(_$_ItemInfoResponse) then) =
      __$$_ItemInfoResponseCopyWithImpl<$Res>;
  @override
  $Res call({String? id, String? name, int? amount, double? price});
}

/// @nodoc
class __$$_ItemInfoResponseCopyWithImpl<$Res>
    extends _$ItemInfoResponseCopyWithImpl<$Res>
    implements _$$_ItemInfoResponseCopyWith<$Res> {
  __$$_ItemInfoResponseCopyWithImpl(
      _$_ItemInfoResponse _value, $Res Function(_$_ItemInfoResponse) _then)
      : super(_value, (v) => _then(v as _$_ItemInfoResponse));

  @override
  _$_ItemInfoResponse get _value => super._value as _$_ItemInfoResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? amount = freezed,
    Object? price = freezed,
  }) {
    return _then(_$_ItemInfoResponse(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ItemInfoResponse implements _ItemInfoResponse {
  const _$_ItemInfoResponse({this.id, this.name, this.amount, this.price});

  factory _$_ItemInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ItemInfoResponseFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final int? amount;
  @override
  final double? price;

  @override
  String toString() {
    return 'ItemInfoResponse(id: $id, name: $name, amount: $amount, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemInfoResponse &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.price, price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(price));

  @JsonKey(ignore: true)
  @override
  _$$_ItemInfoResponseCopyWith<_$_ItemInfoResponse> get copyWith =>
      __$$_ItemInfoResponseCopyWithImpl<_$_ItemInfoResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemInfoResponseToJson(
      this,
    );
  }
}

abstract class _ItemInfoResponse implements ItemInfoResponse {
  const factory _ItemInfoResponse(
      {final String? id,
      final String? name,
      final int? amount,
      final double? price}) = _$_ItemInfoResponse;

  factory _ItemInfoResponse.fromJson(Map<String, dynamic> json) =
      _$_ItemInfoResponse.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  int? get amount;
  @override
  double? get price;
  @override
  @JsonKey(ignore: true)
  _$$_ItemInfoResponseCopyWith<_$_ItemInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
