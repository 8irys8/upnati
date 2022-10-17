import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:upnati/core/config/constants.dart';
import 'package:upnati/logic/models/user/app_link_response.dart';
import 'package:upnati/logic/models/user/business_invitation_payload.dart';
import 'package:upnati/logic/models/user/business_invitation_response.dart';
import 'package:upnati/logic/models/user/change_user_role_payload.dart';
import 'package:upnati/logic/models/user/firebase_user_info_payload.dart';
import 'package:upnati/logic/models/user/page_user_details_response.dart';
import 'package:upnati/logic/models/user/user_detail_response.dart';

part 'user_service.g.dart';

@RestApi(baseUrl: Constants.userBaseUrl)
abstract class UserService {
  factory UserService(Dio dio, {String? baseUrl}) = _UserService;

  @POST('/user/role')
  Future<UserDetailResponse> changeUserRole(
    @Body() ChangeUserRolePayload role,
  );

  @POST('/user')
  Future<UserDetailResponse> updateUserDetail(
    @Body() FirebaseUserInfoPayload payload,
  );

  @POST('/user/image')
  Future<UserDetailResponse> uploadUserImage(
    @Part(name: 'file') File file,
  );

  @DELETE('/user/image')
  Future<UserDetailResponse> deleteUserImage(
    @Body() String url,
  );

  @POST('/user/image/primary')
  Future<UserDetailResponse> setPrimaryImage(
    @Body() String url,
  );
  @GET('/user')
  Future<UserDetailResponse> getUserDetails();

  @DELETE('/user')
  Future<void> deleteUser();

  @GET('/user/{id}')
  Future<UserDetailResponse> getUserDetailsById(
    @Path() String id,
  );

  @GET('/user/business/{id}')
  Future<PageUserDetailsResponse> getBusinessUsers({
    @Path() required String id,
    @Query('param') required String param,
    @Query('pageOrder') required String pageOrder,
    @Query('page') int? page,
    @Query('size') required int size,
  });

  @GET('/user/all')
  Future<PageUserDetailsResponse> getAllUsers({
    @Query('param') required String param,
    @Query('pageOrder') required String pageOrder,
    @Query('page') int? page,
    @Query('size') required int size,
  });

  @PUT('/invite/business')
  Future<BusinessInvitationResponse> inviteBusiness(
    @Body() BusinessInvitationPayload payload,
  );

  @POST('/invite/business/ownership/{id}')
  Future<UserDetailResponse> inviteBusinessOwnership({
    @Path() required String id,
  });

  @POST('/invite/business/accept/{id}')
  Future<UserDetailResponse> acceptBusinessInvitation({
    @Path() required String id,
  });

  @GET('/user/app/link')
  Future<AppLinkResponse> getAppLink();
}
