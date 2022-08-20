import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:upnati/logic/models/sort.dart';

part 'pageable.g.dart';
part 'pageable.freezed.dart';

@freezed
class Pageable with _$Pageable {
  const factory Pageable({
    int? pageSize,
    int? pageNumber,
    bool? paged,
    bool? unpaged,
    Sort? sort,
    int? offset,
  }) = _Pageable;

  factory Pageable.fromJson(Map<String, dynamic> json) =>
      _$PageableFromJson(json);
}
