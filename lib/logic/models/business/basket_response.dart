import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:upnati/logic/models/business/item_impl.dart';
import 'package:upnati/logic/models/business/single_value__price_modifier.dart';
import 'package:upnati/logic/models/description.dart';

part 'basket_response.g.dart';
part 'basket_response.freezed.dart';

@freezed
class BasketResponse with _$BasketResponse {
  const factory BasketResponse({
    String? id,
    String? creationDate,
    required String userId,
    required List<ItemImpl> items,
    required Map<dynamic, int> amount,
    double? price,
    required double purchasePrice,
    required int discountPercents,
    required double oldTotal,
    bool? empty,
  }) = _BasketResponse;

  factory BasketResponse.fromJson(Map<String, dynamic> json) =>
      _$BasketResponseFromJson(json);
}
