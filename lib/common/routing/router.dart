import 'package:auto_route/auto_route.dart';
import 'package:smart_parcel/account/presentation/profile_page/profiles_page.dart';
import 'package:smart_parcel/account/presentation/settings_page/settings_page.dart';
import 'package:smart_parcel/auth/presentation/forgot_password_page/forgot_password_page.dart';
import 'package:smart_parcel/auth/presentation/login_page/login_page.dart';
import 'package:smart_parcel/auth/presentation/sign_up_page/sign_up_page.dart';
import 'package:smart_parcel/auth/presentation/welcome_page/welcome_page.dart';
import 'package:smart_parcel/common/widgets/home_page.dart';
import 'package:smart_parcel/delivery/presentation/dashboard/dashboard.dart';
import 'package:smart_parcel/parcels/presentation/deposits_page/deposits_page.dart';
import 'package:smart_parcel/parcels/presentation/history_page/history_page.dart';
import 'package:smart_parcel/parcels/presentation/parcels_page.dart';

const routes = [
  AutoRoute(page: WelcomePage, path: '/welcomePage'),
  AutoRoute(page: LoginPage, path: '/login'),
  AutoRoute(page: SignUpPage, path: '/signUp'),
  AutoRoute(page: ForgotPasswordPage, path: '/forgotPassword'),
  AutoRoute(page: HomePage, path: '/', initial: true, children: [
    AutoRoute(
      path: 'home',
      name: 'homeRouter',
      page: EmptyRouterPage,
      children: [AutoRoute(path: '', page: Dashboard)],
    ),
    AutoRoute(
      path: 'parcels',
      name: 'parcelRouter',
      page: EmptyRouterPage,
      children: [
        AutoRoute(path: '', page: ParcelsPage, children: [
          AutoRoute(path: 'deposits', page: DepositPage),
          AutoRoute(path: 'history', page: HistoryPage),
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
  ]),
];

@MaterialAutoRouter(
  routes: routes,
  replaceInRouteName: 'Page,Route',
)
class $AppRouter {}
