import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:upnati/core/config/utils.dart';
import 'package:upnati/core/exceptions/app_exceptions.dart';

class UpnatiObserver extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    print('[Observer] onCreate -- ${bloc.runtimeType}');
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    print('[Observer] onChange -- ${bloc.runtimeType}, $change');
    // if () {
    //   Utils.checkUserTokenExpired(change.currentState.err as DioError);
    // } else {
    super.onChange(bloc, change);
    // }
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    print('[Observer] onError -- ${bloc.runtimeType}, $error');
    Utils.checkUserTokenExpired(error);
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    print('[Observer] onClose -- ${bloc.runtimeType}');
  }
}
