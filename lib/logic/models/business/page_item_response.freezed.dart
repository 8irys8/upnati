// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'page_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PageItemResponse _$PageItemResponseFromJson(Map<String, dynamic> json) {
  return _PageItemResponse.fromJson(json);
}

/// @nodoc
mixin _$PageItemResponse {
  int? get totalPages => throw _privateConstructorUsedError;
  int? get totalElements => throw _privateConstructorUsedError;
  Sort? get sort => throw _privateConstructorUsedError;
  bool? get first => throw _privateConstructorUsedError;
  bool? get last => throw _privateConstructorUsedError;
  int? get number => throw _privateConstructorUsedError;
  int? get numberOfElements => throw _privateConstructorUsedError;
  Pageable? get pageable => throw _privateConstructorUsedError;
  int? get size => throw _privateConstructorUsedError;
  List<ItemResponse> get content => throw _privateConstructorUsedError;
  bool? get empty => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PageItemResponseCopyWith<PageItemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageItemResponseCopyWith<$Res> {
  factory $PageItemResponseCopyWith(
          PageItemResponse value, $Res Function(PageItemResponse) then) =
      _$PageItemResponseCopyWithImpl<$Res>;
  $Res call(
      {int? totalPages,
      int? totalElements,
      Sort? sort,
      bool? first,
      bool? last,
      int? number,
      int? numberOfElements,
      Pageable? pageable,
      int? size,
      List<ItemResponse> content,
      bool? empty});

  $SortCopyWith<$Res>? get sort;
  $PageableCopyWith<$Res>? get pageable;
}

/// @nodoc
class _$PageItemResponseCopyWithImpl<$Res>
    implements $PageItemResponseCopyWith<$Res> {
  _$PageItemResponseCopyWithImpl(this._value, this._then);

  final PageItemResponse _value;
  // ignore: unused_field
  final $Res Function(PageItemResponse) _then;

  @override
  $Res call({
    Object? totalPages = freezed,
    Object? totalElements = freezed,
    Object? sort = freezed,
    Object? first = freezed,
    Object? last = freezed,
    Object? number = freezed,
    Object? numberOfElements = freezed,
    Object? pageable = freezed,
    Object? size = freezed,
    Object? content = freezed,
    Object? empty = freezed,
  }) {
    return _then(_value.copyWith(
      totalPages: totalPages == freezed
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      totalElements: totalElements == freezed
          ? _value.totalElements
          : totalElements // ignore: cast_nullable_to_non_nullable
              as int?,
      sort: sort == freezed
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as Sort?,
      first: first == freezed
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as bool?,
      last: last == freezed
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as bool?,
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      numberOfElements: numberOfElements == freezed
          ? _value.numberOfElements
          : numberOfElements // ignore: cast_nullable_to_non_nullable
              as int?,
      pageable: pageable == freezed
          ? _value.pageable
          : pageable // ignore: cast_nullable_to_non_nullable
              as Pageable?,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as List<ItemResponse>,
      empty: empty == freezed
          ? _value.empty
          : empty // ignore: cast_nullable_to_non_nullable
              as bool?,
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

  @override
  $PageableCopyWith<$Res>? get pageable {
    if (_value.pageable == null) {
      return null;
    }

    return $PageableCopyWith<$Res>(_value.pageable!, (value) {
      return _then(_value.copyWith(pageable: value));
    });
  }
}

/// @nodoc
abstract class _$$_PageItemResponseCopyWith<$Res>
    implements $PageItemResponseCopyWith<$Res> {
  factory _$$_PageItemResponseCopyWith(
          _$_PageItemResponse value, $Res Function(_$_PageItemResponse) then) =
      __$$_PageItemResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? totalPages,
      int? totalElements,
      Sort? sort,
      bool? first,
      bool? last,
      int? number,
      int? numberOfElements,
      Pageable? pageable,
      int? size,
      List<ItemResponse> content,
      bool? empty});

  @override
  $SortCopyWith<$Res>? get sort;
  @override
  $PageableCopyWith<$Res>? get pageable;
}

/// @nodoc
class __$$_PageItemResponseCopyWithImpl<$Res>
    extends _$PageItemResponseCopyWithImpl<$Res>
    implements _$$_PageItemResponseCopyWith<$Res> {
  __$$_PageItemResponseCopyWithImpl(
      _$_PageItemResponse _value, $Res Function(_$_PageItemResponse) _then)
      : super(_value, (v) => _then(v as _$_PageItemResponse));

  @override
  _$_PageItemResponse get _value => super._value as _$_PageItemResponse;

  @override
  $Res call({
    Object? totalPages = freezed,
    Object? totalElements = freezed,
    Object? sort = freezed,
    Object? first = freezed,
    Object? last = freezed,
    Object? number = freezed,
    Object? numberOfElements = freezed,
    Object? pageable = freezed,
    Object? size = freezed,
    Object? content = freezed,
    Object? empty = freezed,
  }) {
    return _then(_$_PageItemResponse(
      totalPages: totalPages == freezed
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      totalElements: totalElements == freezed
          ? _value.totalElements
          : totalElements // ignore: cast_nullable_to_non_nullable
              as int?,
      sort: sort == freezed
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as Sort?,
      first: first == freezed
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as bool?,
      last: last == freezed
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as bool?,
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      numberOfElements: numberOfElements == freezed
          ? _value.numberOfElements
          : numberOfElements // ignore: cast_nullable_to_non_nullable
              as int?,
      pageable: pageable == freezed
          ? _value.pageable
          : pageable // ignore: cast_nullable_to_non_nullable
              as Pageable?,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      content: content == freezed
          ? _value._content
          : content // ignore: cast_nullable_to_non_nullable
              as List<ItemResponse>,
      empty: empty == freezed
          ? _value.empty
          : empty // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PageItemResponse implements _PageItemResponse {
  const _$_PageItemResponse(
      {this.totalPages,
      this.totalElements,
      this.sort,
      this.first,
      this.last,
      this.number,
      this.numberOfElements,
      this.pageable,
      this.size,
      required final List<ItemResponse> content,
      this.empty})
      : _content = content;

  factory _$_PageItemResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PageItemResponseFromJson(json);

  @override
  final int? totalPages;
  @override
  final int? totalElements;
  @override
  final Sort? sort;
  @override
  final bool? first;
  @override
  final bool? last;
  @override
  final int? number;
  @override
  final int? numberOfElements;
  @override
  final Pageable? pageable;
  @override
  final int? size;
  final List<ItemResponse> _content;
  @override
  List<ItemResponse> get content {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_content);
  }

  @override
  final bool? empty;

  @override
  String toString() {
    return 'PageItemResponse(totalPages: $totalPages, totalElements: $totalElements, sort: $sort, first: $first, last: $last, number: $number, numberOfElements: $numberOfElements, pageable: $pageable, size: $size, content: $content, empty: $empty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PageItemResponse &&
            const DeepCollectionEquality()
                .equals(other.totalPages, totalPages) &&
            const DeepCollectionEquality()
                .equals(other.totalElements, totalElements) &&
            const DeepCollectionEquality().equals(other.sort, sort) &&
            const DeepCollectionEquality().equals(other.first, first) &&
            const DeepCollectionEquality().equals(other.last, last) &&
            const DeepCollectionEquality().equals(other.number, number) &&
            const DeepCollectionEquality()
                .equals(other.numberOfElements, numberOfElements) &&
            const DeepCollectionEquality().equals(other.pageable, pageable) &&
            const DeepCollectionEquality().equals(other.size, size) &&
            const DeepCollectionEquality().equals(other._content, _content) &&
            const DeepCollectionEquality().equals(other.empty, empty));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(totalPages),
      const DeepCollectionEquality().hash(totalElements),
      const DeepCollectionEquality().hash(sort),
      const DeepCollectionEquality().hash(first),
      const DeepCollectionEquality().hash(last),
      const DeepCollectionEquality().hash(number),
      const DeepCollectionEquality().hash(numberOfElements),
      const DeepCollectionEquality().hash(pageable),
      const DeepCollectionEquality().hash(size),
      const DeepCollectionEquality().hash(_content),
      const DeepCollectionEquality().hash(empty));

  @JsonKey(ignore: true)
  @override
  _$$_PageItemResponseCopyWith<_$_PageItemResponse> get copyWith =>
      __$$_PageItemResponseCopyWithImpl<_$_PageItemResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PageItemResponseToJson(
      this,
    );
  }
}

abstract class _PageItemResponse implements PageItemResponse {
  const factory _PageItemResponse(
      {final int? totalPages,
      final int? totalElements,
      final Sort? sort,
      final bool? first,
      final bool? last,
      final int? number,
      final int? numberOfElements,
      final Pageable? pageable,
      final int? size,
      required final List<ItemResponse> content,
      final bool? empty}) = _$_PageItemResponse;

  factory _PageItemResponse.fromJson(Map<String, dynamic> json) =
      _$_PageItemResponse.fromJson;

  @override
  int? get totalPages;
  @override
  int? get totalElements;
  @override
  Sort? get sort;
  @override
  bool? get first;
  @override
  bool? get last;
  @override
  int? get number;
  @override
  int? get numberOfElements;
  @override
  Pageable? get pageable;
  @override
  int? get size;
  @override
  List<ItemResponse> get content;
  @override
  bool? get empty;
  @override
  @JsonKey(ignore: true)
  _$$_PageItemResponseCopyWith<_$_PageItemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
