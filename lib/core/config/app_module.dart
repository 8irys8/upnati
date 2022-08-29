import 'dart:async';

import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

@module
class AppModule {
  @preResolve
  FutureOr<Box> getBox() async {
    return await Hive.boxExists('system')
        ? Hive.box('system')
        : await Hive.openBox('system');
  }
}
