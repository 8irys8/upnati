import 'package:auto_route/auto_route.dart';
import 'package:upnati/ui/screens/login/login_screeen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: LoginScreen, initial: true),
  ],
)
class $AppRouter {}
