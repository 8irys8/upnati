import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:upnati/logic/models/business/item_response.dart';

part 'order_preview_response.g.dart';
part 'order_preview_response.freezed.dart';

@freezed
class OrderPreviewResponse with _$OrderPreviewResponse {
  const factory OrderPreviewResponse({
    required String businessName,
    required String businessId,
    required List<ItemPreview> itemPreviews,
    required double oldTotal,
    required double purchasePrice,
    required int discountPercents,
  }) = _OrderPreviewResponse;

  factory OrderPreviewResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderPreviewResponseFromJson(json);
}

@freezed
class ItemPreview with _$ItemPreview {
  const factory ItemPreview({
    required ItemResponse item,
    required int amount,
  }) = _ItemPreview;

  factory ItemPreview.fromJson(Map<String, dynamic> json) =>
      _$ItemPreviewFromJson(json);
}
