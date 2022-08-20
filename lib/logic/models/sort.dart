import 'package:freezed_annotation/freezed_annotation.dart';

part 'sort.g.dart';
part 'sort.freezed.dart';

@freezed
class Sort with _$Sort {
  const factory Sort({
    bool? sorted,
    bool? unsorted,
    bool? empty,
  }) = _Sort;

  factory Sort.fromJson(Map<String, dynamic> json) => _$SortFromJson(json);
}
