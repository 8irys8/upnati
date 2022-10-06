import 'package:dio/dio.dart';
import 'package:hive_flutter/hive_flutter.dart';

class Utils {
  static Future<Box> get box async => await Hive.boxExists('system') == true
      ? Hive.box('system')
      : await Hive.openBox('system');

  static Dio build({
    String? baseUrl,
    List<Interceptor>? interceptors,
  }) {
    final dio = Dio();
    dio.options.baseUrl = baseUrl ?? '';
    dio.options.connectTimeout = 15000;
    dio.options.receiveTimeout = 30000;
    dio.options.headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };
    dio.interceptors.addAll(interceptors ?? []);

    return dio;
  }
}
