part of 'business_cubit.dart';

@freezed
class BusinessState with _$BusinessState {
  const factory BusinessState.initial() = _Initial;
  const factory BusinessState.loading() = _Loading;
  const factory BusinessState.success() = _Success;
  const factory BusinessState.error(dynamic err) = _Error;
  const factory BusinessState.successBusinessResponse(
      BusinessResponse businessResponse) = _SuccessBusinessResponse;
  const factory BusinessState.successUserDetailResponse(
      UserDetailResponse userDetailResponse) = _SuccessUserDetailResponse;
  const factory BusinessState.successPageBusinessResponse(
      PageBusinessResponse pageBusinessResponse) = _SuccessPageBusinessResponse;
  const factory BusinessState.successBusinessMapInfo(
      Map<String, String> mapInfoResponse) = _SuccessBusinessMapInfo;
  const factory BusinessState.successBusinessMap(
      List<CategoryModel?> mapInfoResponse) = _SuccessBusinessMap;
  const factory BusinessState.successBusinessFilter(FilterForm filterForm) =
      _SuccessBusinessFilter;
  const factory BusinessState.successPageItemResponse(
      PageItemResponse pageItemResponse) = _SuccessPageItemResponse;
  const factory BusinessState.successItemResponse(ItemResponse itemResponse) =
      _SuccessItemResponse;
  const factory BusinessState.successBasketResponse(
      BasketResponse basketResponse) = _SuccessBasketResponse;
  const factory BusinessState.successOrderPreviewResponse(
          List<OrderPreviewResponse> orderPreviewResponse) =
      _SuccessOrderPreviewResponse;
  const factory BusinessState.successCommitedOrdersResponse(
          CommitedOrdersResponse commitedOrdersResponse) =
      _SuccessCommitedOrdersResponse;
  const factory BusinessState.successPageOrderResponse(
      PageOrderResponse pageOrderResponse) = _SuccessPageOrderResponse;
  const factory BusinessState.successSearchResponse(
      SearchResponse searchResponse) = _SuccessSearchResponse;
  const factory BusinessState.successBusinessList(List<String> list) =
      _SuccessBusinessList;
  const factory BusinessState.successBusinessCity(List<String> list) =
      _SuccessBusinessCity;

  const factory BusinessState.successFiles(UploadResponse files) =
      _SuccessFiles;
  const factory BusinessState.successVideo(UploadResponse files) =
      _SuccessVideo;
  const factory BusinessState.successLink(AppLinkResponse link) = _SuccessLink;
}
