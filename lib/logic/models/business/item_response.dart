import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:upnati/logic/models/business/single_value__price_modifier.dart';
import 'package:upnati/logic/models/description.dart';

part 'item_response.g.dart';
part 'item_response.freezed.dart';

@freezed
class ItemResponse with _$ItemResponse {
  const factory ItemResponse({
    String? id,
    String? name,
    String? businessId,
    String? businessName,
    String? businessImageUrl,
    String? itemCategory,
    String? itemType,
    String? currency,
    double? price,
    Description? description,
    List<String>? imageUrls,
    List<String>? videoUrls,
    Map<dynamic, String>? characteristicsMap,
    double? purchasePrice,
    int? discountPercents,
    int? inStock,
    List<SingleValuePriceModifier>? singleValuePriceModifiers,
    bool? stockConfigured,
  }) = _ItemResponse;

  factory ItemResponse.fromJson(Map<String, dynamic> json) =>
      _$ItemResponseFromJson(json);
}
