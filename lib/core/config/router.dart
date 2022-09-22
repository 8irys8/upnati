import 'package:auto_route/auto_route.dart';
import 'package:upnati/ui/screens/business/business_registration_screen.dart';
import 'package:upnati/ui/screens/business/business_screen.dart';
import 'package:upnati/ui/screens/business/market_detail_screen.dart';
import 'package:upnati/ui/screens/business/product_detail_screen.dart';
import 'package:upnati/ui/screens/business/shop_home_screen.dart';
import 'package:upnati/ui/screens/login/business_select_screen.dart';
import 'package:upnati/ui/screens/login/login_screen.dart';
import 'package:upnati/ui/screens/login/register_screen.dart';
import 'package:upnati/ui/screens/login/sms_code_screen.dart';
import 'package:upnati/ui/screens/more_info_screen.dart';
import 'package:upnati/ui/screens/onboard_screen.dart';
import 'package:upnati/ui/screens/splash_screen.dart';
import 'package:upnati/ui/screens/terms_screen.dart';
import 'package:upnati/ui/screens/user/add_card_screen.dart';
import 'package:upnati/ui/screens/user/buy_details_screen.dart';
import 'package:upnati/ui/screens/user/category_screen.dart';
import 'package:upnati/ui/screens/user/market_place_screen.dart';
import 'package:upnati/ui/screens/user/message_screen.dart';
import 'package:upnati/ui/screens/user/my_basket_screen.dart';
import 'package:upnati/ui/screens/user/payment_details_screen.dart';
import 'package:upnati/ui/screens/user/purchase_history_screen.dart';
import 'package:upnati/ui/screens/user/user_main_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: LoginScreen,
    ),
    AutoRoute(page: RegisterScreen, initial: true),
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
    AutoRoute(
      page: MyBasketScreen,
    ),
    AutoRoute(
      page: BuyDetailsScreen,
    ),
    AutoRoute(
      page: PaymentDetailsScreen,
    ),
    AutoRoute(
      page: AddCardScreen,
    ),
    AutoRoute(
      page: UserMainScreen,
    ),
    AutoRoute(page: PurchaseHistoryScreen),
    AutoRoute(
      page: MessageScreen,
    ),
    AutoRoute(
      page: CategoryScreen,
    ),
    AutoRoute(
      page: MarketPlaceScreen,
    ),
    AutoRoute(
      page: OnboardScreen,
    ),
    AutoRoute(page: MoreInfoScreen),
    AutoRoute(page: TermsScreen),
    AutoRoute(
      page: SplashScreen,
    ),
    AutoRoute(
      page: SmsCodeScreen,
    )
  ],
)
class $AppRouter {}
