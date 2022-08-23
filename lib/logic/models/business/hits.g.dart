// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hits.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Hits _$$_HitsFromJson(Map<String, dynamic> json) => _$_Hits(
      found: json['found'] as int?,
      start: json['start'] as int?,
      cursor: json['cursor'] as String?,
      hit: (json['hit'] as List<dynamic>?)
          ?.map((e) => Hit.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_HitsToJson(_$_Hits instance) => <String, dynamic>{
      'found': instance.found,
      'start': instance.start,
      'cursor': instance.cursor,
      'hit': instance.hit,
    };

_$_Hit _$$_HitFromJson(Map<String, dynamic> json) => _$_Hit(
      id: json['id'] as String?,
      fields: (json['fields'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, (e as List<dynamic>).map((e) => e as String).toList()),
      ),
      exprs: (json['exprs'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      highlights: (json['highlights'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
    );

Map<String, dynamic> _$$_HitToJson(_$_Hit instance) => <String, dynamic>{
      'id': instance.id,
      'fields': instance.fields,
      'exprs': instance.exprs,
      'highlights': instance.highlights,
    };
