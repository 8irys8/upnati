// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'signup_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SignupPayload _$SignupPayloadFromJson(Map<String, dynamic> json) {
  return _SignupPayload.fromJson(json);
}

/// @nodoc
mixin _$SignupPayload {
  String get fullName => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  LocationResponse get location => throw _privateConstructorUsedError;
  String get locale => throw _privateConstructorUsedError;
  BusinessForm? get business => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignupPayloadCopyWith<SignupPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupPayloadCopyWith<$Res> {
  factory $SignupPayloadCopyWith(
          SignupPayload value, $Res Function(SignupPayload) then) =
      _$SignupPayloadCopyWithImpl<$Res>;
  $Res call(
      {String fullName,
      String password,
      String email,
      String phoneNumber,
      LocationResponse location,
      String locale,
      BusinessForm? business});

  $LocationResponseCopyWith<$Res> get location;
  $BusinessFormCopyWith<$Res>? get business;
}

/// @nodoc
class _$SignupPayloadCopyWithImpl<$Res>
    implements $SignupPayloadCopyWith<$Res> {
  _$SignupPayloadCopyWithImpl(this._value, this._then);

  final SignupPayload _value;
  // ignore: unused_field
  final $Res Function(SignupPayload) _then;

  @override
  $Res call({
    Object? fullName = freezed,
    Object? password = freezed,
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? location = freezed,
    Object? locale = freezed,
    Object? business = freezed,
  }) {
    return _then(_value.copyWith(
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationResponse,
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
      business: business == freezed
          ? _value.business
          : business // ignore: cast_nullable_to_non_nullable
              as BusinessForm?,
    ));
  }

  @override
  $LocationResponseCopyWith<$Res> get location {
    return $LocationResponseCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value));
    });
  }

  @override
  $BusinessFormCopyWith<$Res>? get business {
    if (_value.business == null) {
      return null;
    }

    return $BusinessFormCopyWith<$Res>(_value.business!, (value) {
      return _then(_value.copyWith(business: value));
    });
  }
}

/// @nodoc
abstract class _$$_SignupPayloadCopyWith<$Res>
    implements $SignupPayloadCopyWith<$Res> {
  factory _$$_SignupPayloadCopyWith(
          _$_SignupPayload value, $Res Function(_$_SignupPayload) then) =
      __$$_SignupPayloadCopyWithImpl<$Res>;
  @override
  $Res call(
      {String fullName,
      String password,
      String email,
      String phoneNumber,
      LocationResponse location,
      String locale,
      BusinessForm? business});

  @override
  $LocationResponseCopyWith<$Res> get location;
  @override
  $BusinessFormCopyWith<$Res>? get business;
}

/// @nodoc
class __$$_SignupPayloadCopyWithImpl<$Res>
    extends _$SignupPayloadCopyWithImpl<$Res>
    implements _$$_SignupPayloadCopyWith<$Res> {
  __$$_SignupPayloadCopyWithImpl(
      _$_SignupPayload _value, $Res Function(_$_SignupPayload) _then)
      : super(_value, (v) => _then(v as _$_SignupPayload));

  @override
  _$_SignupPayload get _value => super._value as _$_SignupPayload;

  @override
  $Res call({
    Object? fullName = freezed,
    Object? password = freezed,
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? location = freezed,
    Object? locale = freezed,
    Object? business = freezed,
  }) {
    return _then(_$_SignupPayload(
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationResponse,
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
      business: business == freezed
          ? _value.business
          : business // ignore: cast_nullable_to_non_nullable
              as BusinessForm?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SignupPayload implements _SignupPayload {
  const _$_SignupPayload(
      {required this.fullName,
      required this.password,
      required this.email,
      required this.phoneNumber,
      required this.location,
      required this.locale,
      this.business});

  factory _$_SignupPayload.fromJson(Map<String, dynamic> json) =>
      _$$_SignupPayloadFromJson(json);

  @override
  final String fullName;
  @override
  final String password;
  @override
  final String email;
  @override
  final String phoneNumber;
  @override
  final LocationResponse location;
  @override
  final String locale;
  @override
  final BusinessForm? business;

  @override
  String toString() {
    return 'SignupPayload(fullName: $fullName, password: $password, email: $email, phoneNumber: $phoneNumber, location: $location, locale: $locale, business: $business)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignupPayload &&
            const DeepCollectionEquality().equals(other.fullName, fullName) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality().equals(other.locale, locale) &&
            const DeepCollectionEquality().equals(other.business, business));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(fullName),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(location),
      const DeepCollectionEquality().hash(locale),
      const DeepCollectionEquality().hash(business));

  @JsonKey(ignore: true)
  @override
  _$$_SignupPayloadCopyWith<_$_SignupPayload> get copyWith =>
      __$$_SignupPayloadCopyWithImpl<_$_SignupPayload>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SignupPayloadToJson(
      this,
    );
  }
}

abstract class _SignupPayload implements SignupPayload {
  const factory _SignupPayload(
      {required final String fullName,
      required final String password,
      required final String email,
      required final String phoneNumber,
      required final LocationResponse location,
      required final String locale,
      final BusinessForm? business}) = _$_SignupPayload;

  factory _SignupPayload.fromJson(Map<String, dynamic> json) =
      _$_SignupPayload.fromJson;

  @override
  String get fullName;
  @override
  String get password;
  @override
  String get email;
  @override
  String get phoneNumber;
  @override
  LocationResponse get location;
  @override
  String get locale;
  @override
  BusinessForm? get business;
  @override
  @JsonKey(ignore: true)
  _$$_SignupPayloadCopyWith<_$_SignupPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

BusinessForm _$BusinessFormFromJson(Map<String, dynamic> json) {
  return _BusinessForm.fromJson(json);
}

/// @nodoc
mixin _$BusinessForm {
  String get name => throw _privateConstructorUsedError;
  LocationResponse? get location => throw _privateConstructorUsedError;
  LocalDescription get description => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get defaultLocale => throw _privateConstructorUsedError;

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
      {String name,
      LocationResponse? location,
      LocalDescription description,
      String category,
      String defaultLocale});

  $LocationResponseCopyWith<$Res>? get location;
  $LocalDescriptionCopyWith<$Res> get description;
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
    Object? location = freezed,
    Object? description = freezed,
    Object? category = freezed,
    Object? defaultLocale = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationResponse?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as LocalDescription,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      defaultLocale: defaultLocale == freezed
          ? _value.defaultLocale
          : defaultLocale // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $LocationResponseCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LocationResponseCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value));
    });
  }

  @override
  $LocalDescriptionCopyWith<$Res> get description {
    return $LocalDescriptionCopyWith<$Res>(_value.description, (value) {
      return _then(_value.copyWith(description: value));
    });
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
      {String name,
      LocationResponse? location,
      LocalDescription description,
      String category,
      String defaultLocale});

  @override
  $LocationResponseCopyWith<$Res>? get location;
  @override
  $LocalDescriptionCopyWith<$Res> get description;
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
    Object? location = freezed,
    Object? description = freezed,
    Object? category = freezed,
    Object? defaultLocale = freezed,
  }) {
    return _then(_$_BusinessForm(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationResponse?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as LocalDescription,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      defaultLocale: defaultLocale == freezed
          ? _value.defaultLocale
          : defaultLocale // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BusinessForm implements _BusinessForm {
  const _$_BusinessForm(
      {required this.name,
      this.location,
      required this.description,
      required this.category,
      required this.defaultLocale});

  factory _$_BusinessForm.fromJson(Map<String, dynamic> json) =>
      _$$_BusinessFormFromJson(json);

  @override
  final String name;
  @override
  final LocationResponse? location;
  @override
  final LocalDescription description;
  @override
  final String category;
  @override
  final String defaultLocale;

  @override
  String toString() {
    return 'BusinessForm(name: $name, location: $location, description: $description, category: $category, defaultLocale: $defaultLocale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BusinessForm &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality()
                .equals(other.defaultLocale, defaultLocale));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(location),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(defaultLocale));

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
      {required final String name,
      final LocationResponse? location,
      required final LocalDescription description,
      required final String category,
      required final String defaultLocale}) = _$_BusinessForm;

  factory _BusinessForm.fromJson(Map<String, dynamic> json) =
      _$_BusinessForm.fromJson;

  @override
  String get name;
  @override
  LocationResponse? get location;
  @override
  LocalDescription get description;
  @override
  String get category;
  @override
  String get defaultLocale;
  @override
  @JsonKey(ignore: true)
  _$$_BusinessFormCopyWith<_$_BusinessForm> get copyWith =>
      throw _privateConstructorUsedError;
}

LocalDescription _$LocalDescriptionFromJson(Map<String, dynamic> json) {
  return _LocalDescription.fromJson(json);
}

/// @nodoc
mixin _$LocalDescription {
  String get locale => throw _privateConstructorUsedError;
  Description get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocalDescriptionCopyWith<LocalDescription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalDescriptionCopyWith<$Res> {
  factory $LocalDescriptionCopyWith(
          LocalDescription value, $Res Function(LocalDescription) then) =
      _$LocalDescriptionCopyWithImpl<$Res>;
  $Res call({String locale, Description description});

  $DescriptionCopyWith<$Res> get description;
}

/// @nodoc
class _$LocalDescriptionCopyWithImpl<$Res>
    implements $LocalDescriptionCopyWith<$Res> {
  _$LocalDescriptionCopyWithImpl(this._value, this._then);

  final LocalDescription _value;
  // ignore: unused_field
  final $Res Function(LocalDescription) _then;

  @override
  $Res call({
    Object? locale = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as Description,
    ));
  }

  @override
  $DescriptionCopyWith<$Res> get description {
    return $DescriptionCopyWith<$Res>(_value.description, (value) {
      return _then(_value.copyWith(description: value));
    });
  }
}

/// @nodoc
abstract class _$$_LocalDescriptionCopyWith<$Res>
    implements $LocalDescriptionCopyWith<$Res> {
  factory _$$_LocalDescriptionCopyWith(
          _$_LocalDescription value, $Res Function(_$_LocalDescription) then) =
      __$$_LocalDescriptionCopyWithImpl<$Res>;
  @override
  $Res call({String locale, Description description});

  @override
  $DescriptionCopyWith<$Res> get description;
}

/// @nodoc
class __$$_LocalDescriptionCopyWithImpl<$Res>
    extends _$LocalDescriptionCopyWithImpl<$Res>
    implements _$$_LocalDescriptionCopyWith<$Res> {
  __$$_LocalDescriptionCopyWithImpl(
      _$_LocalDescription _value, $Res Function(_$_LocalDescription) _then)
      : super(_value, (v) => _then(v as _$_LocalDescription));

  @override
  _$_LocalDescription get _value => super._value as _$_LocalDescription;

  @override
  $Res call({
    Object? locale = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_LocalDescription(
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as Description,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocalDescription implements _LocalDescription {
  const _$_LocalDescription({required this.locale, required this.description});

  factory _$_LocalDescription.fromJson(Map<String, dynamic> json) =>
      _$$_LocalDescriptionFromJson(json);

  @override
  final String locale;
  @override
  final Description description;

  @override
  String toString() {
    return 'LocalDescription(locale: $locale, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocalDescription &&
            const DeepCollectionEquality().equals(other.locale, locale) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(locale),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$$_LocalDescriptionCopyWith<_$_LocalDescription> get copyWith =>
      __$$_LocalDescriptionCopyWithImpl<_$_LocalDescription>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocalDescriptionToJson(
      this,
    );
  }
}

abstract class _LocalDescription implements LocalDescription {
  const factory _LocalDescription(
      {required final String locale,
      required final Description description}) = _$_LocalDescription;

  factory _LocalDescription.fromJson(Map<String, dynamic> json) =
      _$_LocalDescription.fromJson;

  @override
  String get locale;
  @override
  Description get description;
  @override
  @JsonKey(ignore: true)
  _$$_LocalDescriptionCopyWith<_$_LocalDescription> get copyWith =>
      throw _privateConstructorUsedError;
}

Description _$DescriptionFromJson(Map<String, dynamic> json) {
  return _Description.fromJson(json);
}

/// @nodoc
mixin _$Description {
  String get full => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DescriptionCopyWith<Description> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DescriptionCopyWith<$Res> {
  factory $DescriptionCopyWith(
          Description value, $Res Function(Description) then) =
      _$DescriptionCopyWithImpl<$Res>;
  $Res call({String full});
}

/// @nodoc
class _$DescriptionCopyWithImpl<$Res> implements $DescriptionCopyWith<$Res> {
  _$DescriptionCopyWithImpl(this._value, this._then);

  final Description _value;
  // ignore: unused_field
  final $Res Function(Description) _then;

  @override
  $Res call({
    Object? full = freezed,
  }) {
    return _then(_value.copyWith(
      full: full == freezed
          ? _value.full
          : full // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_DescriptionCopyWith<$Res>
    implements $DescriptionCopyWith<$Res> {
  factory _$$_DescriptionCopyWith(
          _$_Description value, $Res Function(_$_Description) then) =
      __$$_DescriptionCopyWithImpl<$Res>;
  @override
  $Res call({String full});
}

/// @nodoc
class __$$_DescriptionCopyWithImpl<$Res> extends _$DescriptionCopyWithImpl<$Res>
    implements _$$_DescriptionCopyWith<$Res> {
  __$$_DescriptionCopyWithImpl(
      _$_Description _value, $Res Function(_$_Description) _then)
      : super(_value, (v) => _then(v as _$_Description));

  @override
  _$_Description get _value => super._value as _$_Description;

  @override
  $Res call({
    Object? full = freezed,
  }) {
    return _then(_$_Description(
      full: full == freezed
          ? _value.full
          : full // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Description implements _Description {
  const _$_Description({required this.full});

  factory _$_Description.fromJson(Map<String, dynamic> json) =>
      _$$_DescriptionFromJson(json);

  @override
  final String full;

  @override
  String toString() {
    return 'Description(full: $full)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Description &&
            const DeepCollectionEquality().equals(other.full, full));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(full));

  @JsonKey(ignore: true)
  @override
  _$$_DescriptionCopyWith<_$_Description> get copyWith =>
      __$$_DescriptionCopyWithImpl<_$_Description>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DescriptionToJson(
      this,
    );
  }
}

abstract class _Description implements Description {
  const factory _Description({required final String full}) = _$_Description;

  factory _Description.fromJson(Map<String, dynamic> json) =
      _$_Description.fromJson;

  @override
  String get full;
  @override
  @JsonKey(ignore: true)
  _$$_DescriptionCopyWith<_$_Description> get copyWith =>
      throw _privateConstructorUsedError;
}
