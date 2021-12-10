// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i12;
import 'package:flutter/material.dart' as _i32;
import 'package:flutter/widgets.dart' as _i33;
import 'package:smart_parcel/account/presentation/profile_page/edit_photo_page.dart'
    as _i29;
import 'package:smart_parcel/account/presentation/profile_page/profiles_page.dart'
    as _i28;
import 'package:smart_parcel/account/presentation/reset_password_page/reset_password_page.dart'
    as _i31;
import 'package:smart_parcel/account/presentation/settings_page/settings_page.dart'
    as _i30;
import 'package:smart_parcel/auth/presentation/confirm_email/confirm_email.dart'
    as _i6;
import 'package:smart_parcel/auth/presentation/confirm_email/password_changed_page.dart'
    as _i9;
import 'package:smart_parcel/auth/presentation/confirm_email/submit_password_otp_page.dart'
    as _i5;
import 'package:smart_parcel/auth/presentation/confirm_password_page/confirm_password_page.dart'
    as _i8;
import 'package:smart_parcel/auth/presentation/forgot_password_page/forgot_password_page.dart'
    as _i7;
import 'package:smart_parcel/auth/presentation/login_page/login_page.dart'
    as _i3;
import 'package:smart_parcel/auth/presentation/sign_up_page/sign_up_page.dart'
    as _i4;
import 'package:smart_parcel/auth/presentation/welcome_page/welcome_page.dart'
    as _i2;
import 'package:smart_parcel/common/presentation/widgets/home_page.dart'
    as _i10;
import 'package:smart_parcel/common/presentation/widgets/splash_page.dart'
    as _i1;
import 'package:smart_parcel/delivery/domain/models/center_district.dart'
    as _i34;
import 'package:smart_parcel/delivery/presentation/customer_to_courier_pages/customer_to_courier.dart'
    as _i17;
import 'package:smart_parcel/delivery/presentation/customer_to_customer_pages/customer_to_customer.dart'
    as _i18;
import 'package:smart_parcel/delivery/presentation/dashboard/dashboard.dart'
    as _i13;
import 'package:smart_parcel/delivery/presentation/home_wrapper_page.dart'
    as _i11;
import 'package:smart_parcel/delivery/presentation/select_location_pages/select_location_district_page.dart'
    as _i16;
import 'package:smart_parcel/delivery/presentation/select_location_pages/select_location_page.dart'
    as _i15;
import 'package:smart_parcel/delivery/presentation/self_storage_pages/choose_duration_page.dart'
    as _i14;
import 'package:smart_parcel/parcels/domain/models/customer_to_customer.dart'
    as _i37;
import 'package:smart_parcel/parcels/domain/models/self_storage.dart' as _i36;
import 'package:smart_parcel/parcels/presentation/customer_parcel/customer_2_customer_parcel_page.dart'
    as _i26;
import 'package:smart_parcel/parcels/presentation/parcel_detail_page/customer_parcel_detail_page.dart'
    as _i25;
import 'package:smart_parcel/parcels/presentation/parcel_detail_page/self_parcel_detail_page.dart'
    as _i24;
import 'package:smart_parcel/parcels/presentation/parcels_page.dart' as _i23;
import 'package:smart_parcel/parcels/presentation/self_storage_parcel/self_storage_parcel.dart'
    as _i27;
import 'package:smart_parcel/payment/domain/models/payment_data.dart' as _i35;
import 'package:smart_parcel/payment/presentation/customer_to_courier_page/customer_to_courier_payment_page.dart'
    as _i21;
import 'package:smart_parcel/payment/presentation/customer_to_customer_page/customer_to_customer_payment_page.dart'
    as _i20;
import 'package:smart_parcel/payment/presentation/receipt_page/receipt_page.dart'
    as _i22;
import 'package:smart_parcel/payment/presentation/self_storage_page/self_storage_payment_page.dart'
    as _i19;

class AppRouter extends _i12.RootStackRouter {
  AppRouter([_i32.GlobalKey<_i32.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    WelcomeRoute.name: (routeData) {
      return _i12.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i2.WelcomePage(),
          transitionsBuilder: _i12.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 500,
          opaque: true,
          barrierDismissible: false);
    },
    LoginRoute.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i3.LoginPage());
    },
    SignUpRoute.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i4.SignUpPage());
    },
    SubmitPasswordOtpRoute.name: (routeData) {
      final args = routeData.argsAs<SubmitPasswordOtpRouteArgs>();
      return _i12.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i5.SubmitPasswordOtpPage(key: args.key, email: args.email));
    },
    ConfirmEmailRoute.name: (routeData) {
      final pathParams = routeData.pathParams;
      final args = routeData.argsAs<ConfirmEmailRouteArgs>(
          orElse: () => ConfirmEmailRouteArgs(
              email: pathParams.getString('email'),
              password: pathParams.getString('password')));
      return _i12.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i6.ConfirmEmailPage(
              key: args.key, email: args.email, password: args.password));
    },
    ForgotPasswordRoute.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i7.ForgotPasswordPage());
    },
    ConfirmPasswordRoute.name: (routeData) {
      final args = routeData.argsAs<ConfirmPasswordRouteArgs>();
      return _i12.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i8.ConfirmPasswordPage(key: args.key, email: args.email));
    },
    PasswordChangedRoute.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i9.PasswordChangedPage());
    },
    HomeRoute.name: (routeData) {
      return _i12.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i10.HomePage(),
          transitionsBuilder: _i12.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 500,
          opaque: true,
          barrierDismissible: false);
    },
    HomeRouter.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i11.HomeWrapperPage());
    },
    ParcelRouter.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i12.EmptyRouterPage());
    },
    ProfileRouter.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i12.EmptyRouterPage());
    },
    SettingsRouter.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i12.EmptyRouterPage());
    },
    DashboardRoute.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i13.DashboardPage());
    },
    ChooseDurationRoute.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i14.ChooseDurationPage());
    },
    SelectLocationRoute.name: (routeData) {
      final args = routeData.argsAs<SelectLocationRouteArgs>();
      return _i12.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i15.SelectLocationPage(
              key: args.key, centerDistrict: args.centerDistrict));
    },
    SelectLocationDistrictRoute.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i16.SelectLocationDistrictPage());
    },
    CustomerToCourierRoute.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i17.CustomerToCourierPage());
    },
    CustomerToCustomerRoute.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i18.CustomerToCustomerPage());
    },
    SelfStoragePaymentRoute.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i19.SelfStoragePaymentPage());
    },
    CustomerToCustomerPaymentRoute.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
          routeData: routeData,
          child: const _i20.CustomerToCustomerPaymentPage());
    },
    CustomerToCourierPaymentRoute.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
          routeData: routeData,
          child: const _i21.CustomerToCourierPaymentPage());
    },
    ReceiptRoute.name: (routeData) {
      final args = routeData.argsAs<ReceiptRouteArgs>();
      return _i12.AdaptivePage<dynamic>(
          routeData: routeData,
          child:
              _i22.ReceiptPage(key: args.key, paymentData: args.paymentData));
    },
    ParcelsRoute.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i23.ParcelsPage());
    },
    SelfParcelDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<SelfParcelDetailsRouteArgs>();
      return _i12.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i24.SelfParcelDetailsPage(
              selfStorage: args.selfStorage, key: args.key));
    },
    CustomerParcelDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<CustomerParcelDetailsRouteArgs>();
      return _i12.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i25.CustomerParcelDetailsPage(
              customerToCustomer: args.customerToCustomer, key: args.key));
    },
    CustomerParcelRoute.name: (routeData) {
      final args = routeData.argsAs<CustomerParcelRouteArgs>(
          orElse: () => const CustomerParcelRouteArgs());
      return _i12.AdaptivePage<dynamic>(
          routeData: routeData, child: _i26.CustomerParcelPage(key: args.key));
    },
    SelfStorageParcelRoute.name: (routeData) {
      final args = routeData.argsAs<SelfStorageParcelRouteArgs>(
          orElse: () => const SelfStorageParcelRouteArgs());
      return _i12.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i27.SelfStorageParcelPage(key: args.key));
    },
    ProfileRoute.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i28.ProfilePage());
    },
    EditPhotoRoute.name: (routeData) {
      final args = routeData.argsAs<EditPhotoRouteArgs>();
      return _i12.AdaptivePage<dynamic>(
          routeData: routeData,
          child:
              _i29.EditPhotoPage(key: args.key, onUploaded: args.onUploaded));
    },
    SettingsRoute.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i30.SettingsPage());
    },
    ResetPasswordRoute.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i31.ResetPasswordPage());
    }
  };

  @override
  List<_i12.RouteConfig> get routes => [
        _i12.RouteConfig(SplashRoute.name, path: '/'),
        _i12.RouteConfig(WelcomeRoute.name, path: '/welcomePage'),
        _i12.RouteConfig(LoginRoute.name, path: '/login'),
        _i12.RouteConfig(SignUpRoute.name, path: '/signUp'),
        _i12.RouteConfig(SubmitPasswordOtpRoute.name,
            path: '/submitPasswordOtp'),
        _i12.RouteConfig(ConfirmEmailRoute.name, path: '/confirmEmail'),
        _i12.RouteConfig(ForgotPasswordRoute.name, path: '/forgotPassword'),
        _i12.RouteConfig(SubmitPasswordOtpRoute.name,
            path: '/submitPasswordOtp'),
        _i12.RouteConfig(ConfirmPasswordRoute.name, path: '/confirmPassword'),
        _i12.RouteConfig(PasswordChangedRoute.name,
            path: '/emailConfirmedPage'),
        _i12.RouteConfig(HomeRoute.name, path: '/home', children: [
          _i12.RouteConfig(HomeRouter.name, path: 'home', children: [
            _i12.RouteConfig(DashboardRoute.name, path: ''),
            _i12.RouteConfig(ChooseDurationRoute.name, path: 'chooseDuration'),
            _i12.RouteConfig(SelectLocationRoute.name, path: 'selectLocation'),
            _i12.RouteConfig(SelectLocationDistrictRoute.name,
                path: 'selectLocationDistrict'),
            _i12.RouteConfig(CustomerToCourierRoute.name,
                path: 'customerToCourier'),
            _i12.RouteConfig(CustomerToCustomerRoute.name,
                path: 'cutomerToCustomer'),
            _i12.RouteConfig(SelfStoragePaymentRoute.name,
                path: 'selfStoragePayment'),
            _i12.RouteConfig(CustomerToCourierRoute.name,
                path: 'customerToCourier'),
            _i12.RouteConfig(CustomerToCustomerPaymentRoute.name,
                path: 'customerToCustomerPayment'),
            _i12.RouteConfig(CustomerToCourierPaymentRoute.name,
                path: 'customerToCourierPayment'),
            _i12.RouteConfig(ReceiptRoute.name, path: 'receiptPage')
          ]),
          _i12.RouteConfig(ParcelRouter.name, path: 'parcels', children: [
            _i12.RouteConfig(ParcelsRoute.name, path: '', children: [
              _i12.RouteConfig(CustomerParcelRoute.name,
                  path: 'customer2Customer'),
              _i12.RouteConfig(SelfStorageParcelRoute.name, path: 'selfStorage')
            ]),
            _i12.RouteConfig(SelfParcelDetailsRoute.name,
                path: 'selfDetailsPage'),
            _i12.RouteConfig(CustomerParcelDetailsRoute.name,
                path: 'customerDetailsPage')
          ]),
          _i12.RouteConfig(ProfileRouter.name, path: 'profile', children: [
            _i12.RouteConfig(ProfileRoute.name, path: ''),
            _i12.RouteConfig(EditPhotoRoute.name, path: 'profilePhoto')
          ]),
          _i12.RouteConfig(SettingsRouter.name, path: 'settings', children: [
            _i12.RouteConfig(SettingsRoute.name, path: ''),
            _i12.RouteConfig(ResetPasswordRoute.name, path: 'resetPassword')
          ])
        ])
      ];
}

/// generated route for [_i1.SplashPage]
class SplashRoute extends _i12.PageRouteInfo<void> {
  const SplashRoute() : super(name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for [_i2.WelcomePage]
class WelcomeRoute extends _i12.PageRouteInfo<void> {
  const WelcomeRoute() : super(name, path: '/welcomePage');

  static const String name = 'WelcomeRoute';
}

/// generated route for [_i3.LoginPage]
class LoginRoute extends _i12.PageRouteInfo<void> {
  const LoginRoute() : super(name, path: '/login');

  static const String name = 'LoginRoute';
}

/// generated route for [_i4.SignUpPage]
class SignUpRoute extends _i12.PageRouteInfo<void> {
  const SignUpRoute() : super(name, path: '/signUp');

  static const String name = 'SignUpRoute';
}

/// generated route for [_i5.SubmitPasswordOtpPage]
class SubmitPasswordOtpRoute
    extends _i12.PageRouteInfo<SubmitPasswordOtpRouteArgs> {
  SubmitPasswordOtpRoute({_i33.Key? key, required String email})
      : super(name,
            path: '/submitPasswordOtp',
            args: SubmitPasswordOtpRouteArgs(key: key, email: email));

  static const String name = 'SubmitPasswordOtpRoute';
}

class SubmitPasswordOtpRouteArgs {
  const SubmitPasswordOtpRouteArgs({this.key, required this.email});

  final _i33.Key? key;

  final String email;
}

/// generated route for [_i6.ConfirmEmailPage]
class ConfirmEmailRoute extends _i12.PageRouteInfo<ConfirmEmailRouteArgs> {
  ConfirmEmailRoute(
      {_i33.Key? key, required String email, required String password})
      : super(name,
            path: '/confirmEmail',
            args: ConfirmEmailRouteArgs(
                key: key, email: email, password: password));

  static const String name = 'ConfirmEmailRoute';
}

class ConfirmEmailRouteArgs {
  const ConfirmEmailRouteArgs(
      {this.key, required this.email, required this.password});

  final _i33.Key? key;

  final String email;

  final String password;
}

/// generated route for [_i7.ForgotPasswordPage]
class ForgotPasswordRoute extends _i12.PageRouteInfo<void> {
  const ForgotPasswordRoute() : super(name, path: '/forgotPassword');

  static const String name = 'ForgotPasswordRoute';
}

/// generated route for [_i8.ConfirmPasswordPage]
class ConfirmPasswordRoute
    extends _i12.PageRouteInfo<ConfirmPasswordRouteArgs> {
  ConfirmPasswordRoute({_i33.Key? key, required String email})
      : super(name,
            path: '/confirmPassword',
            args: ConfirmPasswordRouteArgs(key: key, email: email));

  static const String name = 'ConfirmPasswordRoute';
}

class ConfirmPasswordRouteArgs {
  const ConfirmPasswordRouteArgs({this.key, required this.email});

  final _i33.Key? key;

  final String email;
}

/// generated route for [_i9.PasswordChangedPage]
class PasswordChangedRoute extends _i12.PageRouteInfo<void> {
  const PasswordChangedRoute() : super(name, path: '/emailConfirmedPage');

  static const String name = 'PasswordChangedRoute';
}

/// generated route for [_i10.HomePage]
class HomeRoute extends _i12.PageRouteInfo<void> {
  const HomeRoute({List<_i12.PageRouteInfo>? children})
      : super(name, path: '/home', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for [_i11.HomeWrapperPage]
class HomeRouter extends _i12.PageRouteInfo<void> {
  const HomeRouter({List<_i12.PageRouteInfo>? children})
      : super(name, path: 'home', initialChildren: children);

  static const String name = 'HomeRouter';
}

/// generated route for [_i12.EmptyRouterPage]
class ParcelRouter extends _i12.PageRouteInfo<void> {
  const ParcelRouter({List<_i12.PageRouteInfo>? children})
      : super(name, path: 'parcels', initialChildren: children);

  static const String name = 'ParcelRouter';
}

/// generated route for [_i12.EmptyRouterPage]
class ProfileRouter extends _i12.PageRouteInfo<void> {
  const ProfileRouter({List<_i12.PageRouteInfo>? children})
      : super(name, path: 'profile', initialChildren: children);

  static const String name = 'ProfileRouter';
}

/// generated route for [_i12.EmptyRouterPage]
class SettingsRouter extends _i12.PageRouteInfo<void> {
  const SettingsRouter({List<_i12.PageRouteInfo>? children})
      : super(name, path: 'settings', initialChildren: children);

  static const String name = 'SettingsRouter';
}

/// generated route for [_i13.DashboardPage]
class DashboardRoute extends _i12.PageRouteInfo<void> {
  const DashboardRoute() : super(name, path: '');

  static const String name = 'DashboardRoute';
}

/// generated route for [_i14.ChooseDurationPage]
class ChooseDurationRoute extends _i12.PageRouteInfo<void> {
  const ChooseDurationRoute() : super(name, path: 'chooseDuration');

  static const String name = 'ChooseDurationRoute';
}

/// generated route for [_i15.SelectLocationPage]
class SelectLocationRoute extends _i12.PageRouteInfo<SelectLocationRouteArgs> {
  SelectLocationRoute(
      {_i33.Key? key, required _i34.CenterDistrict centerDistrict})
      : super(name,
            path: 'selectLocation',
            args: SelectLocationRouteArgs(
                key: key, centerDistrict: centerDistrict));

  static const String name = 'SelectLocationRoute';
}

class SelectLocationRouteArgs {
  const SelectLocationRouteArgs({this.key, required this.centerDistrict});

  final _i33.Key? key;

  final _i34.CenterDistrict centerDistrict;
}

/// generated route for [_i16.SelectLocationDistrictPage]
class SelectLocationDistrictRoute extends _i12.PageRouteInfo<void> {
  const SelectLocationDistrictRoute()
      : super(name, path: 'selectLocationDistrict');

  static const String name = 'SelectLocationDistrictRoute';
}

/// generated route for [_i17.CustomerToCourierPage]
class CustomerToCourierRoute extends _i12.PageRouteInfo<void> {
  const CustomerToCourierRoute() : super(name, path: 'customerToCourier');

  static const String name = 'CustomerToCourierRoute';
}

/// generated route for [_i18.CustomerToCustomerPage]
class CustomerToCustomerRoute extends _i12.PageRouteInfo<void> {
  const CustomerToCustomerRoute() : super(name, path: 'cutomerToCustomer');

  static const String name = 'CustomerToCustomerRoute';
}

/// generated route for [_i19.SelfStoragePaymentPage]
class SelfStoragePaymentRoute extends _i12.PageRouteInfo<void> {
  const SelfStoragePaymentRoute() : super(name, path: 'selfStoragePayment');

  static const String name = 'SelfStoragePaymentRoute';
}

/// generated route for [_i20.CustomerToCustomerPaymentPage]
class CustomerToCustomerPaymentRoute extends _i12.PageRouteInfo<void> {
  const CustomerToCustomerPaymentRoute()
      : super(name, path: 'customerToCustomerPayment');

  static const String name = 'CustomerToCustomerPaymentRoute';
}

/// generated route for [_i21.CustomerToCourierPaymentPage]
class CustomerToCourierPaymentRoute extends _i12.PageRouteInfo<void> {
  const CustomerToCourierPaymentRoute()
      : super(name, path: 'customerToCourierPayment');

  static const String name = 'CustomerToCourierPaymentRoute';
}

/// generated route for [_i22.ReceiptPage]
class ReceiptRoute extends _i12.PageRouteInfo<ReceiptRouteArgs> {
  ReceiptRoute({_i33.Key? key, required _i35.PaymentData paymentData})
      : super(name,
            path: 'receiptPage',
            args: ReceiptRouteArgs(key: key, paymentData: paymentData));

  static const String name = 'ReceiptRoute';
}

class ReceiptRouteArgs {
  const ReceiptRouteArgs({this.key, required this.paymentData});

  final _i33.Key? key;

  final _i35.PaymentData paymentData;
}

/// generated route for [_i23.ParcelsPage]
class ParcelsRoute extends _i12.PageRouteInfo<void> {
  const ParcelsRoute({List<_i12.PageRouteInfo>? children})
      : super(name, path: '', initialChildren: children);

  static const String name = 'ParcelsRoute';
}

/// generated route for [_i24.SelfParcelDetailsPage]
class SelfParcelDetailsRoute
    extends _i12.PageRouteInfo<SelfParcelDetailsRouteArgs> {
  SelfParcelDetailsRoute({required _i36.SelfStorage selfStorage, _i33.Key? key})
      : super(name,
            path: 'selfDetailsPage',
            args:
                SelfParcelDetailsRouteArgs(selfStorage: selfStorage, key: key));

  static const String name = 'SelfParcelDetailsRoute';
}

class SelfParcelDetailsRouteArgs {
  const SelfParcelDetailsRouteArgs({required this.selfStorage, this.key});

  final _i36.SelfStorage selfStorage;

  final _i33.Key? key;
}

/// generated route for [_i25.CustomerParcelDetailsPage]
class CustomerParcelDetailsRoute
    extends _i12.PageRouteInfo<CustomerParcelDetailsRouteArgs> {
  CustomerParcelDetailsRoute(
      {required _i37.CustomerToCustomer customerToCustomer, _i33.Key? key})
      : super(name,
            path: 'customerDetailsPage',
            args: CustomerParcelDetailsRouteArgs(
                customerToCustomer: customerToCustomer, key: key));

  static const String name = 'CustomerParcelDetailsRoute';
}

class CustomerParcelDetailsRouteArgs {
  const CustomerParcelDetailsRouteArgs(
      {required this.customerToCustomer, this.key});

  final _i37.CustomerToCustomer customerToCustomer;

  final _i33.Key? key;
}

/// generated route for [_i26.CustomerParcelPage]
class CustomerParcelRoute extends _i12.PageRouteInfo<CustomerParcelRouteArgs> {
  CustomerParcelRoute({_i33.Key? key})
      : super(name,
            path: 'customer2Customer', args: CustomerParcelRouteArgs(key: key));

  static const String name = 'CustomerParcelRoute';
}

class CustomerParcelRouteArgs {
  const CustomerParcelRouteArgs({this.key});

  final _i33.Key? key;
}

/// generated route for [_i27.SelfStorageParcelPage]
class SelfStorageParcelRoute
    extends _i12.PageRouteInfo<SelfStorageParcelRouteArgs> {
  SelfStorageParcelRoute({_i33.Key? key})
      : super(name,
            path: 'selfStorage', args: SelfStorageParcelRouteArgs(key: key));

  static const String name = 'SelfStorageParcelRoute';
}

class SelfStorageParcelRouteArgs {
  const SelfStorageParcelRouteArgs({this.key});

  final _i33.Key? key;
}

/// generated route for [_i28.ProfilePage]
class ProfileRoute extends _i12.PageRouteInfo<void> {
  const ProfileRoute() : super(name, path: '');

  static const String name = 'ProfileRoute';
}

/// generated route for [_i29.EditPhotoPage]
class EditPhotoRoute extends _i12.PageRouteInfo<EditPhotoRouteArgs> {
  EditPhotoRoute({_i33.Key? key, required dynamic Function() onUploaded})
      : super(name,
            path: 'profilePhoto',
            args: EditPhotoRouteArgs(key: key, onUploaded: onUploaded));

  static const String name = 'EditPhotoRoute';
}

class EditPhotoRouteArgs {
  const EditPhotoRouteArgs({this.key, required this.onUploaded});

  final _i33.Key? key;

  final dynamic Function() onUploaded;
}

/// generated route for [_i30.SettingsPage]
class SettingsRoute extends _i12.PageRouteInfo<void> {
  const SettingsRoute() : super(name, path: '');

  static const String name = 'SettingsRoute';
}

/// generated route for [_i31.ResetPasswordPage]
class ResetPasswordRoute extends _i12.PageRouteInfo<void> {
  const ResetPasswordRoute() : super(name, path: 'resetPassword');

  static const String name = 'ResetPasswordRoute';
}
