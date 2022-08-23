import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:upnati/logic/models/business/order.dart';

part 'commited_orders_response.g.dart';
part 'commited_orders_response.freezed.dart';

@freezed
class CommitedOrdersResponse with _$CommitedOrdersResponse {
  const factory CommitedOrdersResponse({
    Map<dynamic, Order>? orders,
    Map<dynamic, String>? paymentLinks,
  }) = _CommitedOrdersResponse;

  factory CommitedOrdersResponse.fromJson(Map<String, dynamic> json) =>
      _$CommitedOrdersResponseFromJson(json);
}
