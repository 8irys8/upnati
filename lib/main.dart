import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:upnati/core/config/injectable_config.dart';
import 'package:upnati/core/config/router.gr.dart';
import 'package:upnati/resources/resource.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
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

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      title: 'Upnati',
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: AppColors.inputGray,
          elevation: 3,
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
