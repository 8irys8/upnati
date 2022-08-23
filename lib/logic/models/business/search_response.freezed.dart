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
  ResponseMetadata? get sdkResponseMetadata =>
      throw _privateConstructorUsedError;
  SdkHttpMetadata? get sdkHttpMetadata => throw _privateConstructorUsedError;
  SearchStatus? get status => throw _privateConstructorUsedError;
  Hits? get hits => throw _privateConstructorUsedError;
  Map<dynamic, BucketInfo>? get facets => throw _privateConstructorUsedError;
  Map<dynamic, FieldStats>? get stats => throw _privateConstructorUsedError;

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
  $Res call(
      {ResponseMetadata? sdkResponseMetadata,
      SdkHttpMetadata? sdkHttpMetadata,
      SearchStatus? status,
      Hits? hits,
      Map<dynamic, BucketInfo>? facets,
      Map<dynamic, FieldStats>? stats});

  $ResponseMetadataCopyWith<$Res>? get sdkResponseMetadata;
  $SdkHttpMetadataCopyWith<$Res>? get sdkHttpMetadata;
  $SearchStatusCopyWith<$Res>? get status;
  $HitsCopyWith<$Res>? get hits;
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
    Object? sdkResponseMetadata = freezed,
    Object? sdkHttpMetadata = freezed,
    Object? status = freezed,
    Object? hits = freezed,
    Object? facets = freezed,
    Object? stats = freezed,
  }) {
    return _then(_value.copyWith(
      sdkResponseMetadata: sdkResponseMetadata == freezed
          ? _value.sdkResponseMetadata
          : sdkResponseMetadata // ignore: cast_nullable_to_non_nullable
              as ResponseMetadata?,
      sdkHttpMetadata: sdkHttpMetadata == freezed
          ? _value.sdkHttpMetadata
          : sdkHttpMetadata // ignore: cast_nullable_to_non_nullable
              as SdkHttpMetadata?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SearchStatus?,
      hits: hits == freezed
          ? _value.hits
          : hits // ignore: cast_nullable_to_non_nullable
              as Hits?,
      facets: facets == freezed
          ? _value.facets
          : facets // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, BucketInfo>?,
      stats: stats == freezed
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, FieldStats>?,
    ));
  }

  @override
  $ResponseMetadataCopyWith<$Res>? get sdkResponseMetadata {
    if (_value.sdkResponseMetadata == null) {
      return null;
    }

    return $ResponseMetadataCopyWith<$Res>(_value.sdkResponseMetadata!,
        (value) {
      return _then(_value.copyWith(sdkResponseMetadata: value));
    });
  }

  @override
  $SdkHttpMetadataCopyWith<$Res>? get sdkHttpMetadata {
    if (_value.sdkHttpMetadata == null) {
      return null;
    }

    return $SdkHttpMetadataCopyWith<$Res>(_value.sdkHttpMetadata!, (value) {
      return _then(_value.copyWith(sdkHttpMetadata: value));
    });
  }

  @override
  $SearchStatusCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $SearchStatusCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value));
    });
  }

  @override
  $HitsCopyWith<$Res>? get hits {
    if (_value.hits == null) {
      return null;
    }

    return $HitsCopyWith<$Res>(_value.hits!, (value) {
      return _then(_value.copyWith(hits: value));
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
  $Res call(
      {ResponseMetadata? sdkResponseMetadata,
      SdkHttpMetadata? sdkHttpMetadata,
      SearchStatus? status,
      Hits? hits,
      Map<dynamic, BucketInfo>? facets,
      Map<dynamic, FieldStats>? stats});

  @override
  $ResponseMetadataCopyWith<$Res>? get sdkResponseMetadata;
  @override
  $SdkHttpMetadataCopyWith<$Res>? get sdkHttpMetadata;
  @override
  $SearchStatusCopyWith<$Res>? get status;
  @override
  $HitsCopyWith<$Res>? get hits;
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
    Object? sdkResponseMetadata = freezed,
    Object? sdkHttpMetadata = freezed,
    Object? status = freezed,
    Object? hits = freezed,
    Object? facets = freezed,
    Object? stats = freezed,
  }) {
    return _then(_$_SearchResponse(
      sdkResponseMetadata: sdkResponseMetadata == freezed
          ? _value.sdkResponseMetadata
          : sdkResponseMetadata // ignore: cast_nullable_to_non_nullable
              as ResponseMetadata?,
      sdkHttpMetadata: sdkHttpMetadata == freezed
          ? _value.sdkHttpMetadata
          : sdkHttpMetadata // ignore: cast_nullable_to_non_nullable
              as SdkHttpMetadata?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SearchStatus?,
      hits: hits == freezed
          ? _value.hits
          : hits // ignore: cast_nullable_to_non_nullable
              as Hits?,
      facets: facets == freezed
          ? _value._facets
          : facets // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, BucketInfo>?,
      stats: stats == freezed
          ? _value._stats
          : stats // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, FieldStats>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchResponse implements _SearchResponse {
  const _$_SearchResponse(
      {this.sdkResponseMetadata,
      this.sdkHttpMetadata,
      this.status,
      this.hits,
      final Map<dynamic, BucketInfo>? facets,
      final Map<dynamic, FieldStats>? stats})
      : _facets = facets,
        _stats = stats;

  factory _$_SearchResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SearchResponseFromJson(json);

  @override
  final ResponseMetadata? sdkResponseMetadata;
  @override
  final SdkHttpMetadata? sdkHttpMetadata;
  @override
  final SearchStatus? status;
  @override
  final Hits? hits;
  final Map<dynamic, BucketInfo>? _facets;
  @override
  Map<dynamic, BucketInfo>? get facets {
    final value = _facets;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<dynamic, FieldStats>? _stats;
  @override
  Map<dynamic, FieldStats>? get stats {
    final value = _stats;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'SearchResponse(sdkResponseMetadata: $sdkResponseMetadata, sdkHttpMetadata: $sdkHttpMetadata, status: $status, hits: $hits, facets: $facets, stats: $stats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchResponse &&
            const DeepCollectionEquality()
                .equals(other.sdkResponseMetadata, sdkResponseMetadata) &&
            const DeepCollectionEquality()
                .equals(other.sdkHttpMetadata, sdkHttpMetadata) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.hits, hits) &&
            const DeepCollectionEquality().equals(other._facets, _facets) &&
            const DeepCollectionEquality().equals(other._stats, _stats));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(sdkResponseMetadata),
      const DeepCollectionEquality().hash(sdkHttpMetadata),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(hits),
      const DeepCollectionEquality().hash(_facets),
      const DeepCollectionEquality().hash(_stats));

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
      {final ResponseMetadata? sdkResponseMetadata,
      final SdkHttpMetadata? sdkHttpMetadata,
      final SearchStatus? status,
      final Hits? hits,
      final Map<dynamic, BucketInfo>? facets,
      final Map<dynamic, FieldStats>? stats}) = _$_SearchResponse;

  factory _SearchResponse.fromJson(Map<String, dynamic> json) =
      _$_SearchResponse.fromJson;

  @override
  ResponseMetadata? get sdkResponseMetadata;
  @override
  SdkHttpMetadata? get sdkHttpMetadata;
  @override
  SearchStatus? get status;
  @override
  Hits? get hits;
  @override
  Map<dynamic, BucketInfo>? get facets;
  @override
  Map<dynamic, FieldStats>? get stats;
  @override
  @JsonKey(ignore: true)
  _$$_SearchResponseCopyWith<_$_SearchResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

ResponseMetadata _$ResponseMetadataFromJson(Map<String, dynamic> json) {
  return _ResponseMetadata.fromJson(json);
}

/// @nodoc
mixin _$ResponseMetadata {
  String? get requestId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseMetadataCopyWith<ResponseMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseMetadataCopyWith<$Res> {
  factory $ResponseMetadataCopyWith(
          ResponseMetadata value, $Res Function(ResponseMetadata) then) =
      _$ResponseMetadataCopyWithImpl<$Res>;
  $Res call({String? requestId});
}

/// @nodoc
class _$ResponseMetadataCopyWithImpl<$Res>
    implements $ResponseMetadataCopyWith<$Res> {
  _$ResponseMetadataCopyWithImpl(this._value, this._then);

  final ResponseMetadata _value;
  // ignore: unused_field
  final $Res Function(ResponseMetadata) _then;

  @override
  $Res call({
    Object? requestId = freezed,
  }) {
    return _then(_value.copyWith(
      requestId: requestId == freezed
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_ResponseMetadataCopyWith<$Res>
    implements $ResponseMetadataCopyWith<$Res> {
  factory _$$_ResponseMetadataCopyWith(
          _$_ResponseMetadata value, $Res Function(_$_ResponseMetadata) then) =
      __$$_ResponseMetadataCopyWithImpl<$Res>;
  @override
  $Res call({String? requestId});
}

/// @nodoc
class __$$_ResponseMetadataCopyWithImpl<$Res>
    extends _$ResponseMetadataCopyWithImpl<$Res>
    implements _$$_ResponseMetadataCopyWith<$Res> {
  __$$_ResponseMetadataCopyWithImpl(
      _$_ResponseMetadata _value, $Res Function(_$_ResponseMetadata) _then)
      : super(_value, (v) => _then(v as _$_ResponseMetadata));

  @override
  _$_ResponseMetadata get _value => super._value as _$_ResponseMetadata;

  @override
  $Res call({
    Object? requestId = freezed,
  }) {
    return _then(_$_ResponseMetadata(
      requestId: requestId == freezed
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResponseMetadata implements _ResponseMetadata {
  const _$_ResponseMetadata({this.requestId});

  factory _$_ResponseMetadata.fromJson(Map<String, dynamic> json) =>
      _$$_ResponseMetadataFromJson(json);

  @override
  final String? requestId;

  @override
  String toString() {
    return 'ResponseMetadata(requestId: $requestId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResponseMetadata &&
            const DeepCollectionEquality().equals(other.requestId, requestId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(requestId));

  @JsonKey(ignore: true)
  @override
  _$$_ResponseMetadataCopyWith<_$_ResponseMetadata> get copyWith =>
      __$$_ResponseMetadataCopyWithImpl<_$_ResponseMetadata>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResponseMetadataToJson(
      this,
    );
  }
}

abstract class _ResponseMetadata implements ResponseMetadata {
  const factory _ResponseMetadata({final String? requestId}) =
      _$_ResponseMetadata;

  factory _ResponseMetadata.fromJson(Map<String, dynamic> json) =
      _$_ResponseMetadata.fromJson;

  @override
  String? get requestId;
  @override
  @JsonKey(ignore: true)
  _$$_ResponseMetadataCopyWith<_$_ResponseMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

SdkHttpMetadata _$SdkHttpMetadataFromJson(Map<String, dynamic> json) {
  return _SdkHttpMetadata.fromJson(json);
}

/// @nodoc
mixin _$SdkHttpMetadata {
  Map<dynamic, String>? get httpHeaders => throw _privateConstructorUsedError;
  int? get httpStatusCode => throw _privateConstructorUsedError;
  Map<dynamic, List<String>>? get allHttpHeaders =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SdkHttpMetadataCopyWith<SdkHttpMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SdkHttpMetadataCopyWith<$Res> {
  factory $SdkHttpMetadataCopyWith(
          SdkHttpMetadata value, $Res Function(SdkHttpMetadata) then) =
      _$SdkHttpMetadataCopyWithImpl<$Res>;
  $Res call(
      {Map<dynamic, String>? httpHeaders,
      int? httpStatusCode,
      Map<dynamic, List<String>>? allHttpHeaders});
}

/// @nodoc
class _$SdkHttpMetadataCopyWithImpl<$Res>
    implements $SdkHttpMetadataCopyWith<$Res> {
  _$SdkHttpMetadataCopyWithImpl(this._value, this._then);

  final SdkHttpMetadata _value;
  // ignore: unused_field
  final $Res Function(SdkHttpMetadata) _then;

  @override
  $Res call({
    Object? httpHeaders = freezed,
    Object? httpStatusCode = freezed,
    Object? allHttpHeaders = freezed,
  }) {
    return _then(_value.copyWith(
      httpHeaders: httpHeaders == freezed
          ? _value.httpHeaders
          : httpHeaders // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, String>?,
      httpStatusCode: httpStatusCode == freezed
          ? _value.httpStatusCode
          : httpStatusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      allHttpHeaders: allHttpHeaders == freezed
          ? _value.allHttpHeaders
          : allHttpHeaders // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, List<String>>?,
    ));
  }
}

/// @nodoc
abstract class _$$_SdkHttpMetadataCopyWith<$Res>
    implements $SdkHttpMetadataCopyWith<$Res> {
  factory _$$_SdkHttpMetadataCopyWith(
          _$_SdkHttpMetadata value, $Res Function(_$_SdkHttpMetadata) then) =
      __$$_SdkHttpMetadataCopyWithImpl<$Res>;
  @override
  $Res call(
      {Map<dynamic, String>? httpHeaders,
      int? httpStatusCode,
      Map<dynamic, List<String>>? allHttpHeaders});
}

/// @nodoc
class __$$_SdkHttpMetadataCopyWithImpl<$Res>
    extends _$SdkHttpMetadataCopyWithImpl<$Res>
    implements _$$_SdkHttpMetadataCopyWith<$Res> {
  __$$_SdkHttpMetadataCopyWithImpl(
      _$_SdkHttpMetadata _value, $Res Function(_$_SdkHttpMetadata) _then)
      : super(_value, (v) => _then(v as _$_SdkHttpMetadata));

  @override
  _$_SdkHttpMetadata get _value => super._value as _$_SdkHttpMetadata;

  @override
  $Res call({
    Object? httpHeaders = freezed,
    Object? httpStatusCode = freezed,
    Object? allHttpHeaders = freezed,
  }) {
    return _then(_$_SdkHttpMetadata(
      httpHeaders: httpHeaders == freezed
          ? _value._httpHeaders
          : httpHeaders // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, String>?,
      httpStatusCode: httpStatusCode == freezed
          ? _value.httpStatusCode
          : httpStatusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      allHttpHeaders: allHttpHeaders == freezed
          ? _value._allHttpHeaders
          : allHttpHeaders // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, List<String>>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SdkHttpMetadata implements _SdkHttpMetadata {
  const _$_SdkHttpMetadata(
      {final Map<dynamic, String>? httpHeaders,
      this.httpStatusCode,
      final Map<dynamic, List<String>>? allHttpHeaders})
      : _httpHeaders = httpHeaders,
        _allHttpHeaders = allHttpHeaders;

  factory _$_SdkHttpMetadata.fromJson(Map<String, dynamic> json) =>
      _$$_SdkHttpMetadataFromJson(json);

  final Map<dynamic, String>? _httpHeaders;
  @override
  Map<dynamic, String>? get httpHeaders {
    final value = _httpHeaders;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final int? httpStatusCode;
  final Map<dynamic, List<String>>? _allHttpHeaders;
  @override
  Map<dynamic, List<String>>? get allHttpHeaders {
    final value = _allHttpHeaders;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'SdkHttpMetadata(httpHeaders: $httpHeaders, httpStatusCode: $httpStatusCode, allHttpHeaders: $allHttpHeaders)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SdkHttpMetadata &&
            const DeepCollectionEquality()
                .equals(other._httpHeaders, _httpHeaders) &&
            const DeepCollectionEquality()
                .equals(other.httpStatusCode, httpStatusCode) &&
            const DeepCollectionEquality()
                .equals(other._allHttpHeaders, _allHttpHeaders));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_httpHeaders),
      const DeepCollectionEquality().hash(httpStatusCode),
      const DeepCollectionEquality().hash(_allHttpHeaders));

  @JsonKey(ignore: true)
  @override
  _$$_SdkHttpMetadataCopyWith<_$_SdkHttpMetadata> get copyWith =>
      __$$_SdkHttpMetadataCopyWithImpl<_$_SdkHttpMetadata>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SdkHttpMetadataToJson(
      this,
    );
  }
}

abstract class _SdkHttpMetadata implements SdkHttpMetadata {
  const factory _SdkHttpMetadata(
      {final Map<dynamic, String>? httpHeaders,
      final int? httpStatusCode,
      final Map<dynamic, List<String>>? allHttpHeaders}) = _$_SdkHttpMetadata;

  factory _SdkHttpMetadata.fromJson(Map<String, dynamic> json) =
      _$_SdkHttpMetadata.fromJson;

  @override
  Map<dynamic, String>? get httpHeaders;
  @override
  int? get httpStatusCode;
  @override
  Map<dynamic, List<String>>? get allHttpHeaders;
  @override
  @JsonKey(ignore: true)
  _$$_SdkHttpMetadataCopyWith<_$_SdkHttpMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

SearchStatus _$SearchStatusFromJson(Map<String, dynamic> json) {
  return _SearchStatus.fromJson(json);
}

/// @nodoc
mixin _$SearchStatus {
  int? get timems => throw _privateConstructorUsedError;
  String? get rid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchStatusCopyWith<SearchStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStatusCopyWith<$Res> {
  factory $SearchStatusCopyWith(
          SearchStatus value, $Res Function(SearchStatus) then) =
      _$SearchStatusCopyWithImpl<$Res>;
  $Res call({int? timems, String? rid});
}

/// @nodoc
class _$SearchStatusCopyWithImpl<$Res> implements $SearchStatusCopyWith<$Res> {
  _$SearchStatusCopyWithImpl(this._value, this._then);

  final SearchStatus _value;
  // ignore: unused_field
  final $Res Function(SearchStatus) _then;

  @override
  $Res call({
    Object? timems = freezed,
    Object? rid = freezed,
  }) {
    return _then(_value.copyWith(
      timems: timems == freezed
          ? _value.timems
          : timems // ignore: cast_nullable_to_non_nullable
              as int?,
      rid: rid == freezed
          ? _value.rid
          : rid // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_SearchStatusCopyWith<$Res>
    implements $SearchStatusCopyWith<$Res> {
  factory _$$_SearchStatusCopyWith(
          _$_SearchStatus value, $Res Function(_$_SearchStatus) then) =
      __$$_SearchStatusCopyWithImpl<$Res>;
  @override
  $Res call({int? timems, String? rid});
}

/// @nodoc
class __$$_SearchStatusCopyWithImpl<$Res>
    extends _$SearchStatusCopyWithImpl<$Res>
    implements _$$_SearchStatusCopyWith<$Res> {
  __$$_SearchStatusCopyWithImpl(
      _$_SearchStatus _value, $Res Function(_$_SearchStatus) _then)
      : super(_value, (v) => _then(v as _$_SearchStatus));

  @override
  _$_SearchStatus get _value => super._value as _$_SearchStatus;

  @override
  $Res call({
    Object? timems = freezed,
    Object? rid = freezed,
  }) {
    return _then(_$_SearchStatus(
      timems: timems == freezed
          ? _value.timems
          : timems // ignore: cast_nullable_to_non_nullable
              as int?,
      rid: rid == freezed
          ? _value.rid
          : rid // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchStatus implements _SearchStatus {
  const _$_SearchStatus({this.timems, this.rid});

  factory _$_SearchStatus.fromJson(Map<String, dynamic> json) =>
      _$$_SearchStatusFromJson(json);

  @override
  final int? timems;
  @override
  final String? rid;

  @override
  String toString() {
    return 'SearchStatus(timems: $timems, rid: $rid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchStatus &&
            const DeepCollectionEquality().equals(other.timems, timems) &&
            const DeepCollectionEquality().equals(other.rid, rid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(timems),
      const DeepCollectionEquality().hash(rid));

  @JsonKey(ignore: true)
  @override
  _$$_SearchStatusCopyWith<_$_SearchStatus> get copyWith =>
      __$$_SearchStatusCopyWithImpl<_$_SearchStatus>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchStatusToJson(
      this,
    );
  }
}

abstract class _SearchStatus implements SearchStatus {
  const factory _SearchStatus({final int? timems, final String? rid}) =
      _$_SearchStatus;

  factory _SearchStatus.fromJson(Map<String, dynamic> json) =
      _$_SearchStatus.fromJson;

  @override
  int? get timems;
  @override
  String? get rid;
  @override
  @JsonKey(ignore: true)
  _$$_SearchStatusCopyWith<_$_SearchStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

FieldStats _$FieldStatsFromJson(Map<String, dynamic> json) {
  return _FieldStats.fromJson(json);
}

/// @nodoc
mixin _$FieldStats {
  String? get min => throw _privateConstructorUsedError;
  String? get max => throw _privateConstructorUsedError;
  int? get count => throw _privateConstructorUsedError;
  int? get missing => throw _privateConstructorUsedError;
  double? get sum => throw _privateConstructorUsedError;
  double? get sumOfSquares => throw _privateConstructorUsedError;
  String? get mean => throw _privateConstructorUsedError;
  double? get stddev => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FieldStatsCopyWith<FieldStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FieldStatsCopyWith<$Res> {
  factory $FieldStatsCopyWith(
          FieldStats value, $Res Function(FieldStats) then) =
      _$FieldStatsCopyWithImpl<$Res>;
  $Res call(
      {String? min,
      String? max,
      int? count,
      int? missing,
      double? sum,
      double? sumOfSquares,
      String? mean,
      double? stddev});
}

/// @nodoc
class _$FieldStatsCopyWithImpl<$Res> implements $FieldStatsCopyWith<$Res> {
  _$FieldStatsCopyWithImpl(this._value, this._then);

  final FieldStats _value;
  // ignore: unused_field
  final $Res Function(FieldStats) _then;

  @override
  $Res call({
    Object? min = freezed,
    Object? max = freezed,
    Object? count = freezed,
    Object? missing = freezed,
    Object? sum = freezed,
    Object? sumOfSquares = freezed,
    Object? mean = freezed,
    Object? stddev = freezed,
  }) {
    return _then(_value.copyWith(
      min: min == freezed
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as String?,
      max: max == freezed
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as String?,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      missing: missing == freezed
          ? _value.missing
          : missing // ignore: cast_nullable_to_non_nullable
              as int?,
      sum: sum == freezed
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as double?,
      sumOfSquares: sumOfSquares == freezed
          ? _value.sumOfSquares
          : sumOfSquares // ignore: cast_nullable_to_non_nullable
              as double?,
      mean: mean == freezed
          ? _value.mean
          : mean // ignore: cast_nullable_to_non_nullable
              as String?,
      stddev: stddev == freezed
          ? _value.stddev
          : stddev // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$$_FieldStatsCopyWith<$Res>
    implements $FieldStatsCopyWith<$Res> {
  factory _$$_FieldStatsCopyWith(
          _$_FieldStats value, $Res Function(_$_FieldStats) then) =
      __$$_FieldStatsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? min,
      String? max,
      int? count,
      int? missing,
      double? sum,
      double? sumOfSquares,
      String? mean,
      double? stddev});
}

/// @nodoc
class __$$_FieldStatsCopyWithImpl<$Res> extends _$FieldStatsCopyWithImpl<$Res>
    implements _$$_FieldStatsCopyWith<$Res> {
  __$$_FieldStatsCopyWithImpl(
      _$_FieldStats _value, $Res Function(_$_FieldStats) _then)
      : super(_value, (v) => _then(v as _$_FieldStats));

  @override
  _$_FieldStats get _value => super._value as _$_FieldStats;

  @override
  $Res call({
    Object? min = freezed,
    Object? max = freezed,
    Object? count = freezed,
    Object? missing = freezed,
    Object? sum = freezed,
    Object? sumOfSquares = freezed,
    Object? mean = freezed,
    Object? stddev = freezed,
  }) {
    return _then(_$_FieldStats(
      min: min == freezed
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as String?,
      max: max == freezed
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as String?,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      missing: missing == freezed
          ? _value.missing
          : missing // ignore: cast_nullable_to_non_nullable
              as int?,
      sum: sum == freezed
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as double?,
      sumOfSquares: sumOfSquares == freezed
          ? _value.sumOfSquares
          : sumOfSquares // ignore: cast_nullable_to_non_nullable
              as double?,
      mean: mean == freezed
          ? _value.mean
          : mean // ignore: cast_nullable_to_non_nullable
              as String?,
      stddev: stddev == freezed
          ? _value.stddev
          : stddev // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FieldStats implements _FieldStats {
  const _$_FieldStats(
      {this.min,
      this.max,
      this.count,
      this.missing,
      this.sum,
      this.sumOfSquares,
      this.mean,
      this.stddev});

  factory _$_FieldStats.fromJson(Map<String, dynamic> json) =>
      _$$_FieldStatsFromJson(json);

  @override
  final String? min;
  @override
  final String? max;
  @override
  final int? count;
  @override
  final int? missing;
  @override
  final double? sum;
  @override
  final double? sumOfSquares;
  @override
  final String? mean;
  @override
  final double? stddev;

  @override
  String toString() {
    return 'FieldStats(min: $min, max: $max, count: $count, missing: $missing, sum: $sum, sumOfSquares: $sumOfSquares, mean: $mean, stddev: $stddev)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FieldStats &&
            const DeepCollectionEquality().equals(other.min, min) &&
            const DeepCollectionEquality().equals(other.max, max) &&
            const DeepCollectionEquality().equals(other.count, count) &&
            const DeepCollectionEquality().equals(other.missing, missing) &&
            const DeepCollectionEquality().equals(other.sum, sum) &&
            const DeepCollectionEquality()
                .equals(other.sumOfSquares, sumOfSquares) &&
            const DeepCollectionEquality().equals(other.mean, mean) &&
            const DeepCollectionEquality().equals(other.stddev, stddev));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(min),
      const DeepCollectionEquality().hash(max),
      const DeepCollectionEquality().hash(count),
      const DeepCollectionEquality().hash(missing),
      const DeepCollectionEquality().hash(sum),
      const DeepCollectionEquality().hash(sumOfSquares),
      const DeepCollectionEquality().hash(mean),
      const DeepCollectionEquality().hash(stddev));

  @JsonKey(ignore: true)
  @override
  _$$_FieldStatsCopyWith<_$_FieldStats> get copyWith =>
      __$$_FieldStatsCopyWithImpl<_$_FieldStats>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FieldStatsToJson(
      this,
    );
  }
}

abstract class _FieldStats implements FieldStats {
  const factory _FieldStats(
      {final String? min,
      final String? max,
      final int? count,
      final int? missing,
      final double? sum,
      final double? sumOfSquares,
      final String? mean,
      final double? stddev}) = _$_FieldStats;

  factory _FieldStats.fromJson(Map<String, dynamic> json) =
      _$_FieldStats.fromJson;

  @override
  String? get min;
  @override
  String? get max;
  @override
  int? get count;
  @override
  int? get missing;
  @override
  double? get sum;
  @override
  double? get sumOfSquares;
  @override
  String? get mean;
  @override
  double? get stddev;
  @override
  @JsonKey(ignore: true)
  _$$_FieldStatsCopyWith<_$_FieldStats> get copyWith =>
      throw _privateConstructorUsedError;
}
