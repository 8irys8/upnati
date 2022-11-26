import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:upnati/logic/models/business/order.dart';
import 'package:upnati/logic/models/pageable.dart';
import 'package:upnati/logic/models/sort.dart';

part 'page_order_response.g.dart';
part 'page_order_response.freezed.dart';

@freezed
class PageOrderResponse with _$PageOrderResponse {
  @JsonSerializable(explicitToJson: true)
  const factory PageOrderResponse({
    final int? totalPages,
    final int? totalElements,
    final Sort? sort,
    final bool? first,
    final bool? last,
    final int? number,
    final int? numberOfElements,
    final Pageable? pageable,
    final int? size,
    final List<Order>? content,
    final bool? empty,
  }) = _PageOrderResponse;

  factory PageOrderResponse.fromJson(Map<String, dynamic> json) =>
      _$PageOrderResponseFromJson(json);
}
