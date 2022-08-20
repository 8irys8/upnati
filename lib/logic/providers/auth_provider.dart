import 'package:injectable/injectable.dart';
import 'package:upnati/logic/models/user/auth_response.dart';
import 'package:upnati/logic/models/user/confirm_restore_payload.dart';
import 'package:upnati/logic/models/user/login_payload.dart';
import 'package:upnati/logic/models/user/restore_pass_payload.dart';
import 'package:upnati/logic/models/user/restore_payload.dart';
import 'package:upnati/logic/models/user/signup_payload.dart';
import 'package:upnati/logic/services/auth_service.dart';

@lazySingleton
class AuthProvider {
  final AuthService _authService;

  AuthProvider(this._authService);

  Future<void> startRestore(RestorePassPayload passPayload) =>
      _authService.startRestore(passPayload);

  Future<void> restorePassword(
    RestorePayload restorePayload,
  ) =>
      _authService.restorePassword(restorePayload);

  Future<AuthResponse> signUp(
    SignupPayload signupPayload,
  ) =>
      _authService.signUp(signupPayload);

  Future<AuthResponse> signIn(
    LoginPayload loginPayload,
  ) =>
      _authService.signIn(loginPayload);

  Future<void> confirmRestoreCode(
    ConfirmRestorePayload confirmRestorePayload,
  ) =>
      _authService.confirmRestoreCode(confirmRestorePayload);

  Future<AuthResponse> getToken() => _authService.getToken();
}
