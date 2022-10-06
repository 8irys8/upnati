// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_detail_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserDetailResponse _$UserDetailResponseFromJson(Map<String, dynamic> json) {
  return _UserDetailResponse.fromJson(json);
}

/// @nodoc
mixin _$UserDetailResponse {
  String? get id => throw _privateConstructorUsedError;
  String? get fullName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError; //enums
  String? get locale => throw _privateConstructorUsedError; // en, he
  LocationResponse? get location => throw _privateConstructorUsedError;
  String? get lastSeen => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  List<String>? get images => throw _privateConstructorUsedError;
  String? get businessId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDetailResponseCopyWith<UserDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailResponseCopyWith<$Res> {
  factory $UserDetailResponseCopyWith(
          UserDetailResponse value, $Res Function(UserDetailResponse) then) =
      _$UserDetailResponseCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? fullName,
      String? email,
      String? role,
      String? locale,
      LocationResponse? location,
      String? lastSeen,
      String? phoneNumber,
      List<String>? images,
      String? businessId});

  $LocationResponseCopyWith<$Res>? get location;
}

/// @nodoc
class _$UserDetailResponseCopyWithImpl<$Res>
    implements $UserDetailResponseCopyWith<$Res> {
  _$UserDetailResponseCopyWithImpl(this._value, this._then);

  final UserDetailResponse _value;
  // ignore: unused_field
  final $Res Function(UserDetailResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? fullName = freezed,
    Object? email = freezed,
    Object? role = freezed,
    Object? locale = freezed,
    Object? location = freezed,
    Object? lastSeen = freezed,
    Object? phoneNumber = freezed,
    Object? images = freezed,
    Object? businessId = freezed,
  }) {
    return _then(_value.copyWith(
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
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationResponse?,
      lastSeen: lastSeen == freezed
          ? _value.lastSeen
          : lastSeen // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      businessId: businessId == freezed
          ? _value.businessId
          : businessId // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$_UserDetailResponseCopyWith<$Res>
    implements $UserDetailResponseCopyWith<$Res> {
  factory _$$_UserDetailResponseCopyWith(_$_UserDetailResponse value,
          $Res Function(_$_UserDetailResponse) then) =
      __$$_UserDetailResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? fullName,
      String? email,
      String? role,
      String? locale,
      LocationResponse? location,
      String? lastSeen,
      String? phoneNumber,
      List<String>? images,
      String? businessId});

  @override
  $LocationResponseCopyWith<$Res>? get location;
}

/// @nodoc
class __$$_UserDetailResponseCopyWithImpl<$Res>
    extends _$UserDetailResponseCopyWithImpl<$Res>
    implements _$$_UserDetailResponseCopyWith<$Res> {
  __$$_UserDetailResponseCopyWithImpl(
      _$_UserDetailResponse _value, $Res Function(_$_UserDetailResponse) _then)
      : super(_value, (v) => _then(v as _$_UserDetailResponse));

  @override
  _$_UserDetailResponse get _value => super._value as _$_UserDetailResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? fullName = freezed,
    Object? email = freezed,
    Object? role = freezed,
    Object? locale = freezed,
    Object? location = freezed,
    Object? lastSeen = freezed,
    Object? phoneNumber = freezed,
    Object? images = freezed,
    Object? businessId = freezed,
  }) {
    return _then(_$_UserDetailResponse(
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
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationResponse?,
      lastSeen: lastSeen == freezed
          ? _value.lastSeen
          : lastSeen // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      images: images == freezed
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      businessId: businessId == freezed
          ? _value.businessId
          : businessId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_UserDetailResponse implements _UserDetailResponse {
  const _$_UserDetailResponse(
      {this.id,
      this.fullName,
      this.email,
      this.role,
      this.locale,
      this.location,
      this.lastSeen,
      this.phoneNumber,
      final List<String>? images,
      this.businessId})
      : _images = images;

  factory _$_UserDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$$_UserDetailResponseFromJson(json);

  @override
  final String? id;
  @override
  final String? fullName;
  @override
  final String? email;
  @override
  final String? role;
//enums
  @override
  final String? locale;
// en, he
  @override
  final LocationResponse? location;
  @override
  final String? lastSeen;
  @override
  final String? phoneNumber;
  final List<String>? _images;
  @override
  List<String>? get images {
    final value = _images;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? businessId;

  @override
  String toString() {
    return 'UserDetailResponse(id: $id, fullName: $fullName, email: $email, role: $role, locale: $locale, location: $location, lastSeen: $lastSeen, phoneNumber: $phoneNumber, images: $images, businessId: $businessId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserDetailResponse &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.fullName, fullName) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.role, role) &&
            const DeepCollectionEquality().equals(other.locale, locale) &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality().equals(other.lastSeen, lastSeen) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality()
                .equals(other.businessId, businessId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(fullName),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(role),
      const DeepCollectionEquality().hash(locale),
      const DeepCollectionEquality().hash(location),
      const DeepCollectionEquality().hash(lastSeen),
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(_images),
      const DeepCollectionEquality().hash(businessId));

  @JsonKey(ignore: true)
  @override
  _$$_UserDetailResponseCopyWith<_$_UserDetailResponse> get copyWith =>
      __$$_UserDetailResponseCopyWithImpl<_$_UserDetailResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDetailResponseToJson(
      this,
    );
  }
}

abstract class _UserDetailResponse implements UserDetailResponse {
  const factory _UserDetailResponse(
      {final String? id,
      final String? fullName,
      final String? email,
      final String? role,
      final String? locale,
      final LocationResponse? location,
      final String? lastSeen,
      final String? phoneNumber,
      final List<String>? images,
      final String? businessId}) = _$_UserDetailResponse;

  factory _UserDetailResponse.fromJson(Map<String, dynamic> json) =
      _$_UserDetailResponse.fromJson;

  @override
  String? get id;
  @override
  String? get fullName;
  @override
  String? get email;
  @override
  String? get role;
  @override //enums
  String? get locale;
  @override // en, he
  LocationResponse? get location;
  @override
  String? get lastSeen;
  @override
  String? get phoneNumber;
  @override
  List<String>? get images;
  @override
  String? get businessId;
  @override
  @JsonKey(ignore: true)
  _$$_UserDetailResponseCopyWith<_$_UserDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
