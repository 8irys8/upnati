import 'dart:async';

import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

@module
abstract class AppModule {
  // @preResolve
  // Future<Box> get box async => await Hive.boxExists('system') == true
  //     ? Hive.box('system')
  //     : await Hive.openBox('system');
}
