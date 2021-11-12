// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i18;
import 'package:smart_parcel/account/presentation/change_password_page/change_password_page.dart'
    as _i17;
import 'package:smart_parcel/account/presentation/profile_page/profiles_page.dart'
    as _i15;
import 'package:smart_parcel/account/presentation/settings_page/settings_page.dart'
    as _i16;
import 'package:smart_parcel/auth/presentation/confirm_email/confirm_email.dart'
    as _i4;
import 'package:smart_parcel/auth/presentation/forgot_password_page/forgot_password_page.dart'
    as _i5;
import 'package:smart_parcel/auth/presentation/login_page/login_page.dart'
    as _i2;
import 'package:smart_parcel/auth/presentation/sign_up_page/sign_up_page.dart'
    as _i3;
import 'package:smart_parcel/auth/presentation/welcome_page/welcome_page.dart'
    as _i1;
import 'package:smart_parcel/common/presentation/widgets/home_page.dart' as _i6;
import 'package:smart_parcel/delivery/presentation/choose_duration_page.dart/choose_duration_page.dart'
    as _i9;
import 'package:smart_parcel/delivery/presentation/dashboard/dashboard.dart'
    as _i8;
import 'package:smart_parcel/delivery/presentation/select_location/select_location_page.dart'
    as _i10;
import 'package:smart_parcel/parcels/presentation/available_page/available_page.dart'
    as _i14;
import 'package:smart_parcel/parcels/presentation/deposits_page/deposits_page.dart'
    as _i12;
import 'package:smart_parcel/parcels/presentation/history_page/history_page.dart'
    as _i13;
import 'package:smart_parcel/parcels/presentation/parcels_page.dart' as _i11;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i18.GlobalKey<_i18.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    WelcomeRoute.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.WelcomePage());
    },
    LoginRoute.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.LoginPage());
    },
    SignUpRoute.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i3.SignUpPage());
    },
    ConfirmEmailRoute.name: (routeData) {
      final pathParams = routeData.pathParams;
      final args = routeData.argsAs<ConfirmEmailRouteArgs>(
          orElse: () => ConfirmEmailRouteArgs(
              email: pathParams.getString('email'),
              password: pathParams.getString('password')));
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i4.ConfirmEmailPage(
              key: args.key, email: args.email, password: args.password));
    },
    ForgotPasswordRoute.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i5.ForgotPasswordPage());
    },
    HomeRoute.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i6.HomePage());
    },
    HomeRouter.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i7.EmptyRouterPage());
    },
    ParcelRouter.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i7.EmptyRouterPage());
    },
    ProfileRouter.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i7.EmptyRouterPage());
    },
    SettingsRouter.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i7.EmptyRouterPage());
    },
    DashboardRoute.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i8.DashboardPage());
    },
    ChooseDurationRoute.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i9.ChooseDurationPage());
    },
    SelectLocationRoute.name: (routeData) {
      final args = routeData.argsAs<SelectLocationRouteArgs>();
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i10.SelectLocationPage(
              key: args.key, onSelected: args.onSelected));
    },
    ParcelsRoute.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i11.ParcelsPage());
    },
    DepositRoute.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i12.DepositPage());
    },
    HistoryRoute.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i13.HistoryPage());
    },
    AvailableRoute.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i14.AvailablePage());
    },
    ProfileRoute.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i15.ProfilePage());
    },
    SettingsRoute.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i16.SettingsPage());
    },
    ChangePasswordRoute.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i17.ChangePasswordPage());
    }
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig('/#redirect',
            path: '/', redirectTo: '/welcomePage', fullMatch: true),
        _i7.RouteConfig(WelcomeRoute.name, path: '/welcomePage'),
        _i7.RouteConfig(LoginRoute.name, path: '/login'),
        _i7.RouteConfig(SignUpRoute.name, path: '/signUp'),
        _i7.RouteConfig(ConfirmEmailRoute.name, path: '/confirmEmail'),
        _i7.RouteConfig(ForgotPasswordRoute.name, path: '/forgotPassword'),
        _i7.RouteConfig(HomeRoute.name, path: '/ss', children: [
          _i7.RouteConfig(HomeRouter.name, path: 'home', children: [
            _i7.RouteConfig(DashboardRoute.name, path: ''),
            _i7.RouteConfig(ChooseDurationRoute.name, path: 'chooseDuration'),
            _i7.RouteConfig(SelectLocationRoute.name, path: 'selectLocation')
          ]),
          _i7.RouteConfig(ParcelRouter.name, path: 'parcels', children: [
            _i7.RouteConfig(ParcelsRoute.name, path: '', children: [
              _i7.RouteConfig(DepositRoute.name, path: 'deposits'),
              _i7.RouteConfig(HistoryRoute.name, path: 'history'),
              _i7.RouteConfig(AvailableRoute.name, path: 'available')
            ])
          ]),
          _i7.RouteConfig(ProfileRouter.name,
              path: 'profile',
              children: [_i7.RouteConfig(ProfileRoute.name, path: '')]),
          _i7.RouteConfig(SettingsRouter.name, path: 'settings', children: [
            _i7.RouteConfig(SettingsRoute.name, path: ''),
            _i7.RouteConfig(ChangePasswordRoute.name, path: 'changePassword')
          ])
        ])
      ];
}

/// generated route for [_i1.WelcomePage]
class WelcomeRoute extends _i7.PageRouteInfo<void> {
  const WelcomeRoute() : super(name, path: '/welcomePage');

  static const String name = 'WelcomeRoute';
}

/// generated route for [_i2.LoginPage]
class LoginRoute extends _i7.PageRouteInfo<void> {
  const LoginRoute() : super(name, path: '/login');

  static const String name = 'LoginRoute';
}

/// generated route for [_i3.SignUpPage]
class SignUpRoute extends _i7.PageRouteInfo<void> {
  const SignUpRoute() : super(name, path: '/signUp');

  static const String name = 'SignUpRoute';
}

/// generated route for [_i4.ConfirmEmailPage]
class ConfirmEmailRoute extends _i7.PageRouteInfo<ConfirmEmailRouteArgs> {
  ConfirmEmailRoute(
      {_i18.Key? key, required String email, required String password})
      : super(name,
            path: '/confirmEmail',
            args: ConfirmEmailRouteArgs(
                key: key, email: email, password: password));

  static const String name = 'ConfirmEmailRoute';
}

class ConfirmEmailRouteArgs {
  const ConfirmEmailRouteArgs(
      {this.key, required this.email, required this.password});

  final _i18.Key? key;

  final String email;

  final String password;
}

/// generated route for [_i5.ForgotPasswordPage]
class ForgotPasswordRoute extends _i7.PageRouteInfo<void> {
  const ForgotPasswordRoute() : super(name, path: '/forgotPassword');

  static const String name = 'ForgotPasswordRoute';
}

/// generated route for [_i6.HomePage]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute({List<_i7.PageRouteInfo>? children})
      : super(name, path: '/ss', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for [_i7.EmptyRouterPage]
class HomeRouter extends _i7.PageRouteInfo<void> {
  const HomeRouter({List<_i7.PageRouteInfo>? children})
      : super(name, path: 'home', initialChildren: children);

  static const String name = 'HomeRouter';
}

/// generated route for [_i7.EmptyRouterPage]
class ParcelRouter extends _i7.PageRouteInfo<void> {
  const ParcelRouter({List<_i7.PageRouteInfo>? children})
      : super(name, path: 'parcels', initialChildren: children);

  static const String name = 'ParcelRouter';
}

/// generated route for [_i7.EmptyRouterPage]
class ProfileRouter extends _i7.PageRouteInfo<void> {
  const ProfileRouter({List<_i7.PageRouteInfo>? children})
      : super(name, path: 'profile', initialChildren: children);

  static const String name = 'ProfileRouter';
}

/// generated route for [_i7.EmptyRouterPage]
class SettingsRouter extends _i7.PageRouteInfo<void> {
  const SettingsRouter({List<_i7.PageRouteInfo>? children})
      : super(name, path: 'settings', initialChildren: children);

  static const String name = 'SettingsRouter';
}

/// generated route for [_i8.DashboardPage]
class DashboardRoute extends _i7.PageRouteInfo<void> {
  const DashboardRoute() : super(name, path: '');

  static const String name = 'DashboardRoute';
}

/// generated route for [_i9.ChooseDurationPage]
class ChooseDurationRoute extends _i7.PageRouteInfo<void> {
  const ChooseDurationRoute() : super(name, path: 'chooseDuration');

  static const String name = 'ChooseDurationRoute';
}

/// generated route for [_i10.SelectLocationPage]
class SelectLocationRoute extends _i7.PageRouteInfo<SelectLocationRouteArgs> {
  SelectLocationRoute(
      {_i18.Key? key, required dynamic Function(int) onSelected})
      : super(name,
            path: 'selectLocation',
            args: SelectLocationRouteArgs(key: key, onSelected: onSelected));

  static const String name = 'SelectLocationRoute';
}

class SelectLocationRouteArgs {
  const SelectLocationRouteArgs({this.key, required this.onSelected});

  final _i18.Key? key;

  final dynamic Function(int) onSelected;
}

/// generated route for [_i11.ParcelsPage]
class ParcelsRoute extends _i7.PageRouteInfo<void> {
  const ParcelsRoute({List<_i7.PageRouteInfo>? children})
      : super(name, path: '', initialChildren: children);

  static const String name = 'ParcelsRoute';
}

/// generated route for [_i12.DepositPage]
class DepositRoute extends _i7.PageRouteInfo<void> {
  const DepositRoute() : super(name, path: 'deposits');

  static const String name = 'DepositRoute';
}

/// generated route for [_i13.HistoryPage]
class HistoryRoute extends _i7.PageRouteInfo<void> {
  const HistoryRoute() : super(name, path: 'history');

  static const String name = 'HistoryRoute';
}

/// generated route for [_i14.AvailablePage]
class AvailableRoute extends _i7.PageRouteInfo<void> {
  const AvailableRoute() : super(name, path: 'available');

  static const String name = 'AvailableRoute';
}

/// generated route for [_i15.ProfilePage]
class ProfileRoute extends _i7.PageRouteInfo<void> {
  const ProfileRoute() : super(name, path: '');

  static const String name = 'ProfileRoute';
}

/// generated route for [_i16.SettingsPage]
class SettingsRoute extends _i7.PageRouteInfo<void> {
  const SettingsRoute() : super(name, path: '');

  static const String name = 'SettingsRoute';
}

/// generated route for [_i17.ChangePasswordPage]
class ChangePasswordRoute extends _i7.PageRouteInfo<void> {
  const ChangePasswordRoute() : super(name, path: 'changePassword');

  static const String name = 'ChangePasswordRoute';
}
