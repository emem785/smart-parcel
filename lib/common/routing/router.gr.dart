// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i13;

import '../../account/presentation/profile_page/profiles_page.dart' as _i11;
import '../../account/presentation/settings_page/settings_page.dart' as _i12;
import '../../auth/presentation/forgot_password_page/forgot_password_page.dart'
    as _i4;
import '../../auth/presentation/login_page/login_page.dart' as _i2;
import '../../auth/presentation/sign_up_page/sign_up_page.dart' as _i3;
import '../../auth/presentation/welcome_page/welcome_page.dart' as _i1;
import '../../delivery/presentation/dashboard/dashboard.dart' as _i7;
import '../../parcels/presentation/deposits_page/deposits_page.dart' as _i9;
import '../../parcels/presentation/history_page/history_page.dart' as _i10;
import '../../parcels/presentation/parcels_page.dart' as _i8;
import '../widgets/home_page.dart' as _i5;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i13.GlobalKey<_i13.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    WelcomeRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.WelcomePage());
    },
    LoginRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.LoginPage());
    },
    SignUpRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.SignUpPage());
    },
    ForgotPasswordRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.ForgotPasswordPage());
    },
    HomeRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.HomePage());
    },
    HomeRouter.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.EmptyRouterPage());
    },
    ParcelRouter.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.EmptyRouterPage());
    },
    ProfileRouter.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.EmptyRouterPage());
    },
    SettingsRouter.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.EmptyRouterPage());
    },
    Dashboard.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.Dashboard());
    },
    ParcelsRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.ParcelsPage());
    },
    DepositRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.DepositPage());
    },
    HistoryRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.HistoryPage());
    },
    ProfileRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i11.ProfilePage());
    },
    SettingsRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.SettingsPage());
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(WelcomeRoute.name, path: '/welcomePage'),
        _i6.RouteConfig(LoginRoute.name, path: '/login'),
        _i6.RouteConfig(SignUpRoute.name, path: '/signUp'),
        _i6.RouteConfig(ForgotPasswordRoute.name, path: '/forgotPassword'),
        _i6.RouteConfig(HomeRoute.name, path: '/', children: [
          _i6.RouteConfig(HomeRouter.name,
              path: 'home',
              children: [_i6.RouteConfig(Dashboard.name, path: '')]),
          _i6.RouteConfig(ParcelRouter.name, path: 'parcels', children: [
            _i6.RouteConfig(ParcelsRoute.name, path: '', children: [
              _i6.RouteConfig(DepositRoute.name, path: 'deposits'),
              _i6.RouteConfig(HistoryRoute.name, path: 'history')
            ])
          ]),
          _i6.RouteConfig(ProfileRouter.name,
              path: 'profile',
              children: [_i6.RouteConfig(ProfileRoute.name, path: '')]),
          _i6.RouteConfig(SettingsRouter.name,
              path: 'settings',
              children: [_i6.RouteConfig(SettingsRoute.name, path: '')])
        ])
      ];
}

/// generated route for [_i1.WelcomePage]
class WelcomeRoute extends _i6.PageRouteInfo<void> {
  const WelcomeRoute() : super(name, path: '/welcomePage');

  static const String name = 'WelcomeRoute';
}

/// generated route for [_i2.LoginPage]
class LoginRoute extends _i6.PageRouteInfo<void> {
  const LoginRoute() : super(name, path: '/login');

  static const String name = 'LoginRoute';
}

/// generated route for [_i3.SignUpPage]
class SignUpRoute extends _i6.PageRouteInfo<void> {
  const SignUpRoute() : super(name, path: '/signUp');

  static const String name = 'SignUpRoute';
}

/// generated route for [_i4.ForgotPasswordPage]
class ForgotPasswordRoute extends _i6.PageRouteInfo<void> {
  const ForgotPasswordRoute() : super(name, path: '/forgotPassword');

  static const String name = 'ForgotPasswordRoute';
}

/// generated route for [_i5.HomePage]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute({List<_i6.PageRouteInfo>? children})
      : super(name, path: '/', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for [_i6.EmptyRouterPage]
class HomeRouter extends _i6.PageRouteInfo<void> {
  const HomeRouter({List<_i6.PageRouteInfo>? children})
      : super(name, path: 'home', initialChildren: children);

  static const String name = 'HomeRouter';
}

/// generated route for [_i6.EmptyRouterPage]
class ParcelRouter extends _i6.PageRouteInfo<void> {
  const ParcelRouter({List<_i6.PageRouteInfo>? children})
      : super(name, path: 'parcels', initialChildren: children);

  static const String name = 'ParcelRouter';
}

/// generated route for [_i6.EmptyRouterPage]
class ProfileRouter extends _i6.PageRouteInfo<void> {
  const ProfileRouter({List<_i6.PageRouteInfo>? children})
      : super(name, path: 'profile', initialChildren: children);

  static const String name = 'ProfileRouter';
}

/// generated route for [_i6.EmptyRouterPage]
class SettingsRouter extends _i6.PageRouteInfo<void> {
  const SettingsRouter({List<_i6.PageRouteInfo>? children})
      : super(name, path: 'settings', initialChildren: children);

  static const String name = 'SettingsRouter';
}

/// generated route for [_i7.Dashboard]
class Dashboard extends _i6.PageRouteInfo<void> {
  const Dashboard() : super(name, path: '');

  static const String name = 'Dashboard';
}

/// generated route for [_i8.ParcelsPage]
class ParcelsRoute extends _i6.PageRouteInfo<void> {
  const ParcelsRoute({List<_i6.PageRouteInfo>? children})
      : super(name, path: '', initialChildren: children);

  static const String name = 'ParcelsRoute';
}

/// generated route for [_i9.DepositPage]
class DepositRoute extends _i6.PageRouteInfo<void> {
  const DepositRoute() : super(name, path: 'deposits');

  static const String name = 'DepositRoute';
}

/// generated route for [_i10.HistoryPage]
class HistoryRoute extends _i6.PageRouteInfo<void> {
  const HistoryRoute() : super(name, path: 'history');

  static const String name = 'HistoryRoute';
}

/// generated route for [_i11.ProfilePage]
class ProfileRoute extends _i6.PageRouteInfo<void> {
  const ProfileRoute() : super(name, path: '');

  static const String name = 'ProfileRoute';
}

/// generated route for [_i12.SettingsPage]
class SettingsRoute extends _i6.PageRouteInfo<void> {
  const SettingsRoute() : super(name, path: '');

  static const String name = 'SettingsRoute';
}
