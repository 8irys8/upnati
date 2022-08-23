// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchResponse _$$_SearchResponseFromJson(Map<String, dynamic> json) =>
    _$_SearchResponse(
      sdkResponseMetadata: json['sdkResponseMetadata'] == null
          ? null
          : ResponseMetadata.fromJson(
              json['sdkResponseMetadata'] as Map<String, dynamic>),
      sdkHttpMetadata: json['sdkHttpMetadata'] == null
          ? null
          : SdkHttpMetadata.fromJson(
              json['sdkHttpMetadata'] as Map<String, dynamic>),
      status: json['status'] == null
          ? null
          : SearchStatus.fromJson(json['status'] as Map<String, dynamic>),
      hits: json['hits'] == null
          ? null
          : Hits.fromJson(json['hits'] as Map<String, dynamic>),
      facets: (json['facets'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, BucketInfo.fromJson(e as Map<String, dynamic>)),
      ),
      stats: (json['stats'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, FieldStats.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$$_SearchResponseToJson(_$_SearchResponse instance) =>
    <String, dynamic>{
      'sdkResponseMetadata': instance.sdkResponseMetadata,
      'sdkHttpMetadata': instance.sdkHttpMetadata,
      'status': instance.status,
      'hits': instance.hits,
      'facets': instance.facets,
      'stats': instance.stats,
    };

_$_ResponseMetadata _$$_ResponseMetadataFromJson(Map<String, dynamic> json) =>
    _$_ResponseMetadata(
      requestId: json['requestId'] as String?,
    );

Map<String, dynamic> _$$_ResponseMetadataToJson(_$_ResponseMetadata instance) =>
    <String, dynamic>{
      'requestId': instance.requestId,
    };

_$_SdkHttpMetadata _$$_SdkHttpMetadataFromJson(Map<String, dynamic> json) =>
    _$_SdkHttpMetadata(
      httpHeaders: (json['httpHeaders'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      httpStatusCode: json['httpStatusCode'] as int?,
      allHttpHeaders: (json['allHttpHeaders'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, (e as List<dynamic>).map((e) => e as String).toList()),
      ),
    );

Map<String, dynamic> _$$_SdkHttpMetadataToJson(_$_SdkHttpMetadata instance) =>
    <String, dynamic>{
      'httpHeaders': instance.httpHeaders,
      'httpStatusCode': instance.httpStatusCode,
      'allHttpHeaders': instance.allHttpHeaders,
    };

_$_SearchStatus _$$_SearchStatusFromJson(Map<String, dynamic> json) =>
    _$_SearchStatus(
      timems: json['timems'] as int?,
      rid: json['rid'] as String?,
    );

Map<String, dynamic> _$$_SearchStatusToJson(_$_SearchStatus instance) =>
    <String, dynamic>{
      'timems': instance.timems,
      'rid': instance.rid,
    };

_$_FieldStats _$$_FieldStatsFromJson(Map<String, dynamic> json) =>
    _$_FieldStats(
      min: json['min'] as String?,
      max: json['max'] as String?,
      count: json['count'] as int?,
      missing: json['missing'] as int?,
      sum: (json['sum'] as num?)?.toDouble(),
      sumOfSquares: (json['sumOfSquares'] as num?)?.toDouble(),
      mean: json['mean'] as String?,
      stddev: (json['stddev'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_FieldStatsToJson(_$_FieldStats instance) =>
    <String, dynamic>{
      'min': instance.min,
      'max': instance.max,
      'count': instance.count,
      'missing': instance.missing,
      'sum': instance.sum,
      'sumOfSquares': instance.sumOfSquares,
      'mean': instance.mean,
      'stddev': instance.stddev,
    };
