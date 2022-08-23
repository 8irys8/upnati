import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:upnati/logic/models/business/item_impl.dart';
import 'package:upnati/logic/models/user/location_response.dart';

part 'order.g.dart';
part 'order.freezed.dart';

@freezed
class Order with _$Order {
  const factory Order({
    String? id,
    String? creationDate,
    required Business business,
    required String userId,
    required List<ItemImpl> items,
    required Map<dynamic, int> amount,
    required String status,
    double? price,
    required double purchasePrice,
    required int discountPercents,
    required double oldTotal,
  }) = _Order;

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
}

@freezed
class Business with _$Business {
  const factory Business({
    String? id,
    String? creationDate,
    required String name,
    required String defaultLocale,
    required Map<dynamic, DescriptionLocalData> description,
    required String category,
    required LocationResponse location,
    List<String>? imageUrls,
  }) = _Business;

  factory Business.fromJson(Map<String, dynamic> json) =>
      _$BusinessFromJson(json);
}
