import 'package:auto_route/auto_route.dart';
import 'package:get_it/get_it.dart';
import 'package:upnati/core/config/utils.dart';
import 'package:upnati/logic/providers/user_provider.dart';
import 'package:upnati/ui/screens/business/business_registration_screen.dart';
import 'package:upnati/ui/screens/business/business_screen.dart';
import 'package:upnati/ui/screens/business/market_detail_screen.dart';
import 'package:upnati/ui/screens/business/product_detail_screen.dart';
import 'package:upnati/ui/screens/business/shop_home_screen.dart';
import 'package:upnati/ui/screens/category_detail_screen.dart';
import 'package:upnati/ui/screens/login/business_select_screen.dart';
import 'package:upnati/ui/screens/login/login_screen.dart';
import 'package:upnati/ui/screens/login/register_screen.dart';
import 'package:upnati/ui/screens/login/sms_code_screen.dart';
import 'package:upnati/ui/screens/more_info_screen.dart';
import 'package:upnati/ui/screens/onboard_screen.dart';
import 'package:upnati/ui/screens/policy_screen.dart';
import 'package:upnati/ui/screens/product_main_screen.dart';
import 'package:upnati/ui/screens/splash_screen.dart';
import 'package:upnati/ui/screens/terms_screen.dart';
import 'package:upnati/ui/screens/user/add_card_screen.dart';
import 'package:upnati/ui/screens/user/all_shops_screen.dart';
import 'package:upnati/ui/screens/user/buy_details_screen.dart';
import 'package:upnati/ui/screens/user/category_screen.dart';
import 'package:upnati/ui/screens/user/market_place_screen.dart';
import 'package:upnati/ui/screens/user/message_screen.dart';
import 'package:upnati/ui/screens/user/my_basket_screen.dart';

import 'package:upnati/ui/screens/user/payment_web_view_screen.dart';
import 'package:upnati/ui/screens/user/purchase_history_screen.dart';
import 'package:upnati/ui/screens/user/user_main_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: LoginScreen,
    ),
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
      guards: [RegisterGuard],
    ),
    AutoRoute(page: MarketDetailScreen),
    AutoRoute(page: ProduceDetailScreen),
    AutoRoute(
      page: MyBasketScreen,
      guards: [RegisterGuard],
    ),
    AutoRoute(
      page: BuyDetailsScreen,
      guards: [RegisterGuard],
    ),
    // AutoRoute(
    //   page: PaymentDetailsScreen,
    //   guards: [RegisterGuard],
    // ),
    AutoRoute(
      page: AddCardScreen,
      guards: [RegisterGuard],
    ),
    AutoRoute(
      page: UserMainScreen,
      guards: [RegisterGuard],
    ),
    CustomRoute(
      page: PurchaseHistoryScreen,
      guards: [RegisterGuard],
    ),
    AutoRoute(
      page: MessageScreen,
      guards: [RegisterGuard],
    ),
    CustomRoute(
      page: CategoryScreen,
    ),
    CustomRoute(
      page: MarketPlaceScreen,
    ),
    AutoRoute(
      page: PolicyScreen,
    ),
    AutoRoute(
      page: OnboardScreen,
    ),
    CustomRoute(page: MoreInfoScreen),
    AutoRoute(page: TermsScreen),
    AutoRoute(page: SplashScreen, initial: true),
    AutoRoute(
      page: SmsCodeScreen,
    ),
    AutoRoute(page: ProductMainScreen),
    AutoRoute(page: AllShopsScreen),
    AutoRoute(page: CategoryDetailScreen),
    AutoRoute(page: PaymentWebViewScreen),
  ],
)
class $AppRouter {}

class RegisterGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    try {
      await Utils.getCurrentUser();
      resolver.next(true);
    } catch (e) {
      await Utils.showRegisterDialog(router.navigatorKey.currentContext!);
      resolver.next(false);
    }
  }
}
