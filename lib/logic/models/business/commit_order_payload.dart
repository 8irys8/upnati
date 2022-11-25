import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:upnati/logic/models/business/item_collection.dart';
import 'package:upnati/logic/models/business/order_preview_response.dart';

part 'commit_order_payload.g.dart';
part 'commit_order_payload.freezed.dart';

@freezed
class CommitOrderPayload with _$CommitOrderPayload {
  @JsonSerializable(explicitToJson: true)
  const factory CommitOrderPayload({
    final ItemCollection? items,
    final DeliveryInfo? deliveryInfo,
    final String? currency,
    final String? paymentMethod,
  }) = _CommitOrderPayload;

  factory CommitOrderPayload.fromJson(Map<String, dynamic> json) =>
      _$CommitOrderPayloadFromJson(json);
}
