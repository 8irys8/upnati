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
