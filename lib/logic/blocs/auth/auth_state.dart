part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.error(dynamic err) = _Error;
  const factory AuthState.success() = _Success;
  const factory AuthState.successWithProvider() = _SuccessWithProvider;
  const factory AuthState.successResponse(AuthResponse response) =
      _SuccessResponse;
}
