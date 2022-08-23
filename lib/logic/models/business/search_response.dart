import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:upnati/logic/models/business/bucket_info.dart';
import 'package:upnati/logic/models/business/hits.dart';

part 'search_response.g.dart';
part 'search_response.freezed.dart';

@freezed
class SearchResponse with _$SearchResponse {
  const factory SearchResponse({
    ResponseMetadata? sdkResponseMetadata,
    SdkHttpMetadata? sdkHttpMetadata,
    SearchStatus? status,
    Hits? hits,
    Map<dynamic, BucketInfo>? facets,
    Map<dynamic, FieldStats>? stats,
  }) = _SearchResponse;

  factory SearchResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchResponseFromJson(json);
}

@freezed
class ResponseMetadata with _$ResponseMetadata {
  const factory ResponseMetadata({
    String? requestId,
  }) = _ResponseMetadata;

  factory ResponseMetadata.fromJson(Map<String, dynamic> json) =>
      _$ResponseMetadataFromJson(json);
}

@freezed
class SdkHttpMetadata with _$SdkHttpMetadata {
  const factory SdkHttpMetadata({
    Map<dynamic, String>? httpHeaders,
    int? httpStatusCode,
    Map<dynamic, List<String>>? allHttpHeaders,
  }) = _SdkHttpMetadata;

  factory SdkHttpMetadata.fromJson(Map<String, dynamic> json) =>
      _$SdkHttpMetadataFromJson(json);
}

@freezed
class SearchStatus with _$SearchStatus {
  const factory SearchStatus({
    int? timems,
    String? rid,
  }) = _SearchStatus;

  factory SearchStatus.fromJson(Map<String, dynamic> json) =>
      _$SearchStatusFromJson(json);
}

@freezed
class FieldStats with _$FieldStats {
  const factory FieldStats({
    String? min,
    String? max,
    int? count,
    int? missing,
    double? sum,
    double? sumOfSquares,
    String? mean,
    double? stddev,
  }) = _FieldStats;

  factory FieldStats.fromJson(Map<String, dynamic> json) =>
      _$FieldStatsFromJson(json);
}
