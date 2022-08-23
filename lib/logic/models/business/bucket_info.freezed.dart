// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bucket_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BucketInfo _$BucketInfoFromJson(Map<String, dynamic> json) {
  return _BucketInfo.fromJson(json);
}

/// @nodoc
mixin _$BucketInfo {
  List<Bucket>? get buckets => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BucketInfoCopyWith<BucketInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BucketInfoCopyWith<$Res> {
  factory $BucketInfoCopyWith(
          BucketInfo value, $Res Function(BucketInfo) then) =
      _$BucketInfoCopyWithImpl<$Res>;
  $Res call({List<Bucket>? buckets});
}

/// @nodoc
class _$BucketInfoCopyWithImpl<$Res> implements $BucketInfoCopyWith<$Res> {
  _$BucketInfoCopyWithImpl(this._value, this._then);

  final BucketInfo _value;
  // ignore: unused_field
  final $Res Function(BucketInfo) _then;

  @override
  $Res call({
    Object? buckets = freezed,
  }) {
    return _then(_value.copyWith(
      buckets: buckets == freezed
          ? _value.buckets
          : buckets // ignore: cast_nullable_to_non_nullable
              as List<Bucket>?,
    ));
  }
}

/// @nodoc
abstract class _$$_BucketInfoCopyWith<$Res>
    implements $BucketInfoCopyWith<$Res> {
  factory _$$_BucketInfoCopyWith(
          _$_BucketInfo value, $Res Function(_$_BucketInfo) then) =
      __$$_BucketInfoCopyWithImpl<$Res>;
  @override
  $Res call({List<Bucket>? buckets});
}

/// @nodoc
class __$$_BucketInfoCopyWithImpl<$Res> extends _$BucketInfoCopyWithImpl<$Res>
    implements _$$_BucketInfoCopyWith<$Res> {
  __$$_BucketInfoCopyWithImpl(
      _$_BucketInfo _value, $Res Function(_$_BucketInfo) _then)
      : super(_value, (v) => _then(v as _$_BucketInfo));

  @override
  _$_BucketInfo get _value => super._value as _$_BucketInfo;

  @override
  $Res call({
    Object? buckets = freezed,
  }) {
    return _then(_$_BucketInfo(
      buckets: buckets == freezed
          ? _value._buckets
          : buckets // ignore: cast_nullable_to_non_nullable
              as List<Bucket>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BucketInfo implements _BucketInfo {
  const _$_BucketInfo({final List<Bucket>? buckets}) : _buckets = buckets;

  factory _$_BucketInfo.fromJson(Map<String, dynamic> json) =>
      _$$_BucketInfoFromJson(json);

  final List<Bucket>? _buckets;
  @override
  List<Bucket>? get buckets {
    final value = _buckets;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BucketInfo(buckets: $buckets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BucketInfo &&
            const DeepCollectionEquality().equals(other._buckets, _buckets));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_buckets));

  @JsonKey(ignore: true)
  @override
  _$$_BucketInfoCopyWith<_$_BucketInfo> get copyWith =>
      __$$_BucketInfoCopyWithImpl<_$_BucketInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BucketInfoToJson(
      this,
    );
  }
}

abstract class _BucketInfo implements BucketInfo {
  const factory _BucketInfo({final List<Bucket>? buckets}) = _$_BucketInfo;

  factory _BucketInfo.fromJson(Map<String, dynamic> json) =
      _$_BucketInfo.fromJson;

  @override
  List<Bucket>? get buckets;
  @override
  @JsonKey(ignore: true)
  _$$_BucketInfoCopyWith<_$_BucketInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

Bucket _$BucketFromJson(Map<String, dynamic> json) {
  return _Bucket.fromJson(json);
}

/// @nodoc
mixin _$Bucket {
  String? get value => throw _privateConstructorUsedError;
  int? get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BucketCopyWith<Bucket> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BucketCopyWith<$Res> {
  factory $BucketCopyWith(Bucket value, $Res Function(Bucket) then) =
      _$BucketCopyWithImpl<$Res>;
  $Res call({String? value, int? count});
}

/// @nodoc
class _$BucketCopyWithImpl<$Res> implements $BucketCopyWith<$Res> {
  _$BucketCopyWithImpl(this._value, this._then);

  final Bucket _value;
  // ignore: unused_field
  final $Res Function(Bucket) _then;

  @override
  $Res call({
    Object? value = freezed,
    Object? count = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_BucketCopyWith<$Res> implements $BucketCopyWith<$Res> {
  factory _$$_BucketCopyWith(_$_Bucket value, $Res Function(_$_Bucket) then) =
      __$$_BucketCopyWithImpl<$Res>;
  @override
  $Res call({String? value, int? count});
}

/// @nodoc
class __$$_BucketCopyWithImpl<$Res> extends _$BucketCopyWithImpl<$Res>
    implements _$$_BucketCopyWith<$Res> {
  __$$_BucketCopyWithImpl(_$_Bucket _value, $Res Function(_$_Bucket) _then)
      : super(_value, (v) => _then(v as _$_Bucket));

  @override
  _$_Bucket get _value => super._value as _$_Bucket;

  @override
  $Res call({
    Object? value = freezed,
    Object? count = freezed,
  }) {
    return _then(_$_Bucket(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Bucket implements _Bucket {
  const _$_Bucket({this.value, this.count});

  factory _$_Bucket.fromJson(Map<String, dynamic> json) =>
      _$$_BucketFromJson(json);

  @override
  final String? value;
  @override
  final int? count;

  @override
  String toString() {
    return 'Bucket(value: $value, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Bucket &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality().equals(other.count, count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(count));

  @JsonKey(ignore: true)
  @override
  _$$_BucketCopyWith<_$_Bucket> get copyWith =>
      __$$_BucketCopyWithImpl<_$_Bucket>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BucketToJson(
      this,
    );
  }
}

abstract class _Bucket implements Bucket {
  const factory _Bucket({final String? value, final int? count}) = _$_Bucket;

  factory _Bucket.fromJson(Map<String, dynamic> json) = _$_Bucket.fromJson;

  @override
  String? get value;
  @override
  int? get count;
  @override
  @JsonKey(ignore: true)
  _$$_BucketCopyWith<_$_Bucket> get copyWith =>
      throw _privateConstructorUsedError;
}
