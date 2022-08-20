// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthResponse _$AuthResponseFromJson(Map<String, dynamic> json) {
  return _AuthResponse.fromJson(json);
}

/// @nodoc
mixin _$AuthResponse {
  String? get token => throw _privateConstructorUsedError;
  String? get lastSeen => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get fullName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get locale => throw _privateConstructorUsedError;
  LocationResponse? get location => throw _privateConstructorUsedError;
  List<GrantedAuthority>? get authorities => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthResponseCopyWith<AuthResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthResponseCopyWith<$Res> {
  factory $AuthResponseCopyWith(
          AuthResponse value, $Res Function(AuthResponse) then) =
      _$AuthResponseCopyWithImpl<$Res>;
  $Res call(
      {String? token,
      String? lastSeen,
      String? id,
      String? fullName,
      String? email,
      String? role,
      String? phoneNumber,
      String? imageUrl,
      String? locale,
      LocationResponse? location,
      List<GrantedAuthority>? authorities});

  $LocationResponseCopyWith<$Res>? get location;
}

/// @nodoc
class _$AuthResponseCopyWithImpl<$Res> implements $AuthResponseCopyWith<$Res> {
  _$AuthResponseCopyWithImpl(this._value, this._then);

  final AuthResponse _value;
  // ignore: unused_field
  final $Res Function(AuthResponse) _then;

  @override
  $Res call({
    Object? token = freezed,
    Object? lastSeen = freezed,
    Object? id = freezed,
    Object? fullName = freezed,
    Object? email = freezed,
    Object? role = freezed,
    Object? phoneNumber = freezed,
    Object? imageUrl = freezed,
    Object? locale = freezed,
    Object? location = freezed,
    Object? authorities = freezed,
  }) {
    return _then(_value.copyWith(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      lastSeen: lastSeen == freezed
          ? _value.lastSeen
          : lastSeen // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationResponse?,
      authorities: authorities == freezed
          ? _value.authorities
          : authorities // ignore: cast_nullable_to_non_nullable
              as List<GrantedAuthority>?,
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
}

/// @nodoc
abstract class _$$_AuthResponseCopyWith<$Res>
    implements $AuthResponseCopyWith<$Res> {
  factory _$$_AuthResponseCopyWith(
          _$_AuthResponse value, $Res Function(_$_AuthResponse) then) =
      __$$_AuthResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? token,
      String? lastSeen,
      String? id,
      String? fullName,
      String? email,
      String? role,
      String? phoneNumber,
      String? imageUrl,
      String? locale,
      LocationResponse? location,
      List<GrantedAuthority>? authorities});

  @override
  $LocationResponseCopyWith<$Res>? get location;
}

/// @nodoc
class __$$_AuthResponseCopyWithImpl<$Res>
    extends _$AuthResponseCopyWithImpl<$Res>
    implements _$$_AuthResponseCopyWith<$Res> {
  __$$_AuthResponseCopyWithImpl(
      _$_AuthResponse _value, $Res Function(_$_AuthResponse) _then)
      : super(_value, (v) => _then(v as _$_AuthResponse));

  @override
  _$_AuthResponse get _value => super._value as _$_AuthResponse;

  @override
  $Res call({
    Object? token = freezed,
    Object? lastSeen = freezed,
    Object? id = freezed,
    Object? fullName = freezed,
    Object? email = freezed,
    Object? role = freezed,
    Object? phoneNumber = freezed,
    Object? imageUrl = freezed,
    Object? locale = freezed,
    Object? location = freezed,
    Object? authorities = freezed,
  }) {
    return _then(_$_AuthResponse(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      lastSeen: lastSeen == freezed
          ? _value.lastSeen
          : lastSeen // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationResponse?,
      authorities: authorities == freezed
          ? _value._authorities
          : authorities // ignore: cast_nullable_to_non_nullable
              as List<GrantedAuthority>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthResponse implements _AuthResponse {
  const _$_AuthResponse(
      {this.token,
      this.lastSeen,
      this.id,
      this.fullName,
      this.email,
      this.role,
      this.phoneNumber,
      this.imageUrl,
      this.locale,
      this.location,
      final List<GrantedAuthority>? authorities})
      : _authorities = authorities;

  factory _$_AuthResponse.fromJson(Map<String, dynamic> json) =>
      _$$_AuthResponseFromJson(json);

  @override
  final String? token;
  @override
  final String? lastSeen;
  @override
  final String? id;
  @override
  final String? fullName;
  @override
  final String? email;
  @override
  final String? role;
  @override
  final String? phoneNumber;
  @override
  final String? imageUrl;
  @override
  final String? locale;
  @override
  final LocationResponse? location;
  final List<GrantedAuthority>? _authorities;
  @override
  List<GrantedAuthority>? get authorities {
    final value = _authorities;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AuthResponse(token: $token, lastSeen: $lastSeen, id: $id, fullName: $fullName, email: $email, role: $role, phoneNumber: $phoneNumber, imageUrl: $imageUrl, locale: $locale, location: $location, authorities: $authorities)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthResponse &&
            const DeepCollectionEquality().equals(other.token, token) &&
            const DeepCollectionEquality().equals(other.lastSeen, lastSeen) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.fullName, fullName) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.role, role) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality().equals(other.locale, locale) &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality()
                .equals(other._authorities, _authorities));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(token),
      const DeepCollectionEquality().hash(lastSeen),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(fullName),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(role),
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(locale),
      const DeepCollectionEquality().hash(location),
      const DeepCollectionEquality().hash(_authorities));

  @JsonKey(ignore: true)
  @override
  _$$_AuthResponseCopyWith<_$_AuthResponse> get copyWith =>
      __$$_AuthResponseCopyWithImpl<_$_AuthResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthResponseToJson(
      this,
    );
  }
}

abstract class _AuthResponse implements AuthResponse {
  const factory _AuthResponse(
      {final String? token,
      final String? lastSeen,
      final String? id,
      final String? fullName,
      final String? email,
      final String? role,
      final String? phoneNumber,
      final String? imageUrl,
      final String? locale,
      final LocationResponse? location,
      final List<GrantedAuthority>? authorities}) = _$_AuthResponse;

  factory _AuthResponse.fromJson(Map<String, dynamic> json) =
      _$_AuthResponse.fromJson;

  @override
  String? get token;
  @override
  String? get lastSeen;
  @override
  String? get id;
  @override
  String? get fullName;
  @override
  String? get email;
  @override
  String? get role;
  @override
  String? get phoneNumber;
  @override
  String? get imageUrl;
  @override
  String? get locale;
  @override
  LocationResponse? get location;
  @override
  List<GrantedAuthority>? get authorities;
  @override
  @JsonKey(ignore: true)
  _$$_AuthResponseCopyWith<_$_AuthResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

GrantedAuthority _$GrantedAuthorityFromJson(Map<String, dynamic> json) {
  return _GrantedAuthority.fromJson(json);
}

/// @nodoc
mixin _$GrantedAuthority {
  String? get authority => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GrantedAuthorityCopyWith<GrantedAuthority> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GrantedAuthorityCopyWith<$Res> {
  factory $GrantedAuthorityCopyWith(
          GrantedAuthority value, $Res Function(GrantedAuthority) then) =
      _$GrantedAuthorityCopyWithImpl<$Res>;
  $Res call({String? authority});
}

/// @nodoc
class _$GrantedAuthorityCopyWithImpl<$Res>
    implements $GrantedAuthorityCopyWith<$Res> {
  _$GrantedAuthorityCopyWithImpl(this._value, this._then);

  final GrantedAuthority _value;
  // ignore: unused_field
  final $Res Function(GrantedAuthority) _then;

  @override
  $Res call({
    Object? authority = freezed,
  }) {
    return _then(_value.copyWith(
      authority: authority == freezed
          ? _value.authority
          : authority // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_GrantedAuthorityCopyWith<$Res>
    implements $GrantedAuthorityCopyWith<$Res> {
  factory _$$_GrantedAuthorityCopyWith(
          _$_GrantedAuthority value, $Res Function(_$_GrantedAuthority) then) =
      __$$_GrantedAuthorityCopyWithImpl<$Res>;
  @override
  $Res call({String? authority});
}

/// @nodoc
class __$$_GrantedAuthorityCopyWithImpl<$Res>
    extends _$GrantedAuthorityCopyWithImpl<$Res>
    implements _$$_GrantedAuthorityCopyWith<$Res> {
  __$$_GrantedAuthorityCopyWithImpl(
      _$_GrantedAuthority _value, $Res Function(_$_GrantedAuthority) _then)
      : super(_value, (v) => _then(v as _$_GrantedAuthority));

  @override
  _$_GrantedAuthority get _value => super._value as _$_GrantedAuthority;

  @override
  $Res call({
    Object? authority = freezed,
  }) {
    return _then(_$_GrantedAuthority(
      authority: authority == freezed
          ? _value.authority
          : authority // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GrantedAuthority implements _GrantedAuthority {
  const _$_GrantedAuthority({this.authority});

  factory _$_GrantedAuthority.fromJson(Map<String, dynamic> json) =>
      _$$_GrantedAuthorityFromJson(json);

  @override
  final String? authority;

  @override
  String toString() {
    return 'GrantedAuthority(authority: $authority)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GrantedAuthority &&
            const DeepCollectionEquality().equals(other.authority, authority));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(authority));

  @JsonKey(ignore: true)
  @override
  _$$_GrantedAuthorityCopyWith<_$_GrantedAuthority> get copyWith =>
      __$$_GrantedAuthorityCopyWithImpl<_$_GrantedAuthority>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GrantedAuthorityToJson(
      this,
    );
  }
}

abstract class _GrantedAuthority implements GrantedAuthority {
  const factory _GrantedAuthority({final String? authority}) =
      _$_GrantedAuthority;

  factory _GrantedAuthority.fromJson(Map<String, dynamic> json) =
      _$_GrantedAuthority.fromJson;

  @override
  String? get authority;
  @override
  @JsonKey(ignore: true)
  _$$_GrantedAuthorityCopyWith<_$_GrantedAuthority> get copyWith =>
      throw _privateConstructorUsedError;
}
