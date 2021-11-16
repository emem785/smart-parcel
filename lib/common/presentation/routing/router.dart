import 'package:auto_route/auto_route.dart';
import 'package:smart_parcel/account/presentation/change_password_page/change_password_page.dart';
import 'package:smart_parcel/account/presentation/profile_page/profiles_page.dart';
import 'package:smart_parcel/account/presentation/settings_page/settings_page.dart';
import 'package:smart_parcel/auth/presentation/confirm_email/confirm_email.dart';
import 'package:smart_parcel/auth/presentation/forgot_password_page/forgot_password_page.dart';
import 'package:smart_parcel/auth/presentation/login_page/login_page.dart';
import 'package:smart_parcel/auth/presentation/sign_up_page/sign_up_page.dart';
import 'package:smart_parcel/auth/presentation/welcome_page/welcome_page.dart';
import 'package:smart_parcel/common/presentation/widgets/home_page.dart';
import 'package:smart_parcel/common/presentation/widgets/splash_page.dart';
import 'package:smart_parcel/delivery/presentation/choose_duration_page.dart/choose_duration_page.dart';
import 'package:smart_parcel/delivery/presentation/dashboard/dashboard.dart';
import 'package:smart_parcel/delivery/presentation/select_location/select_location_page.dart';
import 'package:smart_parcel/parcels/presentation/available_page/available_page.dart';
import 'package:smart_parcel/parcels/presentation/deposits_page/deposits_page.dart';
import 'package:smart_parcel/parcels/presentation/history_page/history_page.dart';
import 'package:smart_parcel/parcels/presentation/parcels_page.dart';

const homePageChildren = [
  AutoRoute(
    path: 'home',
    name: 'homeRouter',
    page: EmptyRouterPage,
    children: [
      AutoRoute(path: '', page: DashboardPage),
      AutoRoute(path: 'chooseDuration', page: ChooseDurationPage),
      AutoRoute(path: 'selectLocation', page: SelectLocationPage),
    ],
  ),
  AutoRoute(
    path: 'parcels',
    name: 'parcelRouter',
    page: EmptyRouterPage,
    children: [
      AutoRoute(path: '', page: ParcelsPage, children: [
        AutoRoute(path: 'deposits', page: DepositPage),
        AutoRoute(path: 'history', page: HistoryPage),
        AutoRoute(path: 'available', page: AvailablePage),
      ])
    ],
  ),
  AutoRoute(
    path: 'profile',
    name: 'profileRouter',
    page: EmptyRouterPage,
    children: [AutoRoute(path: '', page: ProfilePage)],
  ),
  AutoRoute(
    path: 'settings',
    name: 'settingsRouter',
    page: EmptyRouterPage,
    children: [
      AutoRoute(path: '', page: SettingsPage),
      AutoRoute(path: 'changePassword', page: ChangePasswordPage),
    ],
  ),
];

const routes = [
  AutoRoute(page: SplashPage, path: '/'),
  CustomRoute(
    page: WelcomePage,
    path: '/welcomePage',
    transitionsBuilder: TransitionsBuilders.fadeIn,
    durationInMilliseconds: 800,
  ),
  AutoRoute(page: LoginPage, path: '/login'),
  AutoRoute(page: SignUpPage, path: '/signUp'),
  AutoRoute(page: ConfirmEmailPage, path: '/confirmEmail'),
  AutoRoute(page: ForgotPasswordPage, path: '/forgotPassword'),
  CustomRoute(
    page: HomePage,
    path: '/home',
    children: homePageChildren,
    transitionsBuilder: TransitionsBuilders.fadeIn,
    durationInMilliseconds: 800,
  ),
];

@AdaptiveAutoRouter(
  routes: routes,
  replaceInRouteName: 'Page,Route',
)
class $AppRouter {}
