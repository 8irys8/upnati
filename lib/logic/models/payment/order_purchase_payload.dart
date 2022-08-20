import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:upnati/logic/models/payment/item_info_response.dart';

part 'order_purchase_payload.g.dart';
part 'order_purchase_payload.freezed.dart';

@freezed
class OrderPurchasePayload with _$OrderPurchasePayload {
  const factory OrderPurchasePayload({
    required String orderId,
    required String businessId,
    required String bankCurrency,
    required String paymentMethod,
    required List<ItemInfoResponse> items,
  }) = _OrderPurchasePayload;

  factory OrderPurchasePayload.fromJson(Map<String, dynamic> json) =>
      _$OrderPurchasePayloadFromJson(json);
}
