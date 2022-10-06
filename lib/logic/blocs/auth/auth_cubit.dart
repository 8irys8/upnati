import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:upnati/logic/models/user/auth_response.dart';
import 'package:upnati/logic/models/user/confirm_restore_payload.dart';
import 'package:upnati/logic/models/user/login_payload.dart';
import 'package:upnati/logic/models/user/restore_pass_payload.dart';
import 'package:upnati/logic/models/user/restore_payload.dart';
import 'package:upnati/logic/models/user/signup_payload.dart';
import 'package:upnati/logic/providers/auth_provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:upnati/logic/services/local_auth_service.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  final AuthProvider _authProvider;
  final LocalAuthService _localAuthService;

  AuthCubit(this._authProvider, this._localAuthService)
      : super(const AuthState.initial());

  Future<void> authByPhone(String phone) async {
    emit(const AuthState.loading());
    try {
      await _localAuthService.verifyPhoneNumber(phone);
      emit(const AuthState.success());
    } catch (e) {
      emit(AuthState.error(e.toString()));
    }
  }

  Future<void> loginBySmsCode(String sms) async {
    emit(const AuthState.loading());
    try {
      final userCredential = await _localAuthService.signInWithSmsCode(sms);
      //TODO: save token and user data
      print(await userCredential.user?.getIdToken());
      emit(const AuthState.success());
    } catch (e) {
      emit(AuthState.error(e.toString()));
    }
  }

  Future<void> logout() async {
    emit(const AuthState.loading());
    try {
      await _localAuthService.signOut();
      emit(const AuthState.success());
    } catch (e) {
      emit(AuthState.error(e.toString()));
    }
  }

  Future<void> signUp(SignupPayload signupPayload) async {
    emit(const AuthState.loading());
    try {
      final response = await _authProvider.signUp(signupPayload);
      emit(AuthState.successResponse(response));
    } catch (e) {
      emit(AuthState.error(e));
    }
  }

  Future<void> startRestore(RestorePassPayload passPayload) async {
    emit(const AuthState.loading());
    try {
      await _authProvider.startRestore(passPayload);
      emit(const AuthState.success());
    } catch (e) {
      emit(AuthState.error(e));
    }
  }

  Future<void> restorePassword(
    RestorePayload restorePayload,
  ) async {
    emit(const AuthState.loading());
    try {
      await _authProvider.restorePassword(restorePayload);
      emit(const AuthState.success());
    } catch (e) {
      emit(AuthState.error(e));
    }
  }

  Future<void> signIn(
    LoginPayload loginPayload,
  ) async {
    emit(const AuthState.loading());
    try {
      final response = await _authProvider.signIn(loginPayload);
      emit(AuthState.successResponse(response));
    } catch (e) {
      emit(AuthState.error(e));
    }
  }

  Future<void> confirmRestoreCode(
    ConfirmRestorePayload confirmRestorePayload,
  ) async {
    emit(const AuthState.loading());
    try {
      await _authProvider.confirmRestoreCode(confirmRestorePayload);
      emit(const AuthState.success());
    } catch (e) {
      emit(AuthState.error(e));
    }
  }
}
