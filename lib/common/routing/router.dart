import 'package:auto_route/auto_route.dart';
import 'package:smart_parcel/auth/presentation/forgot_password_page/forgot_password_page.dart';
import 'package:smart_parcel/auth/presentation/login_page/login_page.dart';
import 'package:smart_parcel/auth/presentation/sign_up_page/sign_up_page.dart';
import 'package:smart_parcel/auth/presentation/welcome_page/welcome_page.dart';
import 'package:smart_parcel/delivery/presentation/home_page/home_page.dart';

const routes = [
  AutoRoute(page: WelcomePage, path: '/welcomePage'),
  AutoRoute(page: LoginPage, path: '/login'),
  AutoRoute(page: SignUpPage, path: '/signUp'),
  AutoRoute(page: ForgotPasswordPage, path: '/forgotPassword'),
  AutoRoute(page: HomePage, path: '/', initial: true),
];

@MaterialAutoRouter(
  routes: routes,
  replaceInRouteName: 'Page,Route',
)
class $AppRouter {}
