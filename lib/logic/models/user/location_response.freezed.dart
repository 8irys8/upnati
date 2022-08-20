// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'location_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocationResponse _$LocationResponseFromJson(Map<String, dynamic> json) {
  return _LocationResponse.fromJson(json);
}

/// @nodoc
mixin _$LocationResponse {
  String? get countryId => throw _privateConstructorUsedError;
  String? get regionId => throw _privateConstructorUsedError;
  String? get cityId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationResponseCopyWith<LocationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationResponseCopyWith<$Res> {
  factory $LocationResponseCopyWith(
          LocationResponse value, $Res Function(LocationResponse) then) =
      _$LocationResponseCopyWithImpl<$Res>;
  $Res call({String? countryId, String? regionId, String? cityId});
}

/// @nodoc
class _$LocationResponseCopyWithImpl<$Res>
    implements $LocationResponseCopyWith<$Res> {
  _$LocationResponseCopyWithImpl(this._value, this._then);

  final LocationResponse _value;
  // ignore: unused_field
  final $Res Function(LocationResponse) _then;

  @override
  $Res call({
    Object? countryId = freezed,
    Object? regionId = freezed,
    Object? cityId = freezed,
  }) {
    return _then(_value.copyWith(
      countryId: countryId == freezed
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as String?,
      regionId: regionId == freezed
          ? _value.regionId
          : regionId // ignore: cast_nullable_to_non_nullable
              as String?,
      cityId: cityId == freezed
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_LocationResponseCopyWith<$Res>
    implements $LocationResponseCopyWith<$Res> {
  factory _$$_LocationResponseCopyWith(
          _$_LocationResponse value, $Res Function(_$_LocationResponse) then) =
      __$$_LocationResponseCopyWithImpl<$Res>;
  @override
  $Res call({String? countryId, String? regionId, String? cityId});
}

/// @nodoc
class __$$_LocationResponseCopyWithImpl<$Res>
    extends _$LocationResponseCopyWithImpl<$Res>
    implements _$$_LocationResponseCopyWith<$Res> {
  __$$_LocationResponseCopyWithImpl(
      _$_LocationResponse _value, $Res Function(_$_LocationResponse) _then)
      : super(_value, (v) => _then(v as _$_LocationResponse));

  @override
  _$_LocationResponse get _value => super._value as _$_LocationResponse;

  @override
  $Res call({
    Object? countryId = freezed,
    Object? regionId = freezed,
    Object? cityId = freezed,
  }) {
    return _then(_$_LocationResponse(
      countryId: countryId == freezed
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as String?,
      regionId: regionId == freezed
          ? _value.regionId
          : regionId // ignore: cast_nullable_to_non_nullable
              as String?,
      cityId: cityId == freezed
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocationResponse implements _LocationResponse {
  const _$_LocationResponse({this.countryId, this.regionId, this.cityId});

  factory _$_LocationResponse.fromJson(Map<String, dynamic> json) =>
      _$$_LocationResponseFromJson(json);

  @override
  final String? countryId;
  @override
  final String? regionId;
  @override
  final String? cityId;

  @override
  String toString() {
    return 'LocationResponse(countryId: $countryId, regionId: $regionId, cityId: $cityId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationResponse &&
            const DeepCollectionEquality().equals(other.countryId, countryId) &&
            const DeepCollectionEquality().equals(other.regionId, regionId) &&
            const DeepCollectionEquality().equals(other.cityId, cityId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(countryId),
      const DeepCollectionEquality().hash(regionId),
      const DeepCollectionEquality().hash(cityId));

  @JsonKey(ignore: true)
  @override
  _$$_LocationResponseCopyWith<_$_LocationResponse> get copyWith =>
      __$$_LocationResponseCopyWithImpl<_$_LocationResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationResponseToJson(
      this,
    );
  }
}

abstract class _LocationResponse implements LocationResponse {
  const factory _LocationResponse(
      {final String? countryId,
      final String? regionId,
      final String? cityId}) = _$_LocationResponse;

  factory _LocationResponse.fromJson(Map<String, dynamic> json) =
      _$_LocationResponse.fromJson;

  @override
  String? get countryId;
  @override
  String? get regionId;
  @override
  String? get cityId;
  @override
  @JsonKey(ignore: true)
  _$$_LocationResponseCopyWith<_$_LocationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
