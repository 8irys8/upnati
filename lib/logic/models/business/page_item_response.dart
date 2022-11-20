import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:upnati/logic/models/business/item_response.dart';
import 'package:upnati/logic/models/pageable.dart';
import 'package:upnati/logic/models/sort.dart';

part 'page_item_response.g.dart';
part 'page_item_response.freezed.dart';

@freezed
class PageItemResponse with _$PageItemResponse {
  const factory PageItemResponse({
    int? totalPages,
    int? totalElements,
    Sort? sort,
    bool? first,
    bool? last,
    int? number,
    int? numberOfElements,
    Pageable? pageable,
    int? size,
    List<ItemResponse>? content,
    bool? empty,
  }) = _PageItemResponse;

  factory PageItemResponse.fromJson(Map<String, dynamic> json) =>
      _$PageItemResponseFromJson(json);
}
