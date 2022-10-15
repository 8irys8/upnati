// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'business_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BusinessForm _$BusinessFormFromJson(Map<String, dynamic> json) {
  return _BusinessForm.fromJson(json);
}

/// @nodoc
mixin _$BusinessForm {
  String? get name => throw _privateConstructorUsedError;
  String? get cityName =>
      throw _privateConstructorUsedError; // final LocationResponse? location,
  List<LocalDescription>? get description => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  String? get defaultLocale => throw _privateConstructorUsedError;
  String? get deliveryScope => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BusinessFormCopyWith<BusinessForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessFormCopyWith<$Res> {
  factory $BusinessFormCopyWith(
          BusinessForm value, $Res Function(BusinessForm) then) =
      _$BusinessFormCopyWithImpl<$Res>;
  $Res call(
      {String? name,
      String? cityName,
      List<LocalDescription>? description,
      String? category,
      String? defaultLocale,
      String? deliveryScope});
}

/// @nodoc
class _$BusinessFormCopyWithImpl<$Res> implements $BusinessFormCopyWith<$Res> {
  _$BusinessFormCopyWithImpl(this._value, this._then);

  final BusinessForm _value;
  // ignore: unused_field
  final $Res Function(BusinessForm) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? cityName = freezed,
    Object? description = freezed,
    Object? category = freezed,
    Object? defaultLocale = freezed,
    Object? deliveryScope = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      cityName: cityName == freezed
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as List<LocalDescription>?,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultLocale: defaultLocale == freezed
          ? _value.defaultLocale
          : defaultLocale // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryScope: deliveryScope == freezed
          ? _value.deliveryScope
          : deliveryScope // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_BusinessFormCopyWith<$Res>
    implements $BusinessFormCopyWith<$Res> {
  factory _$$_BusinessFormCopyWith(
          _$_BusinessForm value, $Res Function(_$_BusinessForm) then) =
      __$$_BusinessFormCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? name,
      String? cityName,
      List<LocalDescription>? description,
      String? category,
      String? defaultLocale,
      String? deliveryScope});
}

/// @nodoc
class __$$_BusinessFormCopyWithImpl<$Res>
    extends _$BusinessFormCopyWithImpl<$Res>
    implements _$$_BusinessFormCopyWith<$Res> {
  __$$_BusinessFormCopyWithImpl(
      _$_BusinessForm _value, $Res Function(_$_BusinessForm) _then)
      : super(_value, (v) => _then(v as _$_BusinessForm));

  @override
  _$_BusinessForm get _value => super._value as _$_BusinessForm;

  @override
  $Res call({
    Object? name = freezed,
    Object? cityName = freezed,
    Object? description = freezed,
    Object? category = freezed,
    Object? defaultLocale = freezed,
    Object? deliveryScope = freezed,
  }) {
    return _then(_$_BusinessForm(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      cityName: cityName == freezed
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value._description
          : description // ignore: cast_nullable_to_non_nullable
              as List<LocalDescription>?,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultLocale: defaultLocale == freezed
          ? _value.defaultLocale
          : defaultLocale // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryScope: deliveryScope == freezed
          ? _value.deliveryScope
          : deliveryScope // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_BusinessForm implements _BusinessForm {
  const _$_BusinessForm(
      {this.name,
      this.cityName,
      final List<LocalDescription>? description,
      this.category,
      this.defaultLocale,
      this.deliveryScope})
      : _description = description;

  factory _$_BusinessForm.fromJson(Map<String, dynamic> json) =>
      _$$_BusinessFormFromJson(json);

  @override
  final String? name;
  @override
  final String? cityName;
// final LocationResponse? location,
  final List<LocalDescription>? _description;
// final LocationResponse? location,
  @override
  List<LocalDescription>? get description {
    final value = _description;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? category;
  @override
  final String? defaultLocale;
  @override
  final String? deliveryScope;

  @override
  String toString() {
    return 'BusinessForm(name: $name, cityName: $cityName, description: $description, category: $category, defaultLocale: $defaultLocale, deliveryScope: $deliveryScope)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BusinessForm &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.cityName, cityName) &&
            const DeepCollectionEquality()
                .equals(other._description, _description) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality()
                .equals(other.defaultLocale, defaultLocale) &&
            const DeepCollectionEquality()
                .equals(other.deliveryScope, deliveryScope));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(cityName),
      const DeepCollectionEquality().hash(_description),
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(defaultLocale),
      const DeepCollectionEquality().hash(deliveryScope));

  @JsonKey(ignore: true)
  @override
  _$$_BusinessFormCopyWith<_$_BusinessForm> get copyWith =>
      __$$_BusinessFormCopyWithImpl<_$_BusinessForm>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BusinessFormToJson(
      this,
    );
  }
}

abstract class _BusinessForm implements BusinessForm {
  const factory _BusinessForm(
      {final String? name,
      final String? cityName,
      final List<LocalDescription>? description,
      final String? category,
      final String? defaultLocale,
      final String? deliveryScope}) = _$_BusinessForm;

  factory _BusinessForm.fromJson(Map<String, dynamic> json) =
      _$_BusinessForm.fromJson;

  @override
  String? get name;
  @override
  String? get cityName;
  @override // final LocationResponse? location,
  List<LocalDescription>? get description;
  @override
  String? get category;
  @override
  String? get defaultLocale;
  @override
  String? get deliveryScope;
  @override
  @JsonKey(ignore: true)
  _$$_BusinessFormCopyWith<_$_BusinessForm> get copyWith =>
      throw _privateConstructorUsedError;
}
