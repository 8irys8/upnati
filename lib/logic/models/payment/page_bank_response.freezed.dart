// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'page_bank_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PageBankResponse _$PageBankResponseFromJson(Map<String, dynamic> json) {
  return _PageBankResponse.fromJson(json);
}

/// @nodoc
mixin _$PageBankResponse {
  int? get totalPages => throw _privateConstructorUsedError;
  int? get totalElements => throw _privateConstructorUsedError;
  Sort? get sort => throw _privateConstructorUsedError;
  bool? get first => throw _privateConstructorUsedError;
  bool? get last => throw _privateConstructorUsedError;
  int? get number => throw _privateConstructorUsedError;
  int? get numberOfElements => throw _privateConstructorUsedError;
  Pageable? get pageable => throw _privateConstructorUsedError;
  int? get size => throw _privateConstructorUsedError;
  List<BankResponse>? get content => throw _privateConstructorUsedError;
  bool? get empty => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PageBankResponseCopyWith<PageBankResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageBankResponseCopyWith<$Res> {
  factory $PageBankResponseCopyWith(
          PageBankResponse value, $Res Function(PageBankResponse) then) =
      _$PageBankResponseCopyWithImpl<$Res>;
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
      List<BankResponse>? content,
      bool? empty});

  $SortCopyWith<$Res>? get sort;
  $PageableCopyWith<$Res>? get pageable;
}

/// @nodoc
class _$PageBankResponseCopyWithImpl<$Res>
    implements $PageBankResponseCopyWith<$Res> {
  _$PageBankResponseCopyWithImpl(this._value, this._then);

  final PageBankResponse _value;
  // ignore: unused_field
  final $Res Function(PageBankResponse) _then;

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
              as List<BankResponse>?,
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
abstract class _$$_PageBankResponseCopyWith<$Res>
    implements $PageBankResponseCopyWith<$Res> {
  factory _$$_PageBankResponseCopyWith(
          _$_PageBankResponse value, $Res Function(_$_PageBankResponse) then) =
      __$$_PageBankResponseCopyWithImpl<$Res>;
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
      List<BankResponse>? content,
      bool? empty});

  @override
  $SortCopyWith<$Res>? get sort;
  @override
  $PageableCopyWith<$Res>? get pageable;
}

/// @nodoc
class __$$_PageBankResponseCopyWithImpl<$Res>
    extends _$PageBankResponseCopyWithImpl<$Res>
    implements _$$_PageBankResponseCopyWith<$Res> {
  __$$_PageBankResponseCopyWithImpl(
      _$_PageBankResponse _value, $Res Function(_$_PageBankResponse) _then)
      : super(_value, (v) => _then(v as _$_PageBankResponse));

  @override
  _$_PageBankResponse get _value => super._value as _$_PageBankResponse;

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
    return _then(_$_PageBankResponse(
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
              as List<BankResponse>?,
      empty: empty == freezed
          ? _value.empty
          : empty // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PageBankResponse implements _PageBankResponse {
  const _$_PageBankResponse(
      {this.totalPages,
      this.totalElements,
      this.sort,
      this.first,
      this.last,
      this.number,
      this.numberOfElements,
      this.pageable,
      this.size,
      final List<BankResponse>? content,
      this.empty})
      : _content = content;

  factory _$_PageBankResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PageBankResponseFromJson(json);

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
  final List<BankResponse>? _content;
  @override
  List<BankResponse>? get content {
    final value = _content;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? empty;

  @override
  String toString() {
    return 'PageBankResponse(totalPages: $totalPages, totalElements: $totalElements, sort: $sort, first: $first, last: $last, number: $number, numberOfElements: $numberOfElements, pageable: $pageable, size: $size, content: $content, empty: $empty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PageBankResponse &&
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
  _$$_PageBankResponseCopyWith<_$_PageBankResponse> get copyWith =>
      __$$_PageBankResponseCopyWithImpl<_$_PageBankResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PageBankResponseToJson(
      this,
    );
  }
}

abstract class _PageBankResponse implements PageBankResponse {
  const factory _PageBankResponse(
      {final int? totalPages,
      final int? totalElements,
      final Sort? sort,
      final bool? first,
      final bool? last,
      final int? number,
      final int? numberOfElements,
      final Pageable? pageable,
      final int? size,
      final List<BankResponse>? content,
      final bool? empty}) = _$_PageBankResponse;

  factory _PageBankResponse.fromJson(Map<String, dynamic> json) =
      _$_PageBankResponse.fromJson;

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
  List<BankResponse>? get content;
  @override
  bool? get empty;
  @override
  @JsonKey(ignore: true)
  _$$_PageBankResponseCopyWith<_$_PageBankResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
