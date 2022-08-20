import 'package:injectable/injectable.dart';
import 'package:upnati/logic/models/user/business_invitation_payload.dart';
import 'package:upnati/logic/models/user/business_invitation_response.dart';
import 'package:upnati/logic/models/user/page_user_details_response.dart';
import 'package:upnati/logic/models/user/user_detail_response.dart';

import 'package:upnati/logic/services/user_service.dart';

@lazySingleton
class UserProvider {
  final UserService _userService;

  UserProvider(this._userService);

  Future<UserDetailResponse> changeUserRole(String role) =>
      _userService.changeUserRole(role);

  Future<UserDetailResponse> uploadUserImage(
    String file,
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
}
