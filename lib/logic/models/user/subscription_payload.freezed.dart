// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'subscription_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SubscriptionPayload _$SubscriptionPayloadFromJson(Map<String, dynamic> json) {
  return _SubscriptionPayload.fromJson(json);
}

/// @nodoc
mixin _$SubscriptionPayload {
  String? get subscriberTopic => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubscriptionPayloadCopyWith<SubscriptionPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionPayloadCopyWith<$Res> {
  factory $SubscriptionPayloadCopyWith(
          SubscriptionPayload value, $Res Function(SubscriptionPayload) then) =
      _$SubscriptionPayloadCopyWithImpl<$Res>;
  $Res call({String? subscriberTopic});
}

/// @nodoc
class _$SubscriptionPayloadCopyWithImpl<$Res>
    implements $SubscriptionPayloadCopyWith<$Res> {
  _$SubscriptionPayloadCopyWithImpl(this._value, this._then);

  final SubscriptionPayload _value;
  // ignore: unused_field
  final $Res Function(SubscriptionPayload) _then;

  @override
  $Res call({
    Object? subscriberTopic = freezed,
  }) {
    return _then(_value.copyWith(
      subscriberTopic: subscriberTopic == freezed
          ? _value.subscriberTopic
          : subscriberTopic // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_SubscriptionPayloadCopyWith<$Res>
    implements $SubscriptionPayloadCopyWith<$Res> {
  factory _$$_SubscriptionPayloadCopyWith(_$_SubscriptionPayload value,
          $Res Function(_$_SubscriptionPayload) then) =
      __$$_SubscriptionPayloadCopyWithImpl<$Res>;
  @override
  $Res call({String? subscriberTopic});
}

/// @nodoc
class __$$_SubscriptionPayloadCopyWithImpl<$Res>
    extends _$SubscriptionPayloadCopyWithImpl<$Res>
    implements _$$_SubscriptionPayloadCopyWith<$Res> {
  __$$_SubscriptionPayloadCopyWithImpl(_$_SubscriptionPayload _value,
      $Res Function(_$_SubscriptionPayload) _then)
      : super(_value, (v) => _then(v as _$_SubscriptionPayload));

  @override
  _$_SubscriptionPayload get _value => super._value as _$_SubscriptionPayload;

  @override
  $Res call({
    Object? subscriberTopic = freezed,
  }) {
    return _then(_$_SubscriptionPayload(
      subscriberTopic: subscriberTopic == freezed
          ? _value.subscriberTopic
          : subscriberTopic // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SubscriptionPayload implements _SubscriptionPayload {
  const _$_SubscriptionPayload({this.subscriberTopic});

  factory _$_SubscriptionPayload.fromJson(Map<String, dynamic> json) =>
      _$$_SubscriptionPayloadFromJson(json);

  @override
  final String? subscriberTopic;

  @override
  String toString() {
    return 'SubscriptionPayload(subscriberTopic: $subscriberTopic)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubscriptionPayload &&
            const DeepCollectionEquality()
                .equals(other.subscriberTopic, subscriberTopic));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(subscriberTopic));

  @JsonKey(ignore: true)
  @override
  _$$_SubscriptionPayloadCopyWith<_$_SubscriptionPayload> get copyWith =>
      __$$_SubscriptionPayloadCopyWithImpl<_$_SubscriptionPayload>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SubscriptionPayloadToJson(
      this,
    );
  }
}

abstract class _SubscriptionPayload implements SubscriptionPayload {
  const factory _SubscriptionPayload({final String? subscriberTopic}) =
      _$_SubscriptionPayload;

  factory _SubscriptionPayload.fromJson(Map<String, dynamic> json) =
      _$_SubscriptionPayload.fromJson;

  @override
  String? get subscriberTopic;
  @override
  @JsonKey(ignore: true)
  _$$_SubscriptionPayloadCopyWith<_$_SubscriptionPayload> get copyWith =>
      throw _privateConstructorUsedError;
}
