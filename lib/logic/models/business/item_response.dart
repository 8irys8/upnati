import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:upnati/logic/models/business/single_value__price_modifier.dart';
import 'package:upnati/logic/models/description.dart';

part 'item_response.g.dart';
part 'item_response.freezed.dart';

@freezed
class ItemResponse with _$ItemResponse {
  const factory ItemResponse(
      {final String? id,
      final String? name,
      final String? businessId,
      final String? businessName,
      final String? businessImageUrl,
      final String? itemCategory,
      final String? itemType,
      final String? currency,
      final double? price,
      final Description? description,
      final List<String>? imageUrls,
      final List<String>? videoUrls,
      final Map<dynamic, String>? characteristicsMap,
      final double? purchasePrice,
      final int? discountPercents,
      final int? inStock,
      final List<SingleValuePriceModifier>? singleValuePriceModifiers,
      final bool? stockConfigured,
      final double? deliveryPrice,
      final String? deliveryPreparationTime,
      final bool? favorite,
      final int? amount,
      final String? deliveryTime}) = _ItemResponse;

  factory ItemResponse.fromJson(Map<String, dynamic> json) =>
      _$ItemResponseFromJson(json);
}
