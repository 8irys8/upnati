import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:upnati/logic/models/business/item_collection.dart';

part 'commit_order_payload.g.dart';
part 'commit_order_payload.freezed.dart';

@freezed
class CommitOrderPayload with _$CommitOrderPayload {
  const factory CommitOrderPayload({
    ItemCollection? itemCollections,
    String? currency,
    String? paymentMethod,
  }) = _CommitOrderPayload;

  factory CommitOrderPayload.fromJson(Map<String, dynamic> json) =>
      _$CommitOrderPayloadFromJson(json);
}
