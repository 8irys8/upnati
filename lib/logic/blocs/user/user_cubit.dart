import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:upnati/logic/models/user/app_link_response.dart';
import 'package:upnati/logic/models/user/business_invitation_payload.dart';
import 'package:upnati/logic/models/user/business_invitation_response.dart';
import 'package:upnati/logic/models/user/change_user_role_payload.dart';
import 'package:upnati/logic/models/user/firebase_user_info_payload.dart';
import 'package:upnati/logic/models/user/notification_count_response.dart';
import 'package:upnati/logic/models/user/page_notification_response.dart';
import 'package:upnati/logic/models/user/page_user_details_response.dart';
import 'package:upnati/logic/models/user/subscription_payload.dart';
import 'package:upnati/logic/models/user/user_detail_response.dart';

import 'package:upnati/logic/providers/user_provider.dart';

import '../../models/user/info_response.dart';

part 'user_state.dart';
part 'user_cubit.freezed.dart';

@injectable
class UserCubit extends Cubit<UserState> {
  final UserProvider _userProvider;
  UserCubit(this._userProvider) : super(const UserState.initial());

  Future<void> changeUserRole(String role) async {
    emit(const UserState.loadingUserState());
    try {
      final response =
          await _userProvider.changeUserRole(ChangeUserRolePayload(role: role));
      emit(UserState.successUserStateResponse(response));
    } catch (e) {
      emit(UserState.errorUserState(e));
    }
  }

  Future<void> updateUserDetails(FirebaseUserInfoPayload payload) async {
    emit(const UserState.loadingUserState());
    try {
      final response = await _userProvider.updateUserDetail(payload: payload);
      emit(UserState.successUserStateResponse(response));
    } catch (e) {
      emit(UserState.errorUserState(e));
    }
  }

  Future<void> getAppLink() async {
    emit(const UserState.loadingUserState());
    try {
      final response = await _userProvider.getAppLink();
      emit(UserState.successUserLinkState(response));
    } catch (e) {
      emit(UserState.errorUserState(e));
    }
  }

  Future<void> uploadUserImage(
    File file,
  ) async {
    emit(const UserState.loadingUserState());
    try {
      final response = await _userProvider.uploadUserImage(file);
      emit(UserState.successUserStateResponse(response));
    } catch (e) {
      emit(UserState.errorUserState(e));
    }
  }

  Future<void> deleteUserImage(
    String url,
  ) async {
    emit(const UserState.loadingUserState());
    try {
      final response = await _userProvider.deleteUserImage(url);
      emit(UserState.successUserStateResponse(response));
    } catch (e) {
      emit(UserState.errorUserState(e));
    }
  }

  Future<void> setPrimaryImage(
    String url,
  ) async {
    emit(const UserState.loadingUserState());
    try {
      final response = await _userProvider.setPrimaryImage(url);
      emit(UserState.successUserStateResponse(response));
    } catch (e) {
      emit(UserState.errorUserState(e));
    }
  }

  Future<void> getUserDetails() async {
    emit(const UserState.loadingUserState());
    try {
      final response = await _userProvider.getUserDetails();
      emit(UserState.successUserStateResponse(response));
    } catch (e) {
      emit(UserState.errorUserState(e));
    }
  }

  Future<void> deleteUser() async {
    emit(const UserState.loadingUserState());
    try {
      await _userProvider.deleteUser();
      emit(const UserState.successUserState());
    } catch (e) {
      emit(UserState.errorUserState(e));
    }
  }

  Future<void> getUserDetailsById(
    String id,
  ) async {
    emit(const UserState.loadingUserState());
    try {
      final response = await _userProvider.getUserDetailsById(id);
      emit(UserState.successUserStateResponse(response));
    } catch (e) {
      emit(UserState.errorUserState(e));
    }
  }

  Future<void> getBusinessUsers({
    required String id,
    required String param,
    required String pageOrder,
    int? page,
    required int size,
  }) async {
    emit(const UserState.loadingUserState());
    try {
      final response = await _userProvider.getBusinessUsers(
        id: id,
        param: param,
        pageOrder: pageOrder,
        page: page,
        size: size,
      );
      emit(UserState.successUserPageDetails(response));
    } catch (e) {
      emit(UserState.errorUserState(e));
    }
  }

  Future<void> getAllUsers({
    required String param,
    required String pageOrder,
    int? page,
    required int size,
  }) async {
    emit(const UserState.loadingUserState());
    try {
      final response = await _userProvider.getAllUsers(
        param: param,
        pageOrder: pageOrder,
        page: page,
        size: size,
      );
      emit(UserState.successUserPageDetails(response));
    } catch (e) {
      emit(UserState.errorUserState(e));
    }
  }

  Future<void> inviteBusiness(
    BusinessInvitationPayload payload,
  ) async {
    emit(const UserState.loadingUserState());
    try {
      final response = await _userProvider.inviteBusiness(payload);
      emit(UserState.successBusinessInvitation(response));
    } catch (e) {
      emit(UserState.errorUserState(e));
    }
  }

  Future<void> inviteBusinessOwnership({
    required String id,
  }) async {
    emit(const UserState.loadingUserState());
    try {
      final response = await _userProvider.inviteBusinessOwnership(id: id);
      emit(UserState.successUserStateResponse(response));
    } catch (e) {
      emit(UserState.errorUserState(e));
    }
  }

  Future<void> acceptBusinessInvitation({
    required String id,
  }) async {
    emit(const UserState.loadingUserState());
    try {
      final response = await _userProvider.acceptBusinessInvitation(id: id);
      emit(UserState.successUserStateResponse(response));
    } catch (e) {
      emit(UserState.errorUserState(e));
    }
  }

  Future<void> getNotifications({
    required String pageOrder,
    int? page,
    required int size,
  }) async {
    emit(const UserState.loading());
    try {
      final user = await _userProvider.getNotificationsCountUser();
      final business = await _userProvider.getNotificationsCountBusiness();
      final response = await _userProvider.getNotifications(
        pageOrder: pageOrder,
        page: page,
        size: size,
      );
      emit(UserState.successNotificationState(
        response,
        countBusiness: business,
        countUser: user,
      ));
    } catch (e) {
      emit(const UserState.error());
    }
  }

  Future<void> unsubscribe({
    required SubscriptionPayload payload,
  }) async {
    emit(const UserState.loading());
    try {
      await _userProvider.unsubscribe(payload: payload);
      emit(const UserState.success());
    } catch (e) {
      emit(const UserState.error());
    }
  }

  Future<void> subscribe({
    required SubscriptionPayload payload,
  }) async {
    emit(const UserState.loading());
    try {
      await _userProvider.subscribe(payload: payload);
      emit(const UserState.success());
    } catch (e) {
      emit(const UserState.error());
    }
  }

  Future<void> getTerms() async {
    emit(const UserState.loading());
    try {
      var result = await _userProvider.getTerms();
      emit(UserState.successInfoState(result));
    } catch (e) {
      emit(const UserState.error());
    }
  }

  Future<void> getPolicy() async {
    emit(const UserState.loading());
    try {
      var result = await _userProvider.getPolicy();
      emit(UserState.successInfoState(result));
    } catch (e) {
      emit(const UserState.error());
    }
  }

  Future<void> getContactPhone() async {
    emit(const UserState.loading());
    try {
      var result = await _userProvider.getContactPhone();
      emit(UserState.successInfoState(result));
    } catch (e) {
      emit(const UserState.error());
    }
  }

  Future<void> getContactEmail() async {
    emit(const UserState.loading());
    try {
      var result = await _userProvider.getContactEmail();
      emit(UserState.successInfoState(result));
    } catch (e) {
      emit(const UserState.error());
    }
  }
}
