import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:upnati/logic/models/business/single_value__price_modifier.dart';
import 'package:upnati/logic/models/description.dart';

part 'item_response.g.dart';
part 'item_response.freezed.dart';

@freezed
class ItemResponse with _$ItemResponse {
  const factory ItemResponse({
    required String id,
    required String name,
    required String businessId,
    required String businessName,
    required String itemCategory,
    required String itemType,
    required String currency,
    double? price,
    required Description description,
    List<String>? imageUrls,
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
