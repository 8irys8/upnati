import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:upnati/logic/models/item_basket_response.dart';
import 'package:upnati/logic/models/pageable.dart';
import 'package:upnati/logic/models/sort.dart';

part 'page_item_basket_response.g.dart';
part 'page_item_basket_response.freezed.dart';

@freezed
class PageItemBasketResponse with _$PageItemBasketResponse {
  @JsonSerializable(explicitToJson: true)
  const factory PageItemBasketResponse({
    final int? totalPages,
    final int? totalElements,
    final Sort? sort,
    final bool? first,
    final bool? last,
    final int? number,
    final int? numberOfElements,
    final Pageable? pageable,
    final int? size,
    final List<ItemBasketResponse>? content,
    final bool? empty,
  }) = _PageItemBasketResponse;

  factory PageItemBasketResponse.fromJson(Map<String, dynamic> json) =>
      _$PageItemBasketResponseFromJson(json);
}
