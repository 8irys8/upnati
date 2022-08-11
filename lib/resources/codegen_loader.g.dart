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
  "market_screen": {
    "title": "פרטי החנות",
    "logo_desc": "אעלה לוגו העסק / החנות",
    "name": ":שם החנות*",
    "category": "תחום העיסוק",
    "place": "אזור מתן שרות",
    "detail": "תאור העסק",
    "agreement_1": "אני מסכים",
    "agreement_2": " לתנאי שימוש ",
    "save_btn": "שמור והמשך",
    "dropdown_help": "פתח רשימה"
  },
  "add_product": {
    "title": "דף מוצר",
    "product_area": "אעלה מוצרים לחנות ",
    "name": "*שם המוצר",
    "category": "*קטגוריה",
    "dropdown_help": "פתח רשימה",
    "pdoduct_type": "*סוג המוצר",
    "product_type_1": "שרות או שובר\nשישלח במייל\nלמימוש ",
    "product_type_2": "מוצר דיגטלי\nיהיה ניתן להורדה",
    "product_type_3": "מוצר פיזי\nשישלח בדואר",
    "product_desc": "*תאור המוצר",
    "product_photo": "תמונות",
    "product_photo_desc": "אעלה עד 12 תמונות של המוצר",
    "product_first_photo": "תמונה ראשית ",
    "camera_desc": "אעלה או צלם\nתמונה",
    "product_video": "סרטו וידאו",
    "product_video_desc": ".אעלה סרטון על המוצר, 5-10 דקות של סרטו ן יכול לעזור בקידום המוצר למכירה",
    "video_camera_desc": "אעלה או צלם \nסרטון וידאו",
    "price": "*מחיר",
    "count": "*כמות ",
    "inPrice": "נקוב במחיר",
    "discount": "הנחה ב-% ",
    "for_all_in_store": "קבע באופן גורף לכל המוצרים בחנות",
    "delivery_pending": "זמן הכנת המשלוח ",
    "delivery_pending_desc": "1-3 ימי עסקים",
    "delivery": "זמן משלוח ",
    "delivery_desc": "7-10 ימי עסקים",
    "delivery_price": "מחיר משלוח",
    "delivery_free": "סמן תמיד משלוח חינם",
    "cancel_btn": "בטל",
    "save_btn": "שמור והמשך"
  }
};
static const Map<String, Map<String,dynamic>> mapLocales = {"he": he};
}
