import 'package:auto_route/auto_route.dart';
import 'package:smart_parcel/account/presentation/profile_page/profiles_page.dart';
import 'package:smart_parcel/account/presentation/settings_page/settings_page.dart';
import 'package:smart_parcel/auth/presentation/confirm_email/confirm_email.dart';
import 'package:smart_parcel/auth/presentation/forgot_password_page/forgot_password_page.dart';
import 'package:smart_parcel/auth/presentation/login_page/login_page.dart';
import 'package:smart_parcel/auth/presentation/sign_up_page/sign_up_page.dart';
import 'package:smart_parcel/auth/presentation/welcome_page/welcome_page.dart';
import 'package:smart_parcel/common/presentation/widgets/home_page.dart';
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
      AutoRoute(path: '', page: Dashboard),
      AutoRoute(path: 'chooseDuration', page: ChooseDurationPage),
      AutoRoute(path: 'selectLocation', page: SelectLocation),
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
    children: [AutoRoute(path: '', page: SettingsPage)],
  ),
];

const routes = [
  AutoRoute(page: WelcomePage, path: '/welcomePage'),
  AutoRoute(page: LoginPage, path: '/login'),
  AutoRoute(page: SignUpPage, path: '/signUp'),
  AutoRoute(page: ConfirmEmailPage, path: '/confirmEmail'),
  AutoRoute(page: ForgotPasswordPage, path: '/forgotPassword'),
  AutoRoute(page: HomePage, path: '/', children: homePageChildren),
];

@AdaptiveAutoRouter(
  routes: routes,
  replaceInRouteName: 'Page,Route',
)
class $AppRouter {}
