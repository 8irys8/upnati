import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:upnati/logic/models/business/basket_response.dart';
import 'package:upnati/logic/models/business/business_response.dart';
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
import 'package:upnati/logic/providers/business_provider.dart';

part 'business_state.dart';
part 'business_cubit.freezed.dart';

@injectable
class BusinessCubit extends Cubit<BusinessState> {
  final BusinessProvider _businessProvider;
  BusinessCubit(this._businessProvider) : super(const BusinessState.initial());

  Future<void> getBusinessInfo() async {
    emit(const BusinessState.loading());
    try {
      final response = await _businessProvider.getBusinessInfo();
      emit(BusinessState.successBusinessResponse(response));
    } catch (e) {
      emit(BusinessState.error(e));
    }
  }

  Future<void> createNewBusiness(BusinessForm businessForm) async {
    emit(const BusinessState.loading());
    try {
      final response = await _businessProvider.createNewBusiness(businessForm);
      emit(BusinessState.successBusinessResponse(response));
    } catch (e) {
      emit(BusinessState.error(e));
    }
  }

  Future<void> updateBusinessInfo(
    BusinessForm business,
  ) async {
    emit(const BusinessState.loading());
    try {
      final response = await _businessProvider.updateBusinessInfo(business);
      emit(BusinessState.successBusinessResponse(response));
    } catch (e) {
      emit(BusinessState.error(e));
    }
  }

  Future<void> deleteBusiness() async {
    emit(const BusinessState.loading());
    try {
      final response = await _businessProvider.deleteBusiness();
      emit(BusinessState.successUserDetailResponse(response));
    } catch (e) {
      emit(BusinessState.error(e));
    }
  }

  Future<void> uploadBusinessImage({
    required String file,
  }) async {
    emit(const BusinessState.loading());
    try {
      final response = await _businessProvider.uploadBusinessImage(file: file);
      emit(BusinessState.successBusinessResponse(response));
    } catch (e) {
      emit(BusinessState.error(e));
    }
  }

  Future<void> deleteBusinessImage({
    required String url,
  }) async {
    emit(const BusinessState.loading());
    try {
      final response = await _businessProvider.deleteBusinessImage(url: url);
      emit(BusinessState.successBusinessResponse(response));
    } catch (e) {
      emit(BusinessState.error(e));
    }
  }

  Future<void> setPrimaryImage({
    required String url,
  }) async {
    emit(const BusinessState.loading());
    try {
      final response = await _businessProvider.setPrimaryImage(url: url);
      emit(BusinessState.successBusinessResponse(response));
    } catch (e) {
      emit(BusinessState.error(e));
    }
  }

  Future<void> getAllBusinesses({
    required String param,
    required String pageOrder,
    int? page,
    required int size,
  }) async {
    emit(const BusinessState.loading());
    try {
      final response = await _businessProvider.getAllBusinesses(
        param: param,
        pageOrder: pageOrder,
        page: page,
        size: size,
      );
      emit(BusinessState.successPageBusinessResponse(response));
    } catch (e) {
      emit(BusinessState.error(e));
    }
  }

//   //business schema controller
  Future<void> getBusinessRegion(
    String? locale,
    String? country,
  ) async {
    emit(const BusinessState.loading());
    try {
      final response = await _businessProvider.getBusinessRegion(
        locale,
        country,
      );
      emit(BusinessState.successBusinessList(response));
    } catch (e) {
      emit(BusinessState.error(e));
    }
  }

  //???????
  Future<void> getBusinessRegionMap(
    String? locale,
  ) async {
    emit(const BusinessState.loading());
    try {
      final response = await _businessProvider.getBusinessRegionMap(locale);
      emit(BusinessState.successBusinessMapInfo(response));
    } catch (e) {
      emit(BusinessState.error(e));
    }
  }

  Future<void> getBusinessRegionIdMap(
    String? locale,
  ) async {
    emit(const BusinessState.loading());
    try {
      final response = await _businessProvider.getBusinessRegionIdMap(locale);
      emit(BusinessState.successBusinessMapInfo(response));
    } catch (e) {
      emit(BusinessState.error(e));
    }
  }

  Future<void> getBusinessFilter(
    String? locale,
    String? countryOpt,
    String? regionOpt,
  ) async {
    emit(const BusinessState.loading());
    try {
      final response = await _businessProvider.getBusinessFilter(
        locale,
        countryOpt,
        regionOpt,
      );
      emit(BusinessState.successBusinessFilter(response));
    } catch (e) {
      emit(BusinessState.error(e));
    }
  }

  Future<void> getBusinessCountry(
    String? locale,
  ) async {
    emit(const BusinessState.loading());
    try {
      final response = await _businessProvider.getBusinessCountry(locale);
      emit(BusinessState.successBusinessList(response));
    } catch (e) {
      emit(BusinessState.error(e));
    }
  }

  Future<void> getBusinessCountryMap(
    String? locale,
  ) async {
    emit(const BusinessState.loading());
    try {
      final response = await _businessProvider.getBusinessCountryMap(locale);
      emit(BusinessState.successBusinessMapInfo(response));
    } catch (e) {
      emit(BusinessState.error(e));
    }
  }

  Future<void> getBusinessCountryIdMap(
    String? locale,
  ) async {
    emit(const BusinessState.loading());
    try {
      final response = await _businessProvider.getBusinessCountryIdMap(locale);
      emit(BusinessState.successBusinessMapInfo(response));
    } catch (e) {
      emit(BusinessState.error(e));
    }
  }

  Future<void> getBusinessCity(
    String? locale,
    String? country,
    String? region,
  ) async {
    emit(const BusinessState.loading());
    try {
      final response = await _businessProvider.getBusinessCity(
        locale,
        country,
        region,
      );
      emit(BusinessState.successBusinessList(response));
    } catch (e) {
      emit(BusinessState.error(e));
    }
  }

  Future<void> getBusinessCityMap(
    String? locale,
  ) async {
    emit(const BusinessState.loading());
    try {
      final response = await _businessProvider.getBusinessCityMap(locale);
      emit(BusinessState.successBusinessMapInfo(response));
    } catch (e) {
      emit(BusinessState.error(e));
    }
  }

  Future<void> getBusinessCityIdMap(
    String? locale,
  ) async {
    emit(const BusinessState.loading());
    try {
      final response = await _businessProvider.getBusinessCityIdMap(locale);
      emit(BusinessState.successBusinessMapInfo(response));
    } catch (e) {
      emit(BusinessState.error(e));
    }
  }

  Future<void> getBusinessCategory(
    String? locale,
  ) async {
    emit(const BusinessState.loading());
    try {
      final response = await _businessProvider.getBusinessCategory(locale);
      emit(BusinessState.successBusinessList(response));
    } catch (e) {
      emit(BusinessState.error(e));
    }
  }

  Future<void> getBusinessCategoryMap(
    String? locale,
  ) async {
    emit(const BusinessState.loading());
    try {
      final response = await _businessProvider.getBusinessCategoryMap(locale);
      emit(BusinessState.successBusinessMapInfo(response));
    } catch (e) {
      emit(BusinessState.error(e));
    }
  }

  Future<void> getBusinessCategoryIdMap(
    String? locale,
  ) async {
    emit(const BusinessState.loading());
    try {
      final response = await _businessProvider.getBusinessCategoryIdMap(locale);
      emit(BusinessState.successBusinessMapInfo(response));
    } catch (e) {
      emit(BusinessState.error(e));
    }
  }

//   //item schema controller

  Future<void> getItemType(
    String? locale,
  ) async {
    emit(const BusinessState.loading());
    try {
      final response = await _businessProvider.getItemType(locale);
      emit(BusinessState.successBusinessList(response));
    } catch (e) {
      emit(BusinessState.error(e));
    }
  }

  Future<void> getItemTypeMap(
    String? locale,
  ) async {
    emit(const BusinessState.loading());
    try {
      final response = await _businessProvider.getItemTypeMap(locale);
      emit(BusinessState.successBusinessMapInfo(response));
    } catch (e) {
      emit(BusinessState.error(e));
    }
  }

  Future<void> getItemTypeIdMap(
    String? locale,
  ) async {
    emit(const BusinessState.loading());
    try {
      final response = await _businessProvider.getItemTypeIdMap(locale);
      emit(BusinessState.successBusinessMapInfo(response));
    } catch (e) {
      emit(BusinessState.error(e));
    }
  }

  Future<void> getItemCategory(
    String? locale,
  ) async {
    emit(const BusinessState.loading());
    try {
      final response = await _businessProvider.getItemCategory(locale);
      emit(BusinessState.successBusinessList(response));
    } catch (e) {
      emit(BusinessState.error(e));
    }
  }

  Future<void> getItemServiceCategory(
    String? locale,
  ) async {
    emit(const BusinessState.loading());
    try {
      final response = await _businessProvider.getItemServiceCategory(locale);
      emit(BusinessState.successBusinessList(response));
    } catch (e) {
      emit(BusinessState.error(e));
    }
  }

  Future<void> getItemServiceCategoryMap(
    String? locale,
  ) async {
    emit(const BusinessState.loading());
    try {
      final response =
          await _businessProvider.getItemServiceCategoryMap(locale);
      emit(BusinessState.successBusinessMapInfo(response));
    } catch (e) {
      emit(BusinessState.error(e));
    }
  }

  Future<void> getItemServiceCategoryIdMap(
    String? locale,
  ) async {
    emit(const BusinessState.loading());
    try {
      final response =
          await _businessProvider.getItemServiceCategoryIdMap(locale);
      emit(BusinessState.successBusinessMapInfo(response));
    } catch (e) {
      emit(BusinessState.error(e));
    }
  }

  Future<void> getItemCategoryMap(
    String? locale,
  ) async {
    emit(const BusinessState.loading());
    try {
      final response = await _businessProvider.getItemCategoryMap(locale);
      emit(BusinessState.successBusinessMapInfo(response));
    } catch (e) {
      emit(BusinessState.error(e));
    }
  }

  Future<void> getItemCategoryIdMap(
    String? locale,
  ) async {
    emit(const BusinessState.loading());
    try {
      final response = await _businessProvider.getItemCategoryIdMap(locale);
      emit(BusinessState.successBusinessMapInfo(response));
    } catch (e) {
      emit(BusinessState.error(e));
    }
  }

  Future<void> getItemGoodsCategory(
    String? locale,
  ) async {
    emit(const BusinessState.loading());
    try {
      final response = await _businessProvider.getItemGoodsCategory(locale);
      emit(BusinessState.successBusinessList(response));
    } catch (e) {
      emit(BusinessState.error(e));
    }
  }

  Future<void> getItemGoodsCategoryMap(
    String? locale,
  ) async {
    emit(const BusinessState.loading());
    try {
      final response = await _businessProvider.getItemGoodsCategoryMap(locale);
      emit(BusinessState.successBusinessMapInfo(response));
    } catch (e) {
      emit(BusinessState.error(e));
    }
  }

  Future<void> getItemGoodsCategoryIdMap(
    String? locale,
  ) async {
    emit(const BusinessState.loading());
    try {
      final response =
          await _businessProvider.getItemGoodsCategoryIdMap(locale);
      emit(BusinessState.successBusinessMapInfo(response));
    } catch (e) {
      emit(BusinessState.error(e));
    }
  }

//   // items controller
  Future<void> getMyItems({
    required String param,
    required String pageOrder,
    int? page,
    required int size,
  }) async {
    emit(const BusinessState.loading());
    try {
      final response = await _businessProvider.getMyItems(
        param: param,
        pageOrder: pageOrder,
        page: page,
        size: size,
      );
      emit(BusinessState.successPageItemResponse(response));
    } catch (e) {
      emit(BusinessState.error(e));
    }
  }

  Future<void> createNewItem(
    ItemForm item,
  ) async {
    emit(const BusinessState.loading());
    try {
      final response = await _businessProvider.createNewItem(item);
      emit(BusinessState.successItemResponse(response));
    } catch (e) {
      emit(BusinessState.error(e));
    }
  }

  Future<void> updateItem(
    ItemForm item,
  ) async {
    emit(const BusinessState.loading());
    try {
      final response = await _businessProvider.updateItem(item);
      emit(BusinessState.successItemResponse(response));
    } catch (e) {
      emit(BusinessState.error(e));
    }
  }

  Future<void> setBusinessImage({
    required String id,
    required String file,
  }) async {
    emit(const BusinessState.loading());
    try {
      final response =
          await _businessProvider.setBusinessImage(id: id, file: file);
      emit(BusinessState.successItemResponse(response));
    } catch (e) {
      emit(BusinessState.error(e));
    }
  }

  Future<void> deleteItemImage({
    required String id,
    required ImageUrlPayload payload,
  }) async {
    emit(const BusinessState.loading());
    try {
      final response =
          await _businessProvider.deleteItemImage(id: id, payload: payload);
      emit(BusinessState.successItemResponse(response));
    } catch (e) {
      emit(BusinessState.error(e));
    }
  }

  Future<void> setPrimaryItemImage({
    required String id,
    required ImageUrlPayload payload,
  }) async {
    emit(const BusinessState.loading());
    try {
      final response =
          await _businessProvider.setPrimaryItemImage(id: id, payload: payload);
      emit(BusinessState.successItemResponse(response));
    } catch (e) {
      emit(BusinessState.error(e));
    }
  }

  Future<void> getAllItemsOfBusiness({
    required String id,
    required String param,
    required String pageOrder,
    int? page,
    required int size,
  }) async {
    emit(const BusinessState.loading());
    try {
      final response = await _businessProvider.getAllItemsOfBusiness(
        id: id,
        param: param,
        pageOrder: pageOrder,
        page: page,
        size: size,
      );
      emit(BusinessState.successPageItemResponse(response));
    } catch (e) {
      emit(BusinessState.error(e));
    }
  }

  Future<void> deleteItem({
    required String id,
  }) async {
    emit(const BusinessState.loading());
    try {
      await _businessProvider.deleteItem(id: id);
      emit(const BusinessState.success());
    } catch (e) {
      emit(BusinessState.error(e));
    }
  }

  Future<void> getAllItems({
    required String param,
    required String pageOrder,
    int? page,
    required int size,
  }) async {
    emit(const BusinessState.loading());
    try {
      final response = await _businessProvider.getAllItems(
        param: param,
        pageOrder: pageOrder,
        page: page,
        size: size,
      );
      emit(BusinessState.successPageItemResponse(response));
    } catch (e) {
      emit(BusinessState.error(e));
    }
  }

//   //basket controller
  Future<void> getUserBasket() async {
    emit(const BusinessState.loading());
    try {
      final response = await _businessProvider.getUserBasket();
      emit(BusinessState.successBasketResponse(response));
    } catch (e) {
      emit(BusinessState.error(e));
    }
  }

  Future<void> modifyBasket({
    required ItemCollection itemCollection,
  }) async {
    emit(const BusinessState.loading());
    try {
      final response =
          await _businessProvider.modifyBasket(itemCollection: itemCollection);
      emit(BusinessState.successBasketResponse(response));
    } catch (e) {
      emit(BusinessState.error(e));
    }
  }

//   //order controller
  Future<void> previewOrder({
    required ItemCollection collection,
  }) async {
    emit(const BusinessState.loading());
    try {
      final response =
          await _businessProvider.previewOrder(collection: collection);
      emit(BusinessState.successOrderPreviewResponse(response));
    } catch (e) {
      emit(BusinessState.error(e));
    }
  }

  Future<void> createOrder({
    required CommitOrderPayload payload,
  }) async {
    emit(const BusinessState.loading());
    try {
      final response = await _businessProvider.createOrder(payload: payload);
      emit(BusinessState.successCommitedOrdersResponse(response));
    } catch (e) {
      emit(BusinessState.error(e));
    }
  }

  Future<void> getAllUserOrders({
    required String param,
    required String pageOrder,
    int? page,
    required int size,
  }) async {
    emit(const BusinessState.loading());
    try {
      final response = await _businessProvider.getAllUserOrders(
        param: param,
        pageOrder: pageOrder,
        page: page,
        size: size,
      );
      emit(BusinessState.successPageOrderResponse(response));
    } catch (e) {
      emit(BusinessState.error(e));
    }
  }

  Future<void> getAllBusinessOrders({
    required String param,
    required String pageOrder,
    int? page,
    required int size,
  }) async {
    emit(const BusinessState.loading());
    try {
      final response = await _businessProvider.getAllBusinessOrders(
        param: param,
        pageOrder: pageOrder,
        page: page,
        size: size,
      );
      emit(BusinessState.successPageOrderResponse(response));
    } catch (e) {
      emit(BusinessState.error(e));
    }
  }

//search controller
  Future<void> search({
    required String query,
    required int size,
  }) async {
    emit(const BusinessState.loading());
    try {
      final response = await _businessProvider.search(
        query: query,
        size: size,
      );
      emit(BusinessState.successSearchResponse(response));
    } catch (e) {
      emit(BusinessState.error(e));
    }
  }
}
