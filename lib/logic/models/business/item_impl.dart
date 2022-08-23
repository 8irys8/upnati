import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:upnati/logic/models/business/single_value__price_modifier.dart';
import 'package:upnati/logic/models/description.dart';

part 'item_impl.g.dart';
part 'item_impl.freezed.dart';

@freezed
class ItemImpl with _$ItemImpl {
  const factory ItemImpl({
    String? id,
    String? creationDate,
    required Map<dynamic, NameLocalData> name,
    required Map<dynamic, DescriptionLocalData> description,
    List<DeliveryOption>? deliveryOptions,
    List<String>? imageUrls,
    Map<dynamic, String>? characteristicsMap,
    required String itemCategory,
    required String currency,
    double? price,
    required double purchasePrice,
    required int discountPercents,
    int? inStock,
    List<SingleValuePriceModifier>? singleValuePriceModifiers,
    String? itemType,
    int? stock,
    bool? stockConfigured,
    required double oldTotal,
  }) = _ItemImpl;

  factory ItemImpl.fromJson(Map<String, dynamic> json) =>
      _$ItemImplFromJson(json);
}

@freezed
class NameLocalData with _$NameLocalData {
  const factory NameLocalData({
    required String upstoreLocale,
    required String name,
  }) = _NameLocalData;

  factory NameLocalData.fromJson(Map<String, dynamic> json) =>
      _$NameLocalDataFromJson(json);
}

@freezed
class DescriptionLocalData with _$DescriptionLocalData {
  const factory DescriptionLocalData({
    required String upstoreLocale,
    required Description description,
    String? full,
  }) = _DescriptionLocalData;

  factory DescriptionLocalData.fromJson(Map<String, dynamic> json) =>
      _$DescriptionLocalDataFromJson(json);
}

@freezed
class DeliveryOption with _$DeliveryOption {
  const factory DeliveryOption({
    String? id,
    String? creationDate,
    List<ItemImpl>? items,
    DeliveryCompany? company,
    required String deliveryType,
    required String deliverySpeed,
  }) = _DeliveryOption;

  factory DeliveryOption.fromJson(Map<String, dynamic> json) =>
      _$DeliveryOptionFromJson(json);
}

@freezed
class DeliveryCompany with _$DeliveryCompany {
  const factory DeliveryCompany({
    String? id,
    String? creationDate,
    String? name,
    List<String>? imageUrls,
  }) = _DeliveryCompany;

  factory DeliveryCompany.fromJson(Map<String, dynamic> json) =>
      _$DeliveryCompanyFromJson(json);
}
