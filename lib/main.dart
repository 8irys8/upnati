import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:upnati/core/config/injectable_config.dart';
import 'package:upnati/core/config/router.dart';
import 'package:upnati/core/config/router.gr.dart';
import 'package:upnati/core/config/upnati_observer.dart';
import 'package:upnati/core/config/utils.dart';
import 'package:upnati/firebase_options.dart';
import 'package:upnati/logic/blocs/login/login_bloc.dart';
import 'package:upnati/resources/resource.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseMessaging messaging = FirebaseMessaging.instance;

  NotificationSettings settings = await messaging.requestPermission(
    alert: true,
    announcement: false,
    badge: true,
    carPlay: false,
    criticalAlert: false,
    provisional: false,
    sound: true,
  );

  String? token = await messaging.getToken();
  print(token);

  FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    print('Got a message whilst in the foreground!');
    print('Message data: ${message.data}');

    if (message.notification != null) {
      print('Message also contained a notification: ${message.notification}');
    }
  });
  await EasyLocalization.ensureInitialized();
  await Hive.initFlutter();
  configureDependencies(Environment.prod);
  Bloc.observer = UpnatiObserver();
  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('he', 'IL'),
      ],
      path: 'assets/langs',
      assetLoader: const CodegenLoader(),
      useOnlyLangCode: true,
      fallbackLocale: const Locale('he', 'IL'),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final _appRouter = AppRouter(registerGuard: RegisterGuard());

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.I<LoginBloc>(),
      child: MaterialApp.router(
        builder: (context, child) {
          return BlocListener<LoginBloc, LoginState>(
            listener: (_, state) {
              state.whenOrNull(
                needRedirectLogin: () async {
                  await Utils.clearCurrentUser();
                  await _appRouter.pushAndPopUntil(const LoginScreen(),
                      predicate: (_) => false);
                },
              );
            },
            child: child,
          );
        },
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
        title: 'UPstore',
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        theme: ThemeData(
          snackBarTheme: const SnackBarThemeData(
            backgroundColor: AppColors.rozeLight,
            contentTextStyle: TextStyle(
              color: AppColors.textGray,
            ),
          ),
          appBarTheme: const AppBarTheme(
            color: AppColors.white,
            elevation: 0,
            iconTheme: IconThemeData(
              color: AppColors.text,
            ),
          ),
          primarySwatch: Colors.blue,
          fontFamily: 'SegoeUI',
          scaffoldBackgroundColor: AppColors.white,
        ),
      ),
    );
  }
}
