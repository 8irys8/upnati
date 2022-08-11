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
  },
  "business": {
    "openShop": "למה לפתוח חנות אצלנו ?",
    "withUs": "אצלנו כדי להצליח יותר עסקי וכיום\nכשכולם באונליין וזה חובה\nשתהיה חנות אינטרנטית לכל עסק",
    "openAccount": "פתח חשבון בדקה"
  },
  "business_register": {
    "shopDetails": "פרטי החנות",
    "shopName": ":שם החנות*",
    "downloadLogo": "אעלה לוגו העסק / החנות",
    "occupation": "תחום העיסוק",
    "openList": "פתח רשימה",
    "service": "אזור מתן שרות",
    "activityDesc": "תאור העסק",
    "saveAndContinue": "שמור והמשך",
    "uploadProductImg": "פרסם מוצרים לחנות",
    "uploadProduct": "אעלה מוצר",
    "myShop": "החנות שלי",
    "products": "מוצרים",
    "reviews": "ביקורות",
    "about": "אודות",
    "policy": "מדיניות",
    "addToFavorites": "הוספה למעודפים",
    "contactToStore": "צור קשר עם החנות",
    "searchInTheStore": "חיפוש בחנות"
  }
};
static const Map<String, Map<String,dynamic>> mapLocales = {"he": he};
}
