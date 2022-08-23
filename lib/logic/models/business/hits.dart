import 'package:freezed_annotation/freezed_annotation.dart';

part 'hits.g.dart';
part 'hits.freezed.dart';

@freezed
class Hits with _$Hits {
  const factory Hits({
    int? found,
    int? start,
    String? cursor,
    List<Hit>? hit,
  }) = _Hits;

  factory Hits.fromJson(Map<String, dynamic> json) => _$HitsFromJson(json);
}

@freezed
class Hit with _$Hit {
  const factory Hit({
    String? id,
    Map<dynamic, List<String>>? fields,
    Map<dynamic, String>? exprs,
    Map<dynamic, String>? highlights,
  }) = _Hit;

  factory Hit.fromJson(Map<String, dynamic> json) => _$HitFromJson(json);
}
