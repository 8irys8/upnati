// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'commit_order_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommitOrderPayload _$CommitOrderPayloadFromJson(Map<String, dynamic> json) {
  return _CommitOrderPayload.fromJson(json);
}

/// @nodoc
mixin _$CommitOrderPayload {
  ItemCollection? get itemCollections => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;
  String? get paymentMethod => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommitOrderPayloadCopyWith<CommitOrderPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommitOrderPayloadCopyWith<$Res> {
  factory $CommitOrderPayloadCopyWith(
          CommitOrderPayload value, $Res Function(CommitOrderPayload) then) =
      _$CommitOrderPayloadCopyWithImpl<$Res>;
  $Res call(
      {ItemCollection? itemCollections,
      String? currency,
      String? paymentMethod});

  $ItemCollectionCopyWith<$Res>? get itemCollections;
}

/// @nodoc
class _$CommitOrderPayloadCopyWithImpl<$Res>
    implements $CommitOrderPayloadCopyWith<$Res> {
  _$CommitOrderPayloadCopyWithImpl(this._value, this._then);

  final CommitOrderPayload _value;
  // ignore: unused_field
  final $Res Function(CommitOrderPayload) _then;

  @override
  $Res call({
    Object? itemCollections = freezed,
    Object? currency = freezed,
    Object? paymentMethod = freezed,
  }) {
    return _then(_value.copyWith(
      itemCollections: itemCollections == freezed
          ? _value.itemCollections
          : itemCollections // ignore: cast_nullable_to_non_nullable
              as ItemCollection?,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethod: paymentMethod == freezed
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$_CommitOrderPayloadCopyWith<$Res>
    implements $CommitOrderPayloadCopyWith<$Res> {
  factory _$$_CommitOrderPayloadCopyWith(_$_CommitOrderPayload value,
          $Res Function(_$_CommitOrderPayload) then) =
      __$$_CommitOrderPayloadCopyWithImpl<$Res>;
  @override
  $Res call(
      {ItemCollection? itemCollections,
      String? currency,
      String? paymentMethod});

  @override
  $ItemCollectionCopyWith<$Res>? get itemCollections;
}

/// @nodoc
class __$$_CommitOrderPayloadCopyWithImpl<$Res>
    extends _$CommitOrderPayloadCopyWithImpl<$Res>
    implements _$$_CommitOrderPayloadCopyWith<$Res> {
  __$$_CommitOrderPayloadCopyWithImpl(
      _$_CommitOrderPayload _value, $Res Function(_$_CommitOrderPayload) _then)
      : super(_value, (v) => _then(v as _$_CommitOrderPayload));

  @override
  _$_CommitOrderPayload get _value => super._value as _$_CommitOrderPayload;

  @override
  $Res call({
    Object? itemCollections = freezed,
    Object? currency = freezed,
    Object? paymentMethod = freezed,
  }) {
    return _then(_$_CommitOrderPayload(
      itemCollections: itemCollections == freezed
          ? _value.itemCollections
          : itemCollections // ignore: cast_nullable_to_non_nullable
              as ItemCollection?,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethod: paymentMethod == freezed
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CommitOrderPayload implements _CommitOrderPayload {
  const _$_CommitOrderPayload(
      {this.itemCollections, this.currency, this.paymentMethod});

  factory _$_CommitOrderPayload.fromJson(Map<String, dynamic> json) =>
      _$$_CommitOrderPayloadFromJson(json);

  @override
  final ItemCollection? itemCollections;
  @override
  final String? currency;
  @override
  final String? paymentMethod;

  @override
  String toString() {
    return 'CommitOrderPayload(itemCollections: $itemCollections, currency: $currency, paymentMethod: $paymentMethod)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommitOrderPayload &&
            const DeepCollectionEquality()
                .equals(other.itemCollections, itemCollections) &&
            const DeepCollectionEquality().equals(other.currency, currency) &&
            const DeepCollectionEquality()
                .equals(other.paymentMethod, paymentMethod));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(itemCollections),
      const DeepCollectionEquality().hash(currency),
      const DeepCollectionEquality().hash(paymentMethod));

  @JsonKey(ignore: true)
  @override
  _$$_CommitOrderPayloadCopyWith<_$_CommitOrderPayload> get copyWith =>
      __$$_CommitOrderPayloadCopyWithImpl<_$_CommitOrderPayload>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommitOrderPayloadToJson(
      this,
    );
  }
}

abstract class _CommitOrderPayload implements CommitOrderPayload {
  const factory _CommitOrderPayload(
      {final ItemCollection? itemCollections,
      final String? currency,
      final String? paymentMethod}) = _$_CommitOrderPayload;

  factory _CommitOrderPayload.fromJson(Map<String, dynamic> json) =
      _$_CommitOrderPayload.fromJson;

  @override
  ItemCollection? get itemCollections;
  @override
  String? get currency;
  @override
  String? get paymentMethod;
  @override
  @JsonKey(ignore: true)
  _$$_CommitOrderPayloadCopyWith<_$_CommitOrderPayload> get copyWith =>
      throw _privateConstructorUsedError;
}
