// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pageable.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Pageable _$PageableFromJson(Map<String, dynamic> json) {
  return _Pageable.fromJson(json);
}

/// @nodoc
mixin _$Pageable {
  int? get pageSize => throw _privateConstructorUsedError;
  int? get pageNumber => throw _privateConstructorUsedError;
  bool? get paged => throw _privateConstructorUsedError;
  bool? get unpaged => throw _privateConstructorUsedError;
  Sort? get sort => throw _privateConstructorUsedError;
  int? get offset => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PageableCopyWith<Pageable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageableCopyWith<$Res> {
  factory $PageableCopyWith(Pageable value, $Res Function(Pageable) then) =
      _$PageableCopyWithImpl<$Res>;
  $Res call(
      {int? pageSize,
      int? pageNumber,
      bool? paged,
      bool? unpaged,
      Sort? sort,
      int? offset});

  $SortCopyWith<$Res>? get sort;
}

/// @nodoc
class _$PageableCopyWithImpl<$Res> implements $PageableCopyWith<$Res> {
  _$PageableCopyWithImpl(this._value, this._then);

  final Pageable _value;
  // ignore: unused_field
  final $Res Function(Pageable) _then;

  @override
  $Res call({
    Object? pageSize = freezed,
    Object? pageNumber = freezed,
    Object? paged = freezed,
    Object? unpaged = freezed,
    Object? sort = freezed,
    Object? offset = freezed,
  }) {
    return _then(_value.copyWith(
      pageSize: pageSize == freezed
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int?,
      pageNumber: pageNumber == freezed
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      paged: paged == freezed
          ? _value.paged
          : paged // ignore: cast_nullable_to_non_nullable
              as bool?,
      unpaged: unpaged == freezed
          ? _value.unpaged
          : unpaged // ignore: cast_nullable_to_non_nullable
              as bool?,
      sort: sort == freezed
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as Sort?,
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  @override
  $SortCopyWith<$Res>? get sort {
    if (_value.sort == null) {
      return null;
    }

    return $SortCopyWith<$Res>(_value.sort!, (value) {
      return _then(_value.copyWith(sort: value));
    });
  }
}

/// @nodoc
abstract class _$$_PageableCopyWith<$Res> implements $PageableCopyWith<$Res> {
  factory _$$_PageableCopyWith(
          _$_Pageable value, $Res Function(_$_Pageable) then) =
      __$$_PageableCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? pageSize,
      int? pageNumber,
      bool? paged,
      bool? unpaged,
      Sort? sort,
      int? offset});

  @override
  $SortCopyWith<$Res>? get sort;
}

/// @nodoc
class __$$_PageableCopyWithImpl<$Res> extends _$PageableCopyWithImpl<$Res>
    implements _$$_PageableCopyWith<$Res> {
  __$$_PageableCopyWithImpl(
      _$_Pageable _value, $Res Function(_$_Pageable) _then)
      : super(_value, (v) => _then(v as _$_Pageable));

  @override
  _$_Pageable get _value => super._value as _$_Pageable;

  @override
  $Res call({
    Object? pageSize = freezed,
    Object? pageNumber = freezed,
    Object? paged = freezed,
    Object? unpaged = freezed,
    Object? sort = freezed,
    Object? offset = freezed,
  }) {
    return _then(_$_Pageable(
      pageSize: pageSize == freezed
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int?,
      pageNumber: pageNumber == freezed
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      paged: paged == freezed
          ? _value.paged
          : paged // ignore: cast_nullable_to_non_nullable
              as bool?,
      unpaged: unpaged == freezed
          ? _value.unpaged
          : unpaged // ignore: cast_nullable_to_non_nullable
              as bool?,
      sort: sort == freezed
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as Sort?,
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Pageable implements _Pageable {
  const _$_Pageable(
      {this.pageSize,
      this.pageNumber,
      this.paged,
      this.unpaged,
      this.sort,
      this.offset});

  factory _$_Pageable.fromJson(Map<String, dynamic> json) =>
      _$$_PageableFromJson(json);

  @override
  final int? pageSize;
  @override
  final int? pageNumber;
  @override
  final bool? paged;
  @override
  final bool? unpaged;
  @override
  final Sort? sort;
  @override
  final int? offset;

  @override
  String toString() {
    return 'Pageable(pageSize: $pageSize, pageNumber: $pageNumber, paged: $paged, unpaged: $unpaged, sort: $sort, offset: $offset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Pageable &&
            const DeepCollectionEquality().equals(other.pageSize, pageSize) &&
            const DeepCollectionEquality()
                .equals(other.pageNumber, pageNumber) &&
            const DeepCollectionEquality().equals(other.paged, paged) &&
            const DeepCollectionEquality().equals(other.unpaged, unpaged) &&
            const DeepCollectionEquality().equals(other.sort, sort) &&
            const DeepCollectionEquality().equals(other.offset, offset));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(pageSize),
      const DeepCollectionEquality().hash(pageNumber),
      const DeepCollectionEquality().hash(paged),
      const DeepCollectionEquality().hash(unpaged),
      const DeepCollectionEquality().hash(sort),
      const DeepCollectionEquality().hash(offset));

  @JsonKey(ignore: true)
  @override
  _$$_PageableCopyWith<_$_Pageable> get copyWith =>
      __$$_PageableCopyWithImpl<_$_Pageable>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PageableToJson(
      this,
    );
  }
}

abstract class _Pageable implements Pageable {
  const factory _Pageable(
      {final int? pageSize,
      final int? pageNumber,
      final bool? paged,
      final bool? unpaged,
      final Sort? sort,
      final int? offset}) = _$_Pageable;

  factory _Pageable.fromJson(Map<String, dynamic> json) = _$_Pageable.fromJson;

  @override
  int? get pageSize;
  @override
  int? get pageNumber;
  @override
  bool? get paged;
  @override
  bool? get unpaged;
  @override
  Sort? get sort;
  @override
  int? get offset;
  @override
  @JsonKey(ignore: true)
  _$$_PageableCopyWith<_$_Pageable> get copyWith =>
      throw _privateConstructorUsedError;
}
