import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:upnati/core/config/constants.dart';
import 'package:upnati/core/config/interceptors.dart';
import 'package:upnati/core/config/utils.dart';
import 'package:upnati/logic/models/user/app_link_response.dart';
import 'package:upnati/logic/models/user/business_invitation_payload.dart';
import 'package:upnati/logic/models/user/business_invitation_response.dart';
import 'package:upnati/logic/models/user/change_user_role_payload.dart';
import 'package:upnati/logic/models/user/firebase_user_info_payload.dart';
import 'package:upnati/logic/models/user/page_notification_response.dart';
import 'package:upnati/logic/models/user/page_user_details_response.dart';
import 'package:upnati/logic/models/user/subscription_payload.dart';
import 'package:upnati/logic/models/user/user_detail_response.dart';
import 'package:upnati/logic/services/user_service.dart';

@lazySingleton
class UserProvider {
  late final UserService _userService;
  final AppInterceptors _interceptors;

  UserProvider(this._interceptors) {
    _userService = UserService(Utils.build(interceptors: [
      _interceptors.errorInterceptor,
      _interceptors.tokenInterceptor,
    ]));
  }

  Future<AppLinkResponse> getAppLink() => _userService.getAppLink();

  Future<UserDetailResponse> changeUserRole(ChangeUserRolePayload role) =>
      _userService.changeUserRole(role);

  Future<UserDetailResponse> uploadUserImage(
    File file,
  ) async {
    var tmpdir = await getTemporaryDirectory();
    var targetPath =
        '${tmpdir.path}/${DateTime.now().millisecondsSinceEpoch.toString()}.jpg';
    var result = await FlutterImageCompress.compressAndGetFile(
      file.absolute.path,
      targetPath,
      quality: 88,
    );

    return _userService.uploadUserImage(result!);
  }

  Future<UserDetailResponse> deleteUserImage(
    String url,
  ) =>
      _userService.deleteUserImage(url);

  Future<UserDetailResponse> setPrimaryImage(
    String url,
  ) =>
      _userService.setPrimaryImage(url);

  Future<UserDetailResponse> getUserDetails() => _userService.getUserDetails();

  Future<void> deleteUser() => _userService.deleteUser();

  Future<UserDetailResponse> getUserDetailsById(
    String id,
  ) =>
      _userService.getUserDetailsById(id);

  Future<PageUserDetailsResponse> getBusinessUsers({
    required String id,
    required String param,
    required String pageOrder,
    int? page,
    required int size,
  }) =>
      _userService.getBusinessUsers(
        id: id,
        param: param,
        pageOrder: pageOrder,
        page: page,
        size: size,
      );

  Future<PageUserDetailsResponse> getAllUsers({
    required String param,
    required String pageOrder,
    int? page,
    required int size,
  }) =>
      _userService.getAllUsers(
        param: param,
        pageOrder: pageOrder,
        page: page,
        size: size,
      );

  Future<BusinessInvitationResponse> inviteBusiness(
    BusinessInvitationPayload payload,
  ) =>
      _userService.inviteBusiness(payload);

  Future<UserDetailResponse> inviteBusinessOwnership({
    required String id,
  }) =>
      _userService.inviteBusinessOwnership(id: id);

  Future<UserDetailResponse> acceptBusinessInvitation({
    required String id,
  }) =>
      _userService.acceptBusinessInvitation(id: id);

  Future<UserDetailResponse> updateUserDetail(
          {required FirebaseUserInfoPayload payload}) =>
      _userService.updateUserDetail(payload);

  // @GET('/info/terms')
  // Future<> getTerms();

  // @GET('/info/policy')
  // Future<> getPolicy();

// @GET('/info/contact/phone')
  // Future<> getContactPhone();

  // @GET('/info/contact/email')
  // Future<> getContactEmail();

  //notification controller
  Future<PageNotificationResponse> getNotifications({
    required String pageOrder,
    int? page,
    required int size,
  }) =>
      _userService.getNotifications(
          pageOrder: pageOrder, size: size, page: page);

  Future<void> unsubscribe({
    required SubscriptionPayload payload,
  }) =>
      _userService.unsubscribe(payload: payload);

  Future<void> subscribe({
    required SubscriptionPayload payload,
  }) =>
      _userService.subscribe(payload: payload);

  Future<void> testNotifications({
    String? test,
  }) =>
      _userService.testNotifications(test: test);
}
