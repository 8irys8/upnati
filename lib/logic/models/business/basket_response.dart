import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:upnati/logic/models/business/page_item_basket_response.dart';

part 'basket_response.g.dart';
part 'basket_response.freezed.dart';

@freezed
class BasketResponse with _$BasketResponse {
  @JsonSerializable(explicitToJson: true)
  const factory BasketResponse({
    final String? id,
    final PageItemBasketResponse? items,
    final double? price,
    final double? purchasePrice,
    final int? discountPercents,
  }) = _BasketResponse;

  factory BasketResponse.fromJson(Map<String, dynamic> json) =>
      _$BasketResponseFromJson(json);
}
