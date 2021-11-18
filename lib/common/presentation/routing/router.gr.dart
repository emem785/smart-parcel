// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i21;
import 'package:smart_parcel/account/presentation/change_password_page/change_password_page.dart'
    as _i20;
import 'package:smart_parcel/account/presentation/profile_page/profiles_page.dart'
    as _i18;
import 'package:smart_parcel/account/presentation/settings_page/settings_page.dart'
    as _i19;
import 'package:smart_parcel/auth/presentation/confirm_email/confirm_email.dart'
    as _i5;
import 'package:smart_parcel/auth/presentation/forgot_password_page/forgot_password_page.dart'
    as _i6;
import 'package:smart_parcel/auth/presentation/login_page/login_page.dart'
    as _i3;
import 'package:smart_parcel/auth/presentation/sign_up_page/sign_up_page.dart'
    as _i4;
import 'package:smart_parcel/auth/presentation/welcome_page/welcome_page.dart'
    as _i2;
import 'package:smart_parcel/common/presentation/widgets/home_page.dart' as _i7;
import 'package:smart_parcel/common/presentation/widgets/splash_page.dart'
    as _i1;
import 'package:smart_parcel/delivery/domain/models/center.dart' as _i22;
import 'package:smart_parcel/delivery/domain/models/center_district.dart'
    as _i23;
import 'package:smart_parcel/delivery/presentation/choose_duration_page.dart/choose_duration_page.dart'
    as _i10;
import 'package:smart_parcel/delivery/presentation/choose_duration_page.dart/select_location_district_page.dart'
    as _i12;
import 'package:smart_parcel/delivery/presentation/dashboard/dashboard.dart'
    as _i9;
import 'package:smart_parcel/delivery/presentation/select_location/select_location_page.dart'
    as _i11;
import 'package:smart_parcel/parcels/presentation/available_page/available_page.dart'
    as _i17;
import 'package:smart_parcel/parcels/presentation/deposits_page/deposits_page.dart'
    as _i15;
import 'package:smart_parcel/parcels/presentation/history_page/history_page.dart'
    as _i16;
import 'package:smart_parcel/parcels/presentation/parcels_page.dart' as _i14;
import 'package:smart_parcel/payment/presentation/choose_duration_page.dart/self_storage_payment_page.dart'
    as _i13;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i21.GlobalKey<_i21.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    WelcomeRoute.name: (routeData) {
      return _i8.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i2.WelcomePage(),
          transitionsBuilder: _i8.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 800,
          opaque: true,
          barrierDismissible: false);
    },
    LoginRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i3.LoginPage());
    },
    SignUpRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i4.SignUpPage());
    },
    ConfirmEmailRoute.name: (routeData) {
      final pathParams = routeData.pathParams;
      final args = routeData.argsAs<ConfirmEmailRouteArgs>(
          orElse: () => ConfirmEmailRouteArgs(
              email: pathParams.getString('email'),
              password: pathParams.getString('password')));
      return _i8.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i5.ConfirmEmailPage(
              key: args.key, email: args.email, password: args.password));
    },
    ForgotPasswordRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i6.ForgotPasswordPage());
    },
    HomeRoute.name: (routeData) {
      return _i8.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i7.HomePage(),
          transitionsBuilder: _i8.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 800,
          opaque: true,
          barrierDismissible: false);
    },
    HomeRouter.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i8.EmptyRouterPage());
    },
    ParcelRouter.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i8.EmptyRouterPage());
    },
    ProfileRouter.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i8.EmptyRouterPage());
    },
    SettingsRouter.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i8.EmptyRouterPage());
    },
    DashboardRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i9.DashboardPage());
    },
    ChooseDurationRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i10.ChooseDurationPage());
    },
    SelectLocationRoute.name: (routeData) {
      final args = routeData.argsAs<SelectLocationRouteArgs>();
      return _i8.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i11.SelectLocationPage(
              key: args.key,
              onSelected: args.onSelected,
              centerDistrict: args.centerDistrict));
    },
    SelectLocationDistrictRoute.name: (routeData) {
      final args = routeData.argsAs<SelectLocationDistrictRouteArgs>();
      return _i8.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i12.SelectLocationDistrictPage(
              key: args.key, onSelected: args.onSelected));
    },
    SelfStoragePaymentRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i13.SelfStoragePaymentPage());
    },
    ParcelsRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i14.ParcelsPage());
    },
    DepositRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i15.DepositPage());
    },
    HistoryRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i16.HistoryPage());
    },
    AvailableRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i17.AvailablePage());
    },
    ProfileRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i18.ProfilePage());
    },
    SettingsRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i19.SettingsPage());
    },
    ChangePasswordRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i20.ChangePasswordPage());
    }
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(SplashRoute.name, path: '/'),
        _i8.RouteConfig(WelcomeRoute.name, path: '/welcomePage'),
        _i8.RouteConfig(LoginRoute.name, path: '/login'),
        _i8.RouteConfig(SignUpRoute.name, path: '/signUp'),
        _i8.RouteConfig(ConfirmEmailRoute.name, path: '/confirmEmail'),
        _i8.RouteConfig(ForgotPasswordRoute.name, path: '/forgotPassword'),
        _i8.RouteConfig(HomeRoute.name, path: '/home', children: [
          _i8.RouteConfig(HomeRouter.name, path: 'home', children: [
            _i8.RouteConfig(DashboardRoute.name, path: ''),
            _i8.RouteConfig(ChooseDurationRoute.name, path: 'chooseDuration'),
            _i8.RouteConfig(SelectLocationRoute.name, path: 'selectLocation'),
            _i8.RouteConfig(SelectLocationDistrictRoute.name,
                path: 'selectLocationDistrict'),
            _i8.RouteConfig(SelfStoragePaymentRoute.name,
                path: 'selfStoragePayment')
          ]),
          _i8.RouteConfig(ParcelRouter.name, path: 'parcels', children: [
            _i8.RouteConfig(ParcelsRoute.name, path: '', children: [
              _i8.RouteConfig(DepositRoute.name, path: 'deposits'),
              _i8.RouteConfig(HistoryRoute.name, path: 'history'),
              _i8.RouteConfig(AvailableRoute.name, path: 'available')
            ])
          ]),
          _i8.RouteConfig(ProfileRouter.name,
              path: 'profile',
              children: [_i8.RouteConfig(ProfileRoute.name, path: '')]),
          _i8.RouteConfig(SettingsRouter.name, path: 'settings', children: [
            _i8.RouteConfig(SettingsRoute.name, path: ''),
            _i8.RouteConfig(ChangePasswordRoute.name, path: 'changePassword')
          ])
        ])
      ];
}

/// generated route for [_i1.SplashPage]
class SplashRoute extends _i8.PageRouteInfo<void> {
  const SplashRoute() : super(name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for [_i2.WelcomePage]
class WelcomeRoute extends _i8.PageRouteInfo<void> {
  const WelcomeRoute() : super(name, path: '/welcomePage');

  static const String name = 'WelcomeRoute';
}

/// generated route for [_i3.LoginPage]
class LoginRoute extends _i8.PageRouteInfo<void> {
  const LoginRoute() : super(name, path: '/login');

  static const String name = 'LoginRoute';
}

/// generated route for [_i4.SignUpPage]
class SignUpRoute extends _i8.PageRouteInfo<void> {
  const SignUpRoute() : super(name, path: '/signUp');

  static const String name = 'SignUpRoute';
}

/// generated route for [_i5.ConfirmEmailPage]
class ConfirmEmailRoute extends _i8.PageRouteInfo<ConfirmEmailRouteArgs> {
  ConfirmEmailRoute(
      {_i21.Key? key, required String email, required String password})
      : super(name,
            path: '/confirmEmail',
            args: ConfirmEmailRouteArgs(
                key: key, email: email, password: password));

  static const String name = 'ConfirmEmailRoute';
}

class ConfirmEmailRouteArgs {
  const ConfirmEmailRouteArgs(
      {this.key, required this.email, required this.password});

  final _i21.Key? key;

  final String email;

  final String password;
}

/// generated route for [_i6.ForgotPasswordPage]
class ForgotPasswordRoute extends _i8.PageRouteInfo<void> {
  const ForgotPasswordRoute() : super(name, path: '/forgotPassword');

  static const String name = 'ForgotPasswordRoute';
}

/// generated route for [_i7.HomePage]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute({List<_i8.PageRouteInfo>? children})
      : super(name, path: '/home', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for [_i8.EmptyRouterPage]
class HomeRouter extends _i8.PageRouteInfo<void> {
  const HomeRouter({List<_i8.PageRouteInfo>? children})
      : super(name, path: 'home', initialChildren: children);

  static const String name = 'HomeRouter';
}

/// generated route for [_i8.EmptyRouterPage]
class ParcelRouter extends _i8.PageRouteInfo<void> {
  const ParcelRouter({List<_i8.PageRouteInfo>? children})
      : super(name, path: 'parcels', initialChildren: children);

  static const String name = 'ParcelRouter';
}

/// generated route for [_i8.EmptyRouterPage]
class ProfileRouter extends _i8.PageRouteInfo<void> {
  const ProfileRouter({List<_i8.PageRouteInfo>? children})
      : super(name, path: 'profile', initialChildren: children);

  static const String name = 'ProfileRouter';
}

/// generated route for [_i8.EmptyRouterPage]
class SettingsRouter extends _i8.PageRouteInfo<void> {
  const SettingsRouter({List<_i8.PageRouteInfo>? children})
      : super(name, path: 'settings', initialChildren: children);

  static const String name = 'SettingsRouter';
}

/// generated route for [_i9.DashboardPage]
class DashboardRoute extends _i8.PageRouteInfo<void> {
  const DashboardRoute() : super(name, path: '');

  static const String name = 'DashboardRoute';
}

/// generated route for [_i10.ChooseDurationPage]
class ChooseDurationRoute extends _i8.PageRouteInfo<void> {
  const ChooseDurationRoute() : super(name, path: 'chooseDuration');

  static const String name = 'ChooseDurationRoute';
}

/// generated route for [_i11.SelectLocationPage]
class SelectLocationRoute extends _i8.PageRouteInfo<SelectLocationRouteArgs> {
  SelectLocationRoute(
      {_i21.Key? key,
      required dynamic Function(_i22.ParcelCenter) onSelected,
      required _i23.CenterDistrict centerDistrict})
      : super(name,
            path: 'selectLocation',
            args: SelectLocationRouteArgs(
                key: key,
                onSelected: onSelected,
                centerDistrict: centerDistrict));

  static const String name = 'SelectLocationRoute';
}

class SelectLocationRouteArgs {
  const SelectLocationRouteArgs(
      {this.key, required this.onSelected, required this.centerDistrict});

  final _i21.Key? key;

  final dynamic Function(_i22.ParcelCenter) onSelected;

  final _i23.CenterDistrict centerDistrict;
}

/// generated route for [_i12.SelectLocationDistrictPage]
class SelectLocationDistrictRoute
    extends _i8.PageRouteInfo<SelectLocationDistrictRouteArgs> {
  SelectLocationDistrictRoute(
      {_i21.Key? key, required dynamic Function(_i22.ParcelCenter) onSelected})
      : super(name,
            path: 'selectLocationDistrict',
            args: SelectLocationDistrictRouteArgs(
                key: key, onSelected: onSelected));

  static const String name = 'SelectLocationDistrictRoute';
}

class SelectLocationDistrictRouteArgs {
  const SelectLocationDistrictRouteArgs({this.key, required this.onSelected});

  final _i21.Key? key;

  final dynamic Function(_i22.ParcelCenter) onSelected;
}

/// generated route for [_i13.SelfStoragePaymentPage]
class SelfStoragePaymentRoute extends _i8.PageRouteInfo<void> {
  const SelfStoragePaymentRoute() : super(name, path: 'selfStoragePayment');

  static const String name = 'SelfStoragePaymentRoute';
}

/// generated route for [_i14.ParcelsPage]
class ParcelsRoute extends _i8.PageRouteInfo<void> {
  const ParcelsRoute({List<_i8.PageRouteInfo>? children})
      : super(name, path: '', initialChildren: children);

  static const String name = 'ParcelsRoute';
}

/// generated route for [_i15.DepositPage]
class DepositRoute extends _i8.PageRouteInfo<void> {
  const DepositRoute() : super(name, path: 'deposits');

  static const String name = 'DepositRoute';
}

/// generated route for [_i16.HistoryPage]
class HistoryRoute extends _i8.PageRouteInfo<void> {
  const HistoryRoute() : super(name, path: 'history');

  static const String name = 'HistoryRoute';
}

/// generated route for [_i17.AvailablePage]
class AvailableRoute extends _i8.PageRouteInfo<void> {
  const AvailableRoute() : super(name, path: 'available');

  static const String name = 'AvailableRoute';
}

/// generated route for [_i18.ProfilePage]
class ProfileRoute extends _i8.PageRouteInfo<void> {
  const ProfileRoute() : super(name, path: '');

  static const String name = 'ProfileRoute';
}

/// generated route for [_i19.SettingsPage]
class SettingsRoute extends _i8.PageRouteInfo<void> {
  const SettingsRoute() : super(name, path: '');

  static const String name = 'SettingsRoute';
}

/// generated route for [_i20.ChangePasswordPage]
class ChangePasswordRoute extends _i8.PageRouteInfo<void> {
  const ChangePasswordRoute() : super(name, path: 'changePassword');

  static const String name = 'ChangePasswordRoute';
}
