// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'item_collection.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ItemCollection _$ItemCollectionFromJson(Map<String, dynamic> json) {
  return _ItemCollection.fromJson(json);
}

/// @nodoc
mixin _$ItemCollection {
  Map<dynamic, int> get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemCollectionCopyWith<ItemCollection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemCollectionCopyWith<$Res> {
  factory $ItemCollectionCopyWith(
          ItemCollection value, $Res Function(ItemCollection) then) =
      _$ItemCollectionCopyWithImpl<$Res>;
  $Res call({Map<dynamic, int> amount});
}

/// @nodoc
class _$ItemCollectionCopyWithImpl<$Res>
    implements $ItemCollectionCopyWith<$Res> {
  _$ItemCollectionCopyWithImpl(this._value, this._then);

  final ItemCollection _value;
  // ignore: unused_field
  final $Res Function(ItemCollection) _then;

  @override
  $Res call({
    Object? amount = freezed,
  }) {
    return _then(_value.copyWith(
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, int>,
    ));
  }
}

/// @nodoc
abstract class _$$_ItemCollectionCopyWith<$Res>
    implements $ItemCollectionCopyWith<$Res> {
  factory _$$_ItemCollectionCopyWith(
          _$_ItemCollection value, $Res Function(_$_ItemCollection) then) =
      __$$_ItemCollectionCopyWithImpl<$Res>;
  @override
  $Res call({Map<dynamic, int> amount});
}

/// @nodoc
class __$$_ItemCollectionCopyWithImpl<$Res>
    extends _$ItemCollectionCopyWithImpl<$Res>
    implements _$$_ItemCollectionCopyWith<$Res> {
  __$$_ItemCollectionCopyWithImpl(
      _$_ItemCollection _value, $Res Function(_$_ItemCollection) _then)
      : super(_value, (v) => _then(v as _$_ItemCollection));

  @override
  _$_ItemCollection get _value => super._value as _$_ItemCollection;

  @override
  $Res call({
    Object? amount = freezed,
  }) {
    return _then(_$_ItemCollection(
      amount: amount == freezed
          ? _value._amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ItemCollection implements _ItemCollection {
  const _$_ItemCollection({required final Map<dynamic, int> amount})
      : _amount = amount;

  factory _$_ItemCollection.fromJson(Map<String, dynamic> json) =>
      _$$_ItemCollectionFromJson(json);

  final Map<dynamic, int> _amount;
  @override
  Map<dynamic, int> get amount {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_amount);
  }

  @override
  String toString() {
    return 'ItemCollection(amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemCollection &&
            const DeepCollectionEquality().equals(other._amount, _amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_amount));

  @JsonKey(ignore: true)
  @override
  _$$_ItemCollectionCopyWith<_$_ItemCollection> get copyWith =>
      __$$_ItemCollectionCopyWithImpl<_$_ItemCollection>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemCollectionToJson(
      this,
    );
  }
}

abstract class _ItemCollection implements ItemCollection {
  const factory _ItemCollection({required final Map<dynamic, int> amount}) =
      _$_ItemCollection;

  factory _ItemCollection.fromJson(Map<String, dynamic> json) =
      _$_ItemCollection.fromJson;

  @override
  Map<dynamic, int> get amount;
  @override
  @JsonKey(ignore: true)
  _$$_ItemCollectionCopyWith<_$_ItemCollection> get copyWith =>
      throw _privateConstructorUsedError;
}
