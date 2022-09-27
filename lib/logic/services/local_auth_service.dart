import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class LocalAuthService {
  final FirebaseAuth firebaseAuthInstanse = FirebaseAuth.instance;

  FirebaseAuth get _firebaseAuth => firebaseAuthInstanse;
  String _verificationCode = '';

  User? get user => _firebaseAuth.currentUser;

  Future verifyPhoneNumber(String phoneNumber) async {
    Completer completer = Completer();

    smsCodeSent(String verificationCode) {
      _verificationCode = verificationCode;
      completer.complete();
    }

    verificationFailed(authException) {
      completer.completeError(authException.toString());
    }

    await _firebaseAuth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        timeout: const Duration(seconds: 0),
        verificationCompleted: (authCredential) => {},
        verificationFailed: (authException) =>
            verificationFailed(authException),
        codeAutoRetrievalTimeout: (verificationId) => {},
        codeSent: (verificationId, c) => smsCodeSent(verificationId));

    return completer.future;
  }

  Future<UserCredential> signInWithSmsCode(String smsCode) async {
    AuthCredential authCredential = PhoneAuthProvider.credential(
        smsCode: smsCode, verificationId: _verificationCode);

    return await _firebaseAuth.signInWithCredential(authCredential);
  }

  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }
}
