// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bucket_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BucketInfo _$$_BucketInfoFromJson(Map<String, dynamic> json) =>
    _$_BucketInfo(
      buckets: (json['buckets'] as List<dynamic>?)
          ?.map((e) => Bucket.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_BucketInfoToJson(_$_BucketInfo instance) =>
    <String, dynamic>{
      'buckets': instance.buckets,
    };

_$_Bucket _$$_BucketFromJson(Map<String, dynamic> json) => _$_Bucket(
      value: json['value'] as String?,
      count: json['count'] as int?,
    );

Map<String, dynamic> _$$_BucketToJson(_$_Bucket instance) => <String, dynamic>{
      'value': instance.value,
      'count': instance.count,
    };
