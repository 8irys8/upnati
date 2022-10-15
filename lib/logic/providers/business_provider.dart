import 'dart:io';

import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:upnati/core/config/interceptors.dart';
import 'package:upnati/core/config/utils.dart';
import 'package:upnati/logic/models/business/basket_response.dart';
import 'package:upnati/logic/models/business/business_response.dart';
import 'package:upnati/logic/models/business/category_model.dart';
import 'package:upnati/logic/models/business/commit_order_payload.dart';
import 'package:upnati/logic/models/business/commited_orders_response.dart';
import 'package:upnati/logic/models/business/filter_form.dart';
import 'package:upnati/logic/models/business/image_url_payload.dart';
import 'package:upnati/logic/models/business/item_collection.dart';
import 'package:upnati/logic/models/business/item_form.dart';
import 'package:upnati/logic/models/business/item_response.dart';
import 'package:upnati/logic/models/business/order_preview_response.dart';
import 'package:upnati/logic/models/business/page_business_response.dart';
import 'package:upnati/logic/models/business/page_item_response.dart';
import 'package:upnati/logic/models/business/page_order_response.dart';
import 'package:upnati/logic/models/business/search_response.dart';
import 'package:upnati/logic/models/business_form.dart';
import 'package:upnati/logic/models/user/user_detail_response.dart';
import 'package:upnati/logic/services/business_service.dart';

@lazySingleton
class BusinessProvider {
  late final BusinessService _businessService;
  final AppInterceptors _interceptors;

  BusinessProvider(this._interceptors) {
    _businessService = BusinessService(Utils.build(interceptors: [
      _interceptors.errorInterceptor,
      _interceptors.tokenInterceptor,
    ]));
  }

  Future<BusinessResponse> getBusinessInfo() =>
      _businessService.getBusinessInfo();

  Future<BusinessResponse> createNewBusiness(
    BusinessForm business,
  ) =>
      _businessService.createNewBusiness(business);

  Future<BusinessResponse> updateBusinessInfo(
    BusinessForm business,
  ) =>
      _businessService.updateBusinessInfo(business);

  Future<UserDetailResponse> deleteBusiness() =>
      _businessService.deleteBusiness();

  Future<BusinessResponse> uploadBusinessImage({
    required File file,
  }) async {
    var tmpdir = await getTemporaryDirectory();
    var targetPath =
        '${tmpdir.path}/${DateTime.now().millisecondsSinceEpoch.toString()}.jpg';
    var result = await FlutterImageCompress.compressAndGetFile(
      file.absolute.path,
      targetPath,
      quality: 88,
    );

    return _businessService.uploadBusinessImage(file: result!);
  }

  Future<BusinessResponse> deleteBusinessImage({
    required String url,
  }) =>
      _businessService.deleteBusinessImage(url: url);

  Future<BusinessResponse> setPrimaryImage({
    required String url,
  }) =>
      _businessService.setPrimaryImage(url: url);

  Future<PageBusinessResponse> getAllBusinesses({
    required String param,
    required String pageOrder,
    int? page,
    required int size,
  }) =>
      _businessService.getAllBusinesses(
        param: param,
        pageOrder: pageOrder,
        page: page,
        size: size,
      );

  //business schema controller
  Future<List<String>> getBusinessRegion(
    String? locale,
    String? country,
  ) =>
      _businessService.getBusinessRegion(
        locale,
        country,
      );

  Future<List<String>> getDeliveryType({String? locale}) =>
      _businessService.getDeliveryType(
        locale,
      );

  Future<List<String>> getDeliveryTime({String? locale}) =>
      _businessService.getDeliveryTime(
        locale,
      );

  Future<List<String>> getDeliveryScope({String? locale}) =>
      _businessService.getDeliveryScope(
        locale,
      );

//???????
  Future<Map<String, String>> getBusinessRegionMap(
    String? locale,
  ) =>
      _businessService.getBusinessRegionMap(
        locale,
      );

  Future<Map<String, String>> getBusinessRegionIdMap(
    String? locale,
  ) =>
      _businessService.getBusinessRegionIdMap(
        locale,
      );

  Future<FilterForm> getBusinessFilter(
    String? locale,
    String? countryOpt,
    String? regionOpt,
  ) =>
      _businessService.getBusinessFilter(
        locale,
        countryOpt,
        regionOpt,
      );

  Future<List<String>> getBusinessCountry(
    String? locale,
  ) =>
      _businessService.getBusinessCountry(
        locale,
      );

  Future<Map<String, String>> getBusinessCountryMap(
    String? locale,
  ) =>
      _businessService.getBusinessCountryMap(
        locale,
      );

  Future<Map<String, String>> getBusinessCountryIdMap(
    String? locale,
  ) =>
      _businessService.getBusinessCountryIdMap(
        locale,
      );

  Future<List<String>> getBusinessCity(
    String? locale,
    String? country,
    String? region,
  ) =>
      _businessService.getBusinessCity(
        locale,
        country,
        region,
      );

  Future<Map<String, String>> getBusinessCityMap(
    String? locale,
  ) =>
      _businessService.getBusinessCityMap(
        locale,
      );

  Future<Map<String, String>> getBusinessCityIdMap(
    String? locale,
  ) =>
      _businessService.getBusinessCityIdMap(
        locale,
      );

  Future<List<CategoryModel>> getBusinessCategory({
    String? locale,
  }) =>
      _businessService.getBusinessCategory(
        locale,
      );

  Future<Map<String, String>> getBusinessCategoryMap({
    String? locale,
  }) =>
      _businessService.getBusinessCategoryMap(
        locale,
      );

  Future<Map<String, String>> getBusinessCategoryIdMap({
    String? locale,
  }) =>
      _businessService.getBusinessCategoryIdMap(
        locale,
      );

  //item schema controller
  Future<PageItemResponse> getItemByCategory({
    required String cat,
    required String param,
    required String pageOrder,
    int? page,
    required int size,
  }) =>
      _businessService.getItemByCategory(
        cat,
        param,
        pageOrder,
        page,
        size,
      );

  Future<List<String>> getItemType(
    String? locale,
  ) =>
      _businessService.getItemType(
        locale,
      );

  Future<Map<String, String>> getItemTypeMap(
    String? locale,
  ) =>
      _businessService.getItemTypeMap(
        locale,
      );

  Future<Map<String, String>> getItemTypeIdMap(
    String? locale,
  ) =>
      _businessService.getItemTypeIdMap(
        locale,
      );

  Future<List<CategoryModel>> getItemCategory(
    String? locale,
  ) =>
      _businessService.getItemCategory(
        locale,
      );

  Future<List<String>> getItemServiceCategory(
    String? locale,
  ) =>
      _businessService.getItemServiceCategory(
        locale,
      );

  Future<Map<String, String>> getItemServiceCategoryMap(
    String? locale,
  ) =>
      _businessService.getItemServiceCategoryMap(
        locale,
      );

  Future<Map<String, String>> getItemServiceCategoryIdMap(
    String? locale,
  ) =>
      _businessService.getItemServiceCategoryIdMap(
        locale,
      );

  Future<Map<String, String>> getItemCategoryMap(
    String? locale,
  ) =>
      _businessService.getItemCategoryMap(
        locale,
      );

  Future<Map<String, String>> getItemCategoryIdMap(
    String? locale,
  ) =>
      _businessService.getItemCategoryIdMap(
        locale,
      );

  Future<List<String>> getItemGoodsCategory(
    String? locale,
  ) =>
      _businessService.getItemGoodsCategory(
        locale,
      );

  Future<Map<String, String>> getItemGoodsCategoryMap(
    String? locale,
  ) =>
      _businessService.getItemGoodsCategoryMap(
        locale,
      );

  Future<Map<String, String>> getItemGoodsCategoryIdMap(
    String? locale,
  ) =>
      _businessService.getItemGoodsCategoryIdMap(
        locale,
      );

  // items controller
  Future<PageItemResponse> getMyItems({
    required String param,
    required String pageOrder,
    int? page,
    required int size,
  }) =>
      _businessService.getMyItems(
        param: param,
        pageOrder: pageOrder,
        page: page,
        size: size,
      );

  Future<ItemResponse> createNewItem(
    ItemForm item,
  ) =>
      _businessService.createNewItem(item);

  Future<ItemResponse> updateItem(
    ItemForm item,
  ) =>
      _businessService.updateItem(item);

  Future<ItemResponse> setBusinessImage({
    required String id,
    required String file,
  }) =>
      _businessService.setBusinessImage(
        id: id,
        file: file,
      );

  Future<ItemResponse> deleteItemImage({
    required String id,
    required ImageUrlPayload payload,
  }) =>
      _businessService.deleteItemImage(
        id: id,
        payload: payload,
      );

  Future<ItemResponse> setPrimaryItemImage({
    required String id,
    required ImageUrlPayload payload,
  }) =>
      _businessService.setPrimaryItemImage(
        id: id,
        payload: payload,
      );

  Future<PageItemResponse> getAllItemsOfBusiness({
    required String id,
    required String param,
    required String pageOrder,
    int? page,
    required int size,
  }) =>
      _businessService.getAllItemsOfBusiness(
        id: id,
        param: param,
        pageOrder: pageOrder,
        page: page,
        size: size,
      );

  Future<void> deleteItem({
    required String id,
  }) =>
      _businessService.deleteItem(
        id: id,
      );

  Future<PageItemResponse> getAllItems({
    required String param,
    required String pageOrder,
    int? page,
    required int size,
  }) =>
      _businessService.getAllItems(
        param: param,
        pageOrder: pageOrder,
        page: page,
        size: size,
      );

  //basket controller
  Future<BasketResponse> getUserBasket() => _businessService.getUserBasket();

  Future<BasketResponse> modifyBasket({
    required ItemCollection itemCollection,
  }) =>
      _businessService.modifyBasket(
        itemCollection: itemCollection,
      );

  //order controller

  Future<List<OrderPreviewResponse>> previewOrder({
    required ItemCollection collection,
  }) =>
      _businessService.previewOrder(
        collection: collection,
      );

  Future<CommitedOrdersResponse> createOrder({
    required CommitOrderPayload payload,
  }) =>
      _businessService.createOrder(
        payload: payload,
      );

  Future<PageOrderResponse> getAllUserOrders({
    required String param,
    required String pageOrder,
    int? page,
    required int size,
  }) =>
      _businessService.getAllUserOrders(
        param: param,
        pageOrder: pageOrder,
        page: page,
        size: size,
      );

  Future<PageOrderResponse> getAllBusinessOrders({
    required String param,
    required String pageOrder,
    int? page,
    required int size,
  }) =>
      _businessService.getAllBusinessOrders(
        param: param,
        pageOrder: pageOrder,
        page: page,
        size: size,
      );

  //search controller
  Future<SearchResponse> search({
    required String query,
    required int size,
  }) =>
      _businessService.search(
        query: query,
        size: size,
      );
}
