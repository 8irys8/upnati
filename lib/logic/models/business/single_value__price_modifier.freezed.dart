// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'single_value__price_modifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SingleValuePriceModifier _$SingleValuePriceModifierFromJson(
    Map<String, dynamic> json) {
  return _SingleValuePriceModifier.fromJson(json);
}

/// @nodoc
mixin _$SingleValuePriceModifier {
  double? get value => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SingleValuePriceModifierCopyWith<SingleValuePriceModifier> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleValuePriceModifierCopyWith<$Res> {
  factory $SingleValuePriceModifierCopyWith(SingleValuePriceModifier value,
          $Res Function(SingleValuePriceModifier) then) =
      _$SingleValuePriceModifierCopyWithImpl<$Res>;
  $Res call({double? value, String? type});
}

/// @nodoc
class _$SingleValuePriceModifierCopyWithImpl<$Res>
    implements $SingleValuePriceModifierCopyWith<$Res> {
  _$SingleValuePriceModifierCopyWithImpl(this._value, this._then);

  final SingleValuePriceModifier _value;
  // ignore: unused_field
  final $Res Function(SingleValuePriceModifier) _then;

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
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_SingleValuePriceModifierCopyWith<$Res>
    implements $SingleValuePriceModifierCopyWith<$Res> {
  factory _$$_SingleValuePriceModifierCopyWith(
          _$_SingleValuePriceModifier value,
          $Res Function(_$_SingleValuePriceModifier) then) =
      __$$_SingleValuePriceModifierCopyWithImpl<$Res>;
  @override
  $Res call({double? value, String? type});
}

/// @nodoc
class __$$_SingleValuePriceModifierCopyWithImpl<$Res>
    extends _$SingleValuePriceModifierCopyWithImpl<$Res>
    implements _$$_SingleValuePriceModifierCopyWith<$Res> {
  __$$_SingleValuePriceModifierCopyWithImpl(_$_SingleValuePriceModifier _value,
      $Res Function(_$_SingleValuePriceModifier) _then)
      : super(_value, (v) => _then(v as _$_SingleValuePriceModifier));

  @override
  _$_SingleValuePriceModifier get _value =>
      super._value as _$_SingleValuePriceModifier;

  @override
  $Res call({
    Object? value = freezed,
    Object? type = freezed,
  }) {
    return _then(_$_SingleValuePriceModifier(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SingleValuePriceModifier implements _SingleValuePriceModifier {
  const _$_SingleValuePriceModifier({this.value, this.type});

  factory _$_SingleValuePriceModifier.fromJson(Map<String, dynamic> json) =>
      _$$_SingleValuePriceModifierFromJson(json);

  @override
  final double? value;
  @override
  final String? type;

  @override
  String toString() {
    return 'SingleValuePriceModifier(value: $value, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SingleValuePriceModifier &&
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
  _$$_SingleValuePriceModifierCopyWith<_$_SingleValuePriceModifier>
      get copyWith => __$$_SingleValuePriceModifierCopyWithImpl<
          _$_SingleValuePriceModifier>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SingleValuePriceModifierToJson(
      this,
    );
  }
}

abstract class _SingleValuePriceModifier implements SingleValuePriceModifier {
  const factory _SingleValuePriceModifier(
      {final double? value, final String? type}) = _$_SingleValuePriceModifier;

  factory _SingleValuePriceModifier.fromJson(Map<String, dynamic> json) =
      _$_SingleValuePriceModifier.fromJson;

  @override
  double? get value;
  @override
  String? get type;
  @override
  @JsonKey(ignore: true)
  _$$_SingleValuePriceModifierCopyWith<_$_SingleValuePriceModifier>
      get copyWith => throw _privateConstructorUsedError;
}
