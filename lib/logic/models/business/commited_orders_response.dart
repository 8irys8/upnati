import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:upnati/logic/models/business/item_response.dart';
import 'package:upnati/logic/models/business/order.dart';

part 'commited_orders_response.g.dart';
part 'commited_orders_response.freezed.dart';

@freezed
class CommitedOrdersResponse with _$CommitedOrdersResponse {
  @JsonSerializable(explicitToJson: true)
  const factory CommitedOrdersResponse({
    final String? businessName,
    final String? businessId,
    final List<ItemResponse>? items,
    final double? oldTotal,
    final double? purchasePrice,
    final int? discountPercents,
    final String? paymentLink,
  }) = _CommitedOrdersResponse;

  factory CommitedOrdersResponse.fromJson(Map<String, dynamic> json) =>
      _$CommitedOrdersResponseFromJson(json);
}
