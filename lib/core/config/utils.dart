import 'package:hive_flutter/hive_flutter.dart';

class Utils {
  static Future<Box> get box async => await Hive.boxExists('system') == true
      ? Hive.box('system')
      : await Hive.openBox('system');
}
