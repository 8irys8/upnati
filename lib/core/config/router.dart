import 'package:auto_route/auto_route.dart';
import 'package:upnati/ui/screens/business/business_registration_screen.dart';
import 'package:upnati/ui/screens/business/business_screen.dart';
import 'package:upnati/ui/screens/business/shop_home_screen.dart';
import 'package:upnati/ui/screens/login/business_select_screen.dart';
import 'package:upnati/ui/screens/login/login_screeen.dart';
import 'package:upnati/ui/screens/login/market_detail_screen.dart';
import 'package:upnati/ui/screens/login/product_detail_screen.dart';
import 'package:upnati/ui/screens/login/register_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: LoginScreen, initial: true),
    AutoRoute(page: RegisterScreen),
    AutoRoute(
      page: BusinessSelectScreen,
    ),
    AutoRoute(
      page: BusinessScreen,
    ),
    AutoRoute(
      page: BusinessRegistrationScreen,
    ),
    AutoRoute(
      page: ShopHomeScreen,
    ),
    AutoRoute(page: MarketDetailScreen),
    AutoRoute(page: ProduceDetailScreen),
  ],
)
class $AppRouter {}
