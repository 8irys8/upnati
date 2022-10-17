part of 'user_cubit.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.initial() = _Initial;
  const factory UserState.loadingUserState() = _LoadingUserState;
  const factory UserState.errorUserState(dynamic err) = _ErrorUserState;
  const factory UserState.successUserState() = _SuccessUserState;
  const factory UserState.successUserLinkState(AppLinkResponse link) =
      _SuccessUserLinkState;
  const factory UserState.successUserStateResponse(
      UserDetailResponse response) = _SuccessUserStateResponse;
  const factory UserState.successUserPageDetails(
          PageUserDetailsResponse pageUserDetailsResponse) =
      _SuccessUserPageDetails;
  const factory UserState.successBusinessInvitation(
          BusinessInvitationResponse businessInvitationResponse) =
      _SuccessBusinessInvitation;
}
