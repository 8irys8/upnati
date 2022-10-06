import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:upnati/core/config/constants.dart';
import 'package:upnati/core/config/interceptors.dart';
import 'package:upnati/core/config/utils.dart';
import 'package:upnati/logic/models/user/business_invitation_payload.dart';
import 'package:upnati/logic/models/user/business_invitation_response.dart';
import 'package:upnati/logic/models/user/change_user_role_payload.dart';
import 'package:upnati/logic/models/user/firebase_user_info_payload.dart';
import 'package:upnati/logic/models/user/page_user_details_response.dart';
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

  Future<UserDetailResponse> changeUserRole(ChangeUserRolePayload role) =>
      _userService.changeUserRole(role);

  Future<UserDetailResponse> uploadUserImage(
    File file,
  ) =>
      _userService.uploadUserImage(file);

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
}
