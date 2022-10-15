// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'business_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BusinessResponse _$BusinessResponseFromJson(Map<String, dynamic> json) {
  return _BusinessResponse.fromJson(json);
}

/// @nodoc
mixin _$BusinessResponse {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get defaultLocale => throw _privateConstructorUsedError;
  Description? get description => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  LocationBusinessResponse? get location => throw _privateConstructorUsedError;
  List<String>? get imageUrls => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BusinessResponseCopyWith<BusinessResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessResponseCopyWith<$Res> {
  factory $BusinessResponseCopyWith(
          BusinessResponse value, $Res Function(BusinessResponse) then) =
      _$BusinessResponseCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? name,
      String? defaultLocale,
      Description? description,
      String? category,
      LocationBusinessResponse? location,
      List<String>? imageUrls});

  $DescriptionCopyWith<$Res>? get description;
  $LocationBusinessResponseCopyWith<$Res>? get location;
}

/// @nodoc
class _$BusinessResponseCopyWithImpl<$Res>
    implements $BusinessResponseCopyWith<$Res> {
  _$BusinessResponseCopyWithImpl(this._value, this._then);

  final BusinessResponse _value;
  // ignore: unused_field
  final $Res Function(BusinessResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
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
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultLocale: defaultLocale == freezed
          ? _value.defaultLocale
          : defaultLocale // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as Description?,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationBusinessResponse?,
      imageUrls: imageUrls == freezed
          ? _value.imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }

  @override
  $DescriptionCopyWith<$Res>? get description {
    if (_value.description == null) {
      return null;
    }

    return $DescriptionCopyWith<$Res>(_value.description!, (value) {
      return _then(_value.copyWith(description: value));
    });
  }

  @override
  $LocationBusinessResponseCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LocationBusinessResponseCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value));
    });
  }
}

/// @nodoc
abstract class _$$_BusinessResponseCopyWith<$Res>
    implements $BusinessResponseCopyWith<$Res> {
  factory _$$_BusinessResponseCopyWith(
          _$_BusinessResponse value, $Res Function(_$_BusinessResponse) then) =
      __$$_BusinessResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? name,
      String? defaultLocale,
      Description? description,
      String? category,
      LocationBusinessResponse? location,
      List<String>? imageUrls});

  @override
  $DescriptionCopyWith<$Res>? get description;
  @override
  $LocationBusinessResponseCopyWith<$Res>? get location;
}

/// @nodoc
class __$$_BusinessResponseCopyWithImpl<$Res>
    extends _$BusinessResponseCopyWithImpl<$Res>
    implements _$$_BusinessResponseCopyWith<$Res> {
  __$$_BusinessResponseCopyWithImpl(
      _$_BusinessResponse _value, $Res Function(_$_BusinessResponse) _then)
      : super(_value, (v) => _then(v as _$_BusinessResponse));

  @override
  _$_BusinessResponse get _value => super._value as _$_BusinessResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? defaultLocale = freezed,
    Object? description = freezed,
    Object? category = freezed,
    Object? location = freezed,
    Object? imageUrls = freezed,
  }) {
    return _then(_$_BusinessResponse(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultLocale: defaultLocale == freezed
          ? _value.defaultLocale
          : defaultLocale // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as Description?,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationBusinessResponse?,
      imageUrls: imageUrls == freezed
          ? _value._imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_BusinessResponse implements _BusinessResponse {
  const _$_BusinessResponse(
      {this.id,
      this.name,
      this.defaultLocale,
      this.description,
      this.category,
      this.location,
      final List<String>? imageUrls})
      : _imageUrls = imageUrls;

  factory _$_BusinessResponse.fromJson(Map<String, dynamic> json) =>
      _$$_BusinessResponseFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? defaultLocale;
  @override
  final Description? description;
  @override
  final String? category;
  @override
  final LocationBusinessResponse? location;
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
    return 'BusinessResponse(id: $id, name: $name, defaultLocale: $defaultLocale, description: $description, category: $category, location: $location, imageUrls: $imageUrls)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BusinessResponse &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.defaultLocale, defaultLocale) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
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
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(defaultLocale),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(location),
      const DeepCollectionEquality().hash(_imageUrls));

  @JsonKey(ignore: true)
  @override
  _$$_BusinessResponseCopyWith<_$_BusinessResponse> get copyWith =>
      __$$_BusinessResponseCopyWithImpl<_$_BusinessResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BusinessResponseToJson(
      this,
    );
  }
}

abstract class _BusinessResponse implements BusinessResponse {
  const factory _BusinessResponse(
      {final String? id,
      final String? name,
      final String? defaultLocale,
      final Description? description,
      final String? category,
      final LocationBusinessResponse? location,
      final List<String>? imageUrls}) = _$_BusinessResponse;

  factory _BusinessResponse.fromJson(Map<String, dynamic> json) =
      _$_BusinessResponse.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get defaultLocale;
  @override
  Description? get description;
  @override
  String? get category;
  @override
  LocationBusinessResponse? get location;
  @override
  List<String>? get imageUrls;
  @override
  @JsonKey(ignore: true)
  _$$_BusinessResponseCopyWith<_$_BusinessResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

LocationBusinessResponse _$LocationBusinessResponseFromJson(
    Map<String, dynamic> json) {
  return _LocationBusinessResponse.fromJson(json);
}

/// @nodoc
mixin _$LocationBusinessResponse {
  String? get country => throw _privateConstructorUsedError;
  String? get region => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationBusinessResponseCopyWith<LocationBusinessResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationBusinessResponseCopyWith<$Res> {
  factory $LocationBusinessResponseCopyWith(LocationBusinessResponse value,
          $Res Function(LocationBusinessResponse) then) =
      _$LocationBusinessResponseCopyWithImpl<$Res>;
  $Res call({String? country, String? region, String? city});
}

/// @nodoc
class _$LocationBusinessResponseCopyWithImpl<$Res>
    implements $LocationBusinessResponseCopyWith<$Res> {
  _$LocationBusinessResponseCopyWithImpl(this._value, this._then);

  final LocationBusinessResponse _value;
  // ignore: unused_field
  final $Res Function(LocationBusinessResponse) _then;

  @override
  $Res call({
    Object? country = freezed,
    Object? region = freezed,
    Object? city = freezed,
  }) {
    return _then(_value.copyWith(
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      region: region == freezed
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_LocationBusinessResponseCopyWith<$Res>
    implements $LocationBusinessResponseCopyWith<$Res> {
  factory _$$_LocationBusinessResponseCopyWith(
          _$_LocationBusinessResponse value,
          $Res Function(_$_LocationBusinessResponse) then) =
      __$$_LocationBusinessResponseCopyWithImpl<$Res>;
  @override
  $Res call({String? country, String? region, String? city});
}

/// @nodoc
class __$$_LocationBusinessResponseCopyWithImpl<$Res>
    extends _$LocationBusinessResponseCopyWithImpl<$Res>
    implements _$$_LocationBusinessResponseCopyWith<$Res> {
  __$$_LocationBusinessResponseCopyWithImpl(_$_LocationBusinessResponse _value,
      $Res Function(_$_LocationBusinessResponse) _then)
      : super(_value, (v) => _then(v as _$_LocationBusinessResponse));

  @override
  _$_LocationBusinessResponse get _value =>
      super._value as _$_LocationBusinessResponse;

  @override
  $Res call({
    Object? country = freezed,
    Object? region = freezed,
    Object? city = freezed,
  }) {
    return _then(_$_LocationBusinessResponse(
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      region: region == freezed
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocationBusinessResponse implements _LocationBusinessResponse {
  const _$_LocationBusinessResponse({this.country, this.region, this.city});

  factory _$_LocationBusinessResponse.fromJson(Map<String, dynamic> json) =>
      _$$_LocationBusinessResponseFromJson(json);

  @override
  final String? country;
  @override
  final String? region;
  @override
  final String? city;

  @override
  String toString() {
    return 'LocationBusinessResponse(country: $country, region: $region, city: $city)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationBusinessResponse &&
            const DeepCollectionEquality().equals(other.country, country) &&
            const DeepCollectionEquality().equals(other.region, region) &&
            const DeepCollectionEquality().equals(other.city, city));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(country),
      const DeepCollectionEquality().hash(region),
      const DeepCollectionEquality().hash(city));

  @JsonKey(ignore: true)
  @override
  _$$_LocationBusinessResponseCopyWith<_$_LocationBusinessResponse>
      get copyWith => __$$_LocationBusinessResponseCopyWithImpl<
          _$_LocationBusinessResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationBusinessResponseToJson(
      this,
    );
  }
}

abstract class _LocationBusinessResponse implements LocationBusinessResponse {
  const factory _LocationBusinessResponse(
      {final String? country,
      final String? region,
      final String? city}) = _$_LocationBusinessResponse;

  factory _LocationBusinessResponse.fromJson(Map<String, dynamic> json) =
      _$_LocationBusinessResponse.fromJson;

  @override
  String? get country;
  @override
  String? get region;
  @override
  String? get city;
  @override
  @JsonKey(ignore: true)
  _$$_LocationBusinessResponseCopyWith<_$_LocationBusinessResponse>
      get copyWith => throw _privateConstructorUsedError;
}
