// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchResponse _$SearchResponseFromJson(Map<String, dynamic> json) {
  return _SearchResponse.fromJson(json);
}

/// @nodoc
mixin _$SearchResponse {
  PageItemResponse? get item => throw _privateConstructorUsedError;
  PageBusinessResponse? get business => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchResponseCopyWith<SearchResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResponseCopyWith<$Res> {
  factory $SearchResponseCopyWith(
          SearchResponse value, $Res Function(SearchResponse) then) =
      _$SearchResponseCopyWithImpl<$Res>;
  $Res call({PageItemResponse? item, PageBusinessResponse? business});

  $PageItemResponseCopyWith<$Res>? get item;
  $PageBusinessResponseCopyWith<$Res>? get business;
}

/// @nodoc
class _$SearchResponseCopyWithImpl<$Res>
    implements $SearchResponseCopyWith<$Res> {
  _$SearchResponseCopyWithImpl(this._value, this._then);

  final SearchResponse _value;
  // ignore: unused_field
  final $Res Function(SearchResponse) _then;

  @override
  $Res call({
    Object? item = freezed,
    Object? business = freezed,
  }) {
    return _then(_value.copyWith(
      item: item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as PageItemResponse?,
      business: business == freezed
          ? _value.business
          : business // ignore: cast_nullable_to_non_nullable
              as PageBusinessResponse?,
    ));
  }

  @override
  $PageItemResponseCopyWith<$Res>? get item {
    if (_value.item == null) {
      return null;
    }

    return $PageItemResponseCopyWith<$Res>(_value.item!, (value) {
      return _then(_value.copyWith(item: value));
    });
  }

  @override
  $PageBusinessResponseCopyWith<$Res>? get business {
    if (_value.business == null) {
      return null;
    }

    return $PageBusinessResponseCopyWith<$Res>(_value.business!, (value) {
      return _then(_value.copyWith(business: value));
    });
  }
}

/// @nodoc
abstract class _$$_SearchResponseCopyWith<$Res>
    implements $SearchResponseCopyWith<$Res> {
  factory _$$_SearchResponseCopyWith(
          _$_SearchResponse value, $Res Function(_$_SearchResponse) then) =
      __$$_SearchResponseCopyWithImpl<$Res>;
  @override
  $Res call({PageItemResponse? item, PageBusinessResponse? business});

  @override
  $PageItemResponseCopyWith<$Res>? get item;
  @override
  $PageBusinessResponseCopyWith<$Res>? get business;
}

/// @nodoc
class __$$_SearchResponseCopyWithImpl<$Res>
    extends _$SearchResponseCopyWithImpl<$Res>
    implements _$$_SearchResponseCopyWith<$Res> {
  __$$_SearchResponseCopyWithImpl(
      _$_SearchResponse _value, $Res Function(_$_SearchResponse) _then)
      : super(_value, (v) => _then(v as _$_SearchResponse));

  @override
  _$_SearchResponse get _value => super._value as _$_SearchResponse;

  @override
  $Res call({
    Object? item = freezed,
    Object? business = freezed,
  }) {
    return _then(_$_SearchResponse(
      item: item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as PageItemResponse?,
      business: business == freezed
          ? _value.business
          : business // ignore: cast_nullable_to_non_nullable
              as PageBusinessResponse?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_SearchResponse implements _SearchResponse {
  const _$_SearchResponse({this.item, this.business});

  factory _$_SearchResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SearchResponseFromJson(json);

  @override
  final PageItemResponse? item;
  @override
  final PageBusinessResponse? business;

  @override
  String toString() {
    return 'SearchResponse(item: $item, business: $business)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchResponse &&
            const DeepCollectionEquality().equals(other.item, item) &&
            const DeepCollectionEquality().equals(other.business, business));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(item),
      const DeepCollectionEquality().hash(business));

  @JsonKey(ignore: true)
  @override
  _$$_SearchResponseCopyWith<_$_SearchResponse> get copyWith =>
      __$$_SearchResponseCopyWithImpl<_$_SearchResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchResponseToJson(
      this,
    );
  }
}

abstract class _SearchResponse implements SearchResponse {
  const factory _SearchResponse(
      {final PageItemResponse? item,
      final PageBusinessResponse? business}) = _$_SearchResponse;

  factory _SearchResponse.fromJson(Map<String, dynamic> json) =
      _$_SearchResponse.fromJson;

  @override
  PageItemResponse? get item;
  @override
  PageBusinessResponse? get business;
  @override
  @JsonKey(ignore: true)
  _$$_SearchResponseCopyWith<_$_SearchResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
