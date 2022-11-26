import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:upnati/logic/models/business/item_impl.dart';
import 'package:upnati/logic/models/business/item_response.dart';
import 'package:upnati/logic/models/user/location_response.dart';

part 'order.g.dart';
part 'order.freezed.dart';

@freezed
class Order with _$Order {
  @JsonSerializable(explicitToJson: true)
  const factory Order({
    final String? businessId,
    final String? businessName,
    final List<ItemResponse>? items,
    final double? oldTotal,
    final double? purchasePrice,
    final int? discountPercents,
  }) = _Order;

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
}
