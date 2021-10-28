import 'package:auto_route/auto_route.dart';
import 'package:smart_parcel/auth/presentation/login_page/login_page.dart';
import 'package:smart_parcel/auth/presentation/welcome_page/welcome_page.dart';

const routes = [
  AutoRoute(page: WelcomePage, path: '/welcomePage', initial: true),
  AutoRoute(page: LoginPage, path: '/login'),
];

@MaterialAutoRouter(
  routes: routes,
  replaceInRouteName: 'Page,Route',
)
class $AppRouter {}
