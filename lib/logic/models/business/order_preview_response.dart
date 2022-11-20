import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:upnati/logic/models/business/item_collection.dart';
import 'package:upnati/logic/models/business/item_response.dart';

part 'order_preview_response.g.dart';
part 'order_preview_response.freezed.dart';

@freezed
class OrderPreviewResponse with _$OrderPreviewResponse {
  @JsonSerializable(explicitToJson: true)
  const factory OrderPreviewResponse({
    final String? businessId,
    final String? deliveryOptionId,
    final ItemCollection? itemCollections,
  }) = _OrderPreviewResponse;

  factory OrderPreviewResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderPreviewResponseFromJson(json);
}

@freezed
class DeliveryInfo with _$DeliveryInfo {
  const factory DeliveryInfo({
    final String? address,
    final String? city,
    final String? postalCode,
    final String? receiverName,
    final String? phoneNumber,
    final String? email,
  }) = _DeliveryInfo;

  factory DeliveryInfo.fromJson(Map<String, dynamic> json) =>
      _$DeliveryInfoFromJson(json);
}
