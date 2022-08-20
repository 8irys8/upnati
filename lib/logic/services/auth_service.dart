import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:upnati/core/config/constants.dart';
import 'package:upnati/logic/models/user/auth_response.dart';
import 'package:upnati/logic/models/user/confirm_restore_payload.dart';
import 'package:upnati/logic/models/user/login_payload.dart';
import 'package:upnati/logic/models/user/restore_pass_payload.dart';
import 'package:upnati/logic/models/user/restore_payload.dart';
import 'package:upnati/logic/models/user/signup_payload.dart';

part 'auth_service.g.dart';

@RestApi(baseUrl: Constants.userBaseUrl)
abstract class AuthService {
  factory AuthService(Dio dio, {String? baseUrl}) = _AuthService;

  @PUT('/auth/restore')
  Future<void> startRestore(@Body() RestorePassPayload passPayload);

  @POST('/auth/restore')
  Future<void> restorePassword(
    @Body() RestorePayload restorePayload,
  );

  @POST('/auth/signup')
  Future<AuthResponse> signUp(
    @Body() SignupPayload signupPayload,
  );

  @POST('/auth/signin')
  Future<AuthResponse> signIn(
    @Body() LoginPayload loginPayload,
  );

  @POST('/auth/restore/code')
  Future<void> confirmRestoreCode(
    @Body() ConfirmRestorePayload confirmRestorePayload,
  );

  @GET('/auth/token')
  Future<AuthResponse> getToken();
}
