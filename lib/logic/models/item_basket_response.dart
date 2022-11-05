import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:upnati/logic/models/business/single_value__price_modifier.dart';
import 'package:upnati/logic/models/description.dart';

part 'item_basket_response.g.dart';
part 'item_basket_response.freezed.dart';

@freezed
class ItemBasketResponse with _$ItemBasketResponse {
  @JsonSerializable(explicitToJson: true)
  const factory ItemBasketResponse({
    @JsonKey(ignore: true, defaultValue: false) final bool? isSelected,
    final String? id,
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
    final SingleValuePriceModifier? priceModifier,
    final double? deliveryPrice,
    final String? deliveryPreparationTime,
    final String? deliveryTime,
    final int? amount,
    final bool? favorite,
    final bool? stockConfigured,
  }) = _ItemBasketResponse;

  factory ItemBasketResponse.fromJson(Map<String, dynamic> json) =>
      _$ItemBasketResponseFromJson(json);
}
