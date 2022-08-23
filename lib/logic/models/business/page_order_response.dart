import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:upnati/logic/models/business/order.dart';
import 'package:upnati/logic/models/pageable.dart';
import 'package:upnati/logic/models/sort.dart';

part 'page_order_response.g.dart';
part 'page_order_response.freezed.dart';

@freezed
class PageOrderResponse with _$PageOrderResponse {
  const factory PageOrderResponse({
    int? totalPages,
    int? totalElements,
    Sort? sort,
    bool? first,
    bool? last,
    int? number,
    int? numberOfElements,
    Pageable? pageable,
    int? size,
    List<Order>? content,
    bool? empty,
  }) = _PageOrderResponse;

  factory PageOrderResponse.fromJson(Map<String, dynamic> json) =>
      _$PageOrderResponseFromJson(json);
}
