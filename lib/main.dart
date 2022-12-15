import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:upnati/core/config/injectable_config.dart';
import 'package:upnati/core/config/router.dart';
import 'package:upnati/core/config/router.gr.dart';
import 'package:upnati/firebase_options.dart';
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
    return MaterialApp.router(
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      title: 'UPstore',
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: ThemeData(
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
    );
  }
}
