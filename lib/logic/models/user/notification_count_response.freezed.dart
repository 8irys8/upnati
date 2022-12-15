// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notification_count_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NotificationCountResponse _$NotificationCountResponseFromJson(
    Map<String, dynamic> json) {
  return _NotificationCountResponse.fromJson(json);
}

/// @nodoc
mixin _$NotificationCountResponse {
  int? get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationCountResponseCopyWith<NotificationCountResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationCountResponseCopyWith<$Res> {
  factory $NotificationCountResponseCopyWith(NotificationCountResponse value,
          $Res Function(NotificationCountResponse) then) =
      _$NotificationCountResponseCopyWithImpl<$Res>;
  $Res call({int? count});
}

/// @nodoc
class _$NotificationCountResponseCopyWithImpl<$Res>
    implements $NotificationCountResponseCopyWith<$Res> {
  _$NotificationCountResponseCopyWithImpl(this._value, this._then);

  final NotificationCountResponse _value;
  // ignore: unused_field
  final $Res Function(NotificationCountResponse) _then;

  @override
  $Res call({
    Object? count = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_NotificationCountResponseCopyWith<$Res>
    implements $NotificationCountResponseCopyWith<$Res> {
  factory _$$_NotificationCountResponseCopyWith(
          _$_NotificationCountResponse value,
          $Res Function(_$_NotificationCountResponse) then) =
      __$$_NotificationCountResponseCopyWithImpl<$Res>;
  @override
  $Res call({int? count});
}

/// @nodoc
class __$$_NotificationCountResponseCopyWithImpl<$Res>
    extends _$NotificationCountResponseCopyWithImpl<$Res>
    implements _$$_NotificationCountResponseCopyWith<$Res> {
  __$$_NotificationCountResponseCopyWithImpl(
      _$_NotificationCountResponse _value,
      $Res Function(_$_NotificationCountResponse) _then)
      : super(_value, (v) => _then(v as _$_NotificationCountResponse));

  @override
  _$_NotificationCountResponse get _value =>
      super._value as _$_NotificationCountResponse;

  @override
  $Res call({
    Object? count = freezed,
  }) {
    return _then(_$_NotificationCountResponse(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NotificationCountResponse implements _NotificationCountResponse {
  const _$_NotificationCountResponse({this.count});

  factory _$_NotificationCountResponse.fromJson(Map<String, dynamic> json) =>
      _$$_NotificationCountResponseFromJson(json);

  @override
  final int? count;

  @override
  String toString() {
    return 'NotificationCountResponse(count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotificationCountResponse &&
            const DeepCollectionEquality().equals(other.count, count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(count));

  @JsonKey(ignore: true)
  @override
  _$$_NotificationCountResponseCopyWith<_$_NotificationCountResponse>
      get copyWith => __$$_NotificationCountResponseCopyWithImpl<
          _$_NotificationCountResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NotificationCountResponseToJson(
      this,
    );
  }
}

abstract class _NotificationCountResponse implements NotificationCountResponse {
  const factory _NotificationCountResponse({final int? count}) =
      _$_NotificationCountResponse;

  factory _NotificationCountResponse.fromJson(Map<String, dynamic> json) =
      _$_NotificationCountResponse.fromJson;

  @override
  int? get count;
  @override
  @JsonKey(ignore: true)
  _$$_NotificationCountResponseCopyWith<_$_NotificationCountResponse>
      get copyWith => throw _privateConstructorUsedError;
}
