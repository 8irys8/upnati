import 'package:freezed_annotation/freezed_annotation.dart';

part 'bucket_info.g.dart';
part 'bucket_info.freezed.dart';

@freezed
class BucketInfo with _$BucketInfo {
  const factory BucketInfo({
    List<Bucket>? buckets,
  }) = _BucketInfo;

  factory BucketInfo.fromJson(Map<String, dynamic> json) =>
      _$BucketInfoFromJson(json);
}

@freezed
class Bucket with _$Bucket {
  const factory Bucket({
    String? value,
    int? count,
  }) = _Bucket;

  factory Bucket.fromJson(Map<String, dynamic> json) => _$BucketFromJson(json);
}
