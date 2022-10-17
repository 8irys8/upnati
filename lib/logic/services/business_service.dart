import 'dart:io';

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:upnati/core/config/constants.dart';
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

part 'business_service.g.dart';

@RestApi(baseUrl: Constants.businessBaseUrl)
abstract class BusinessService {
  factory BusinessService(Dio dio, {String? baseUrl}) = _BusinessService;

  @GET('/business')
  Future<BusinessResponse> getBusinessInfo();

  @PUT('/business')
  Future<BusinessResponse> createNewBusiness(
    @Body() BusinessForm business,
  );

  @POST('/business')
  Future<BusinessResponse> updateBusinessInfo(
    @Body() BusinessForm business,
  );

  @DELETE('/business')
  Future<UserDetailResponse> deleteBusiness();

  @POST('/business/image')
  Future<BusinessResponse> uploadBusinessImage({
    @Part(name: 'file') required File file,
  });

  @DELETE('/business/image')
  Future<BusinessResponse> deleteBusinessImage({
    @Body() required String url,
  });

  @POST('/business/image/primary')
  Future<BusinessResponse> setPrimaryImage({
    @Body() required String url,
  });

  @GET('/business/all')
  Future<PageBusinessResponse> getAllBusinesses({
    @Query('param') required String param,
    @Query('pageOrder') required String pageOrder,
    @Query('page') int? page,
    @Query('size') required int size,
  });

  //business schema controller
  @GET('/business/schema/location/region')
  Future<List<String>> getBusinessRegion(
    @Query('locale') String? locale,
    @Query('country') String? country,
  );

  @GET('/business/schema/location/region/map/name') //???????
  Future<Map<String, String>> getBusinessRegionMap(
    @Query('locale') String? locale,
  );

  @GET('/business/schema/location/region/map/id')
  Future<Map<String, String>> getBusinessRegionIdMap(
    @Query('locale') String? locale,
  );

  @GET('/business/schema/location/filter')
  Future<FilterForm> getBusinessFilter(
    @Query('locale') String? locale,
    @Query('countryOpt') String? countryOpt,
    @Query('regionOpt') String? regionOpt,
  );

  @GET('/business/schema/location/country')
  Future<List<String>> getBusinessCountry(
    @Query('locale') String? locale,
  );

  @GET('/business/schema/location/country/map/name')
  Future<Map<String, String>> getBusinessCountryMap(
    @Query('locale') String? locale,
  );

  @GET('/business/schema/location/country/map/id')
  Future<Map<String, String>> getBusinessCountryIdMap(
    @Query('locale') String? locale,
  );

  @GET('/business/schema/location/city')
  Future<List<String>> getBusinessCity(
    @Query('locale') String? locale,
    @Query('country') String? country,
    @Query('region') String? region,
  );

  @GET('/business/schema/location/city/map/name')
  Future<Map<String, String>> getBusinessCityMap(
    @Query('locale') String? locale,
  );

  @GET('/business/schema/location/city/map/id')
  Future<Map<String, String>> getBusinessCityIdMap(
    @Query('locale') String? locale,
  );

  @GET('/business/schema/category')
  Future<List<CategoryModel>> getBusinessCategory(
    @Query('locale') String? locale,
  );

  @GET('/business/schema/category/map/name')
  Future<Map<String, String>> getBusinessCategoryMap(
    @Query('locale') String? locale,
  );

  @GET('/business/schema/category/map/id')
  Future<Map<String, String>> getBusinessCategoryIdMap(
    @Query('locale') String? locale,
  );

  //item schema controller
  @GET('/items/schema/type')
  Future<List<String>> getItemType(
    @Query('locale') String? locale,
  );

  @GET('/items/schema/type/map/name')
  Future<Map<String, String>> getItemTypeMap(
    @Query('locale') String? locale,
  );

  @GET('/items/schema/type/map/id')
  Future<Map<String, String>> getItemTypeIdMap(
    @Query('locale') String? locale,
  );

  @GET('/items/schema/category')
  Future<List<CategoryModel>> getItemCategory(
    @Query('locale') String? locale,
  );

  @GET('/items/category/{cat}')
  Future<PageItemResponse> getItemByCategory(
    @Path('cat') String? cat,
    @Query('param') String? param,
    @Query('pageOrder') String? pageOrder,
    @Query('page') int? page,
    @Query('size') int? size,
  );

  @GET('/items/schema/category/service')
  Future<List<String>> getItemServiceCategory(
    @Query('locale') String? locale,
  );

  @GET('/items/schema/category/service/map/name')
  Future<Map<String, String>> getItemServiceCategoryMap(
    @Query('locale') String? locale,
  );

  @GET('/items/schema/category/service/map/id')
  Future<Map<String, String>> getItemServiceCategoryIdMap(
    @Query('locale') String? locale,
  );

  @GET('/items/schema/category/map/name')
  Future<Map<String, String>> getItemCategoryMap(
    @Query('locale') String? locale,
  );

  @GET('/items/schema/category/map/id')
  Future<Map<String, String>> getItemCategoryIdMap(
    @Query('locale') String? locale,
  );

  @GET('/items/schema/category/goods')
  Future<List<String>> getItemGoodsCategory(
    @Query('locale') String? locale,
  );

  @GET('/items/schema/category/goods/map/name')
  Future<Map<String, String>> getItemGoodsCategoryMap(
    @Query('locale') String? locale,
  );

  @GET('/items/schema/category/goods/map/id')
  Future<Map<String, String>> getItemGoodsCategoryIdMap(
    @Query('locale') String? locale,
  );

  @GET('/business/schema/delivery/type')
  Future<List<String>> getDeliveryType(
    @Query('locale') String? locale,
  );

  @GET('/business/schema/delivery/time')
  Future<List<String>> getDeliveryTime(
    @Query('locale') String? locale,
  );

  @GET('/business/schema/delivery/scope')
  Future<List<String>> getDeliveryScope(
    @Query('locale') String? locale,
  );

  // items controller
  @GET('/items')
  Future<PageItemResponse> getMyItems({
    @Query('param') required String param,
    @Query('pageOrder') required String pageOrder,
    @Query('page') int? page,
    @Query('size') required int size,
  });

  @PUT('/items')
  Future<ItemResponse> createNewItem(
    @Body() ItemForm item,
  );

  @POST('/items')
  Future<ItemResponse> updateItem(
    @Body() ItemForm item,
  );

  @POST('/items/{id}/image')
  Future<ItemResponse> setBusinessImage({
    @Path() required String id,
    @Body() required String file,
  });

  @DELETE('/items/{id}/image')
  Future<ItemResponse> deleteItemImage({
    @Path() required String id,
    @Body() required ImageUrlPayload payload,
  });

  @POST('/items/{id}/image/primary')
  Future<ItemResponse> setPrimaryItemImage({
    @Path() required String id,
    @Body() required ImageUrlPayload payload,
  });

  @GET('/items/{id}')
  Future<PageItemResponse> getAllItemsOfBusiness({
    @Path() required String id,
    @Query('param') required String param,
    @Query('pageOrder') required String pageOrder,
    @Query('page') int? page,
    @Query('size') required int size,
  });

  @DELETE('/items/{id}')
  Future<void> deleteItem({
    @Path() required String id,
  });

  @GET('/items/all')
  Future<PageItemResponse> getAllItems({
    @Query('param') required String param,
    @Query('pageOrder') required String pageOrder,
    @Query('page') int? page,
    @Query('size') required int size,
  });

  //basket controller
  @GET('/basket')
  Future<BasketResponse> getUserBasket();

  @POST('/basket')
  Future<BasketResponse> modifyBasket({
    @Body() required ItemCollection itemCollection,
  });

  //order controller
  @POST('/orders/preview')
  Future<List<OrderPreviewResponse>> previewOrder({
    @Body() required ItemCollection collection,
  });

  @POST('/orders/commit')
  Future<CommitedOrdersResponse> createOrder({
    @Body() required CommitOrderPayload payload,
  });

  @GET('/orders')
  Future<PageOrderResponse> getAllUserOrders({
    @Query('param') required String param,
    @Query('pageOrder') required String pageOrder,
    @Query('page') int? page,
    @Query('size') required int size,
  });

  @GET('/orders/business')
  Future<PageOrderResponse> getAllBusinessOrders({
    @Query('param') required String param,
    @Query('pageOrder') required String pageOrder,
    @Query('page') int? page,
    @Query('size') required int size,
  });

  //search controller
  @GET('/search')
  Future<SearchResponse> search({
    @Query('query') required String query,
    @Query('size') required int size,
  });
}
