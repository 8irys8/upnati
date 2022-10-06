import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:upnati/core/config/constants.dart';
import 'package:upnati/core/config/utils.dart';
import 'package:upnati/core/exceptions/app_exceptions.dart';
import 'package:upnati/logic/providers/auth_provider.dart';

@lazySingleton
class AppInterceptors {
  final AuthProvider _authProvider;

  AppInterceptors(this._authProvider);

  Interceptor get errorInterceptor => QueuedInterceptorsWrapper(
        onRequest: (options, handler) => handler.next(options),
        onResponse: (response, handler) => handler.next(response),
        onError: (e, handler) {
          print(e);
          print('onError');
          if (e.type == DioErrorType.connectTimeout ||
              e.type == DioErrorType.sendTimeout ||
              e.type == DioErrorType.receiveTimeout) {
            handler.reject(DioError(
                requestOptions: e.requestOptions,
                error: AppExceptions('Connection Timeout')));
          } else if (e.type == DioErrorType.other ||
              e.type == DioErrorType.response) {
            if (e.error is SocketException) {
              handler.reject(DioError(
                  requestOptions: e.requestOptions,
                  error: AppExceptions('No internet connection')));
            } else if (e.error is AppExceptions) {
              handler.reject(
                  DioError(requestOptions: e.requestOptions, error: e.error));
            } else {
              var message =
                  e.response?.data['message'] ?? 'Something went wrong';
              handler.reject(DioError(
                  requestOptions: e.requestOptions,
                  error: AppExceptions(message)));
            }
          }
        },
      );

  Interceptor get tokenInterceptor => QueuedInterceptorsWrapper(
      onResponse: (options, handler) => handler.next(options),
      onError: (e, handler) => handler.next(e),
      onRequest: (options, handler) async {
        print('onRequest');
        try {
          var token = await _authProvider.getToken();
          if (token != null) {
            options.headers['Authorization'] = 'Bearer $token';
          }
        } catch (e) {
          print(e);
        }
        handler.next(options);
      });
}
