import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:upnati/logic/models/business/business_response.dart';
import 'package:upnati/logic/models/business/single_value__price_modifier.dart';
import 'package:upnati/logic/models/description.dart';

part 'item_impl.g.dart';
part 'item_impl.freezed.dart';

@freezed
class ItemImpl with _$ItemImpl {
  @JsonSerializable(explicitToJson: true)
  const factory ItemImpl(
      {String? id,
      String? creationDate,
      Map<dynamic, NameLocalData>? name,
      Map<dynamic, DescriptionLocalData>? description,
      List<DeliveryOption>? deliveryOptions,
      List<String>? imageUrls,
      List<String>? videoUrls,
      Map<dynamic, String>? characteristicsMap,
      String? itemCategory,
      String? refCode,
      String? currency,
      double? price,
      double? deliveryPrice,
      double? purchasePrice,
      int? discountPercents,
      int? inStock,
      List<SingleValuePriceModifier>? singleValuePriceModifiers,
      Map<dynamic, String>? dynamicValues,
      String? itemType,
      int? stock,
      List<String>? allImages,
      List<String>? allVideo,
      String? deliveryTime,
      String? deliveryPreparationTime,
      bool? stockConfigured,
      double? oldTotal,
      String? image,
      String? video}) = _ItemImpl;

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
  const factory DeliveryOption(
      {final String? id,
      final String? creationDate,
      final NameLocalData? name,
      final BusinessResponse? business,
      final double? price,
      // final DeliveryCompany? company,
      final String? deliveryType,
      final String? deliveryScope,
      final int? deliveryTimeMin,
      final int? deliveryTimeMax,
      final String? timeUnit}) = _DeliveryOption;

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
