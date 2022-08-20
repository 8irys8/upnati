// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sort.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Sort _$SortFromJson(Map<String, dynamic> json) {
  return _Sort.fromJson(json);
}

/// @nodoc
mixin _$Sort {
  bool? get sorted => throw _privateConstructorUsedError;
  bool? get unsorted => throw _privateConstructorUsedError;
  bool? get empty => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SortCopyWith<Sort> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SortCopyWith<$Res> {
  factory $SortCopyWith(Sort value, $Res Function(Sort) then) =
      _$SortCopyWithImpl<$Res>;
  $Res call({bool? sorted, bool? unsorted, bool? empty});
}

/// @nodoc
class _$SortCopyWithImpl<$Res> implements $SortCopyWith<$Res> {
  _$SortCopyWithImpl(this._value, this._then);

  final Sort _value;
  // ignore: unused_field
  final $Res Function(Sort) _then;

  @override
  $Res call({
    Object? sorted = freezed,
    Object? unsorted = freezed,
    Object? empty = freezed,
  }) {
    return _then(_value.copyWith(
      sorted: sorted == freezed
          ? _value.sorted
          : sorted // ignore: cast_nullable_to_non_nullable
              as bool?,
      unsorted: unsorted == freezed
          ? _value.unsorted
          : unsorted // ignore: cast_nullable_to_non_nullable
              as bool?,
      empty: empty == freezed
          ? _value.empty
          : empty // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$$_SortCopyWith<$Res> implements $SortCopyWith<$Res> {
  factory _$$_SortCopyWith(_$_Sort value, $Res Function(_$_Sort) then) =
      __$$_SortCopyWithImpl<$Res>;
  @override
  $Res call({bool? sorted, bool? unsorted, bool? empty});
}

/// @nodoc
class __$$_SortCopyWithImpl<$Res> extends _$SortCopyWithImpl<$Res>
    implements _$$_SortCopyWith<$Res> {
  __$$_SortCopyWithImpl(_$_Sort _value, $Res Function(_$_Sort) _then)
      : super(_value, (v) => _then(v as _$_Sort));

  @override
  _$_Sort get _value => super._value as _$_Sort;

  @override
  $Res call({
    Object? sorted = freezed,
    Object? unsorted = freezed,
    Object? empty = freezed,
  }) {
    return _then(_$_Sort(
      sorted: sorted == freezed
          ? _value.sorted
          : sorted // ignore: cast_nullable_to_non_nullable
              as bool?,
      unsorted: unsorted == freezed
          ? _value.unsorted
          : unsorted // ignore: cast_nullable_to_non_nullable
              as bool?,
      empty: empty == freezed
          ? _value.empty
          : empty // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Sort implements _Sort {
  const _$_Sort({this.sorted, this.unsorted, this.empty});

  factory _$_Sort.fromJson(Map<String, dynamic> json) => _$$_SortFromJson(json);

  @override
  final bool? sorted;
  @override
  final bool? unsorted;
  @override
  final bool? empty;

  @override
  String toString() {
    return 'Sort(sorted: $sorted, unsorted: $unsorted, empty: $empty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Sort &&
            const DeepCollectionEquality().equals(other.sorted, sorted) &&
            const DeepCollectionEquality().equals(other.unsorted, unsorted) &&
            const DeepCollectionEquality().equals(other.empty, empty));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(sorted),
      const DeepCollectionEquality().hash(unsorted),
      const DeepCollectionEquality().hash(empty));

  @JsonKey(ignore: true)
  @override
  _$$_SortCopyWith<_$_Sort> get copyWith =>
      __$$_SortCopyWithImpl<_$_Sort>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SortToJson(
      this,
    );
  }
}

abstract class _Sort implements Sort {
  const factory _Sort(
      {final bool? sorted, final bool? unsorted, final bool? empty}) = _$_Sort;

  factory _Sort.fromJson(Map<String, dynamic> json) = _$_Sort.fromJson;

  @override
  bool? get sorted;
  @override
  bool? get unsorted;
  @override
  bool? get empty;
  @override
  @JsonKey(ignore: true)
  _$$_SortCopyWith<_$_Sort> get copyWith => throw _privateConstructorUsedError;
}
