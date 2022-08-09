// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale ) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> he = {
  "errors": {
    "wrong_username": "שם משתמש וסיסמה שגויים, נסה שנית",
    "wrong_password": "אנא הקלד 6 אותיות לועזיות וספרות בלבד"
  },
  "login": {
    "slogan": "!!!פה יש סלוגן",
    "username": "שם משתמש",
    "password": "סיסמה",
    "forgot_password": "שכחתי סיסמה",
    "login_btn": "כניסה",
    "or": "או",
    "sign_facebook": "כניסה דרך פייסבוק",
    "sign_google": "כניסה דרך גוגל",
    "register_btn": "פתח חשבון",
    "forgot_screen": {
      "title": "?שכחת סיסמה",
      "desc": "הקלד את המייל שלך ונשלח לך \n קישור לשחזור הסיסמה",
      "email": "מייל",
      "send_btn": "שלח"
    }
  },
  "register": {
    "name": ":שם מלא*",
    "email": ":מייל*",
    "phone": ":טלפון*",
    "username": ":שם משתמש*",
    "password": ":בחר סיסמא*",
    "confirm_terms_link": "לתנאי שימוש",
    "confirm_terms": " אני מסכים",
    "register_btn": "פתח חשבון",
    "has_business": "?האם יש לך עסק בבעלותך",
    "yes": "כן",
    "no": "לא"
  }
};
static const Map<String, Map<String,dynamic>> mapLocales = {"he": he};
}
