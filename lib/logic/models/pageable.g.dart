// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pageable.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Pageable _$$_PageableFromJson(Map<String, dynamic> json) => _$_Pageable(
      pageSize: json['pageSize'] as int?,
      pageNumber: json['pageNumber'] as int?,
      paged: json['paged'] as bool?,
      unpaged: json['unpaged'] as bool?,
      sort: json['sort'] == null
          ? null
          : Sort.fromJson(json['sort'] as Map<String, dynamic>),
      offset: json['offset'] as int?,
    );

Map<String, dynamic> _$$_PageableToJson(_$_Pageable instance) =>
    <String, dynamic>{
      'pageSize': instance.pageSize,
      'pageNumber': instance.pageNumber,
      'paged': instance.paged,
      'unpaged': instance.unpaged,
      'sort': instance.sort,
      'offset': instance.offset,
    };
