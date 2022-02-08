// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i13;
import 'package:flutter/material.dart' as _i40;
import 'package:smart_parcel/account/presentation/profile_page/edit_photo_page.dart'
    as _i36;
import 'package:smart_parcel/account/presentation/profile_page/profiles_page.dart'
    as _i34;
import 'package:smart_parcel/account/presentation/profile_page/profiles_page_edit.dart'
    as _i35;
import 'package:smart_parcel/account/presentation/reset_password_page/reset_password_page.dart'
    as _i38;
import 'package:smart_parcel/account/presentation/settings_page/settings_page.dart'
    as _i37;
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
import 'package:smart_parcel/common/application/notification_bloc/notification_bloc.dart'
    as _i41;
import 'package:smart_parcel/common/presentation/widgets/home_page.dart'
    as _i11;
import 'package:smart_parcel/common/presentation/widgets/splash_page.dart'
    as _i1;
import 'package:smart_parcel/delivery/domain/models/center.dart' as _i44;
import 'package:smart_parcel/delivery/domain/models/center_district.dart'
    as _i42;
import 'package:smart_parcel/delivery/presentation/choose_size_page.dart'
    as _i23;
import 'package:smart_parcel/delivery/presentation/customer_to_courier_pages/customer_to_courier.dart'
    as _i19;
import 'package:smart_parcel/delivery/presentation/customer_to_customer_pages/customer_to_customer.dart'
    as _i18;
import 'package:smart_parcel/delivery/presentation/dashboard/dashboard.dart'
    as _i14;
import 'package:smart_parcel/delivery/presentation/home_wrapper_page.dart'
    as _i12;
import 'package:smart_parcel/delivery/presentation/notification_page/notification_page.dart'
    as _i10;
import 'package:smart_parcel/delivery/presentation/select_location_pages/select_location_district_page.dart'
    as _i17;
import 'package:smart_parcel/delivery/presentation/select_location_pages/select_location_page.dart'
    as _i16;
import 'package:smart_parcel/delivery/presentation/self_storage_pages/choose_duration_page.dart'
    as _i15;
import 'package:smart_parcel/parcels/domain/models/customer_to_customer.dart'
    as _i47;
import 'package:smart_parcel/parcels/domain/models/cutomer_to_courier.dart'
    as _i48;
import 'package:smart_parcel/parcels/domain/models/self_storage.dart' as _i46;
import 'package:smart_parcel/parcels/presentation/courier_parcel/customer_2_courier_parcel_page.dart'
    as _i33;
import 'package:smart_parcel/parcels/presentation/customer_parcel/customer_2_customer_parcel_page.dart'
    as _i31;
import 'package:smart_parcel/parcels/presentation/parcel_detail_page/courier_parcel_detail_page.dart'
    as _i30;
import 'package:smart_parcel/parcels/presentation/parcel_detail_page/customer_parcel_detail_page.dart'
    as _i29;
import 'package:smart_parcel/parcels/presentation/parcel_detail_page/self_parcel_detail_page.dart'
    as _i28;
import 'package:smart_parcel/parcels/presentation/parcels_page.dart' as _i27;
import 'package:smart_parcel/parcels/presentation/self_storage_parcel/self_storage_parcel.dart'
    as _i32;
import 'package:smart_parcel/payment/domain/models/bank_card.dart' as _i43;
import 'package:smart_parcel/payment/domain/models/booking_data.dart' as _i45;
import 'package:smart_parcel/payment/presentation/choose_card_page/choose_card_page.dart'
    as _i22;
import 'package:smart_parcel/payment/presentation/customer_to_courier_page/customer_to_courier_payment_page.dart'
    as _i25;
import 'package:smart_parcel/payment/presentation/customer_to_customer_page/customer_to_customer_payment_page.dart'
    as _i24;
import 'package:smart_parcel/payment/presentation/payment_page/payment_page.dart'
    as _i21;
import 'package:smart_parcel/payment/presentation/receipt_page/receipt_page.dart'
    as _i26;
import 'package:smart_parcel/payment/presentation/self_storage_page/self_storage_payment_page.dart'
    as _i20;
import 'package:smart_parcel/payment/presentation/stored_cards_page.dart'
    as _i39;

class AppRouter extends _i13.RootStackRouter {
  AppRouter([_i40.GlobalKey<_i40.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i13.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i13.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    WelcomeRoute.name: (routeData) {
      return _i13.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i2.WelcomePage(),
          transitionsBuilder: _i13.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 500,
          opaque: true,
          barrierDismissible: false);
    },
    LoginRoute.name: (routeData) {
      return _i13.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i3.LoginPage());
    },
    SignUpRoute.name: (routeData) {
      return _i13.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i4.SignUpPage());
    },
    SubmitPasswordOtpRoute.name: (routeData) {
      final args = routeData.argsAs<SubmitPasswordOtpRouteArgs>();
      return _i13.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i5.SubmitPasswordOtpPage(key: args.key, email: args.email));
    },
    ConfirmEmailRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ConfirmEmailRouteArgs>(
          orElse: () => ConfirmEmailRouteArgs(
              email: pathParams.getString('email'),
              password: pathParams.getString('password')));
      return _i13.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i6.ConfirmEmailPage(
              key: args.key, email: args.email, password: args.password));
    },
    ForgotPasswordRoute.name: (routeData) {
      return _i13.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i7.ForgotPasswordPage());
    },
    ConfirmPasswordRoute.name: (routeData) {
      final args = routeData.argsAs<ConfirmPasswordRouteArgs>();
      return _i13.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i8.ConfirmPasswordPage(key: args.key, email: args.email));
    },
    PasswordChangedRoute.name: (routeData) {
      return _i13.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i9.PasswordChangedPage());
    },
    NotificationRoute.name: (routeData) {
      final args = routeData.argsAs<NotificationRouteArgs>();
      return _i13.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i10.NotificationPage(
              key: args.key, notificationBloc: args.notificationBloc));
    },
    HomeRoute.name: (routeData) {
      return _i13.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i11.HomePage(),
          transitionsBuilder: _i13.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 500,
          opaque: true,
          barrierDismissible: false);
    },
    HomeRouter.name: (routeData) {
      return _i13.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i12.HomeWrapperPage());
    },
    ParcelRouter.name: (routeData) {
      return _i13.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i13.EmptyRouterPage());
    },
    ProfileRouter.name: (routeData) {
      return _i13.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i13.EmptyRouterPage());
    },
    SettingsRouter.name: (routeData) {
      return _i13.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i13.EmptyRouterPage());
    },
    DashboardRoute.name: (routeData) {
      return _i13.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i14.DashboardPage());
    },
    ChooseDurationRoute.name: (routeData) {
      return _i13.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i15.ChooseDurationPage());
    },
    SelectLocationRoute.name: (routeData) {
      final args = routeData.argsAs<SelectLocationRouteArgs>();
      return _i13.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i16.SelectLocationPage(
              key: args.key, centerDistrict: args.centerDistrict));
    },
    SelectLocationDistrictRoute.name: (routeData) {
      return _i13.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i17.SelectLocationDistrictPage());
    },
    CustomerToCustomerRoute.name: (routeData) {
      return _i13.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i18.CustomerToCustomerPage());
    },
    CustomerToCourierRoute.name: (routeData) {
      return _i13.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i19.CustomerToCourierPage());
    },
    SelfStoragePaymentRoute.name: (routeData) {
      return _i13.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i20.SelfStoragePaymentPage());
    },
    PaymentRoute.name: (routeData) {
      final args = routeData.argsAs<PaymentRouteArgs>();
      return _i13.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i21.PaymentPage(key: args.key, bankCard: args.bankCard));
    },
    ChooseCardRoute.name: (routeData) {
      return _i13.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i22.ChooseCardPage());
    },
    ChooseSizeRoute.name: (routeData) {
      final args = routeData.argsAs<ChooseSizeRouteArgs>();
      return _i13.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i23.ChooseSizePage(
              key: args.key, parcelCenter: args.parcelCenter));
    },
    CustomerToCustomerPaymentRoute.name: (routeData) {
      return _i13.AdaptivePage<dynamic>(
          routeData: routeData,
          child: const _i24.CustomerToCustomerPaymentPage());
    },
    CustomerToCourierPaymentRoute.name: (routeData) {
      return _i13.AdaptivePage<dynamic>(
          routeData: routeData,
          child: const _i25.CustomerToCourierPaymentPage());
    },
    ReceiptRoute.name: (routeData) {
      final args = routeData.argsAs<ReceiptRouteArgs>();
      return _i13.AdaptivePage<dynamic>(
          routeData: routeData,
          child:
              _i26.ReceiptPage(key: args.key, bookingData: args.bookingData));
    },
    ParcelsRoute.name: (routeData) {
      return _i13.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i27.ParcelsPage());
    },
    SelfParcelDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<SelfParcelDetailsRouteArgs>();
      return _i13.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i28.SelfParcelDetailsPage(
              selfStorage: args.selfStorage, key: args.key));
    },
    CustomerParcelDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<CustomerParcelDetailsRouteArgs>();
      return _i13.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i29.CustomerParcelDetailsPage(
              customerToCustomer: args.customerToCustomer, key: args.key));
    },
    CourierParcelDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<CourierParcelDetailsRouteArgs>();
      return _i13.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i30.CourierParcelDetailsPage(
              customerToCourier: args.customerToCourier, key: args.key));
    },
    CustomerParcelRoute.name: (routeData) {
      final args = routeData.argsAs<CustomerParcelRouteArgs>(
          orElse: () => const CustomerParcelRouteArgs());
      return _i13.AdaptivePage<dynamic>(
          routeData: routeData, child: _i31.CustomerParcelPage(key: args.key));
    },
    SelfStorageParcelRoute.name: (routeData) {
      final args = routeData.argsAs<SelfStorageParcelRouteArgs>(
          orElse: () => const SelfStorageParcelRouteArgs());
      return _i13.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i32.SelfStorageParcelPage(key: args.key));
    },
    CourierParcelRoute.name: (routeData) {
      final args = routeData.argsAs<CourierParcelRouteArgs>(
          orElse: () => const CourierParcelRouteArgs());
      return _i13.AdaptivePage<dynamic>(
          routeData: routeData, child: _i33.CourierParcelPage(key: args.key));
    },
    ProfileRoute.name: (routeData) {
      return _i13.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i34.ProfilePage());
    },
    ProfileEditRoute.name: (routeData) {
      final args = routeData.argsAs<ProfileEditRouteArgs>();
      return _i13.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i35.ProfileEditPage(key: args.key, onExit: args.onExit));
    },
    EditPhotoRoute.name: (routeData) {
      final args = routeData.argsAs<EditPhotoRouteArgs>();
      return _i13.AdaptivePage<dynamic>(
          routeData: routeData,
          child:
              _i36.EditPhotoPage(key: args.key, onUploaded: args.onUploaded));
    },
    SettingsRoute.name: (routeData) {
      return _i13.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i37.SettingsPage());
    },
    ResetPasswordRoute.name: (routeData) {
      return _i13.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i38.ResetPasswordPage());
    },
    StoredCardsRoute.name: (routeData) {
      return _i13.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i39.StoredCardsPage());
    }
  };

  @override
  List<_i13.RouteConfig> get routes => [
        _i13.RouteConfig(SplashRoute.name, path: '/'),
        _i13.RouteConfig(WelcomeRoute.name, path: '/welcome'),
        _i13.RouteConfig(LoginRoute.name, path: '/login'),
        _i13.RouteConfig(SignUpRoute.name, path: '/signUp'),
        _i13.RouteConfig(SubmitPasswordOtpRoute.name,
            path: '/submitPasswordOtp'),
        _i13.RouteConfig(ConfirmEmailRoute.name, path: '/confirmEmail'),
        _i13.RouteConfig(ForgotPasswordRoute.name, path: '/forgotPassword'),
        _i13.RouteConfig(SubmitPasswordOtpRoute.name,
            path: '/submitPasswordOtp'),
        _i13.RouteConfig(ConfirmPasswordRoute.name, path: '/confirmPassword'),
        _i13.RouteConfig(PasswordChangedRoute.name,
            path: '/emailConfirmedPage'),
        _i13.RouteConfig(NotificationRoute.name, path: '/notifications'),
        _i13.RouteConfig(HomeRoute.name, path: '/home', children: [
          _i13.RouteConfig(HomeRouter.name,
              path: 'home',
              parent: HomeRoute.name,
              children: [
                _i13.RouteConfig(DashboardRoute.name,
                    path: '', parent: HomeRouter.name),
                _i13.RouteConfig(ChooseDurationRoute.name,
                    path: 'chooseDuration', parent: HomeRouter.name),
                _i13.RouteConfig(SelectLocationRoute.name,
                    path: 'selectLocation', parent: HomeRouter.name),
                _i13.RouteConfig(SelectLocationDistrictRoute.name,
                    path: 'selectLocationDistrict', parent: HomeRouter.name),
                _i13.RouteConfig(CustomerToCustomerRoute.name,
                    path: 'cutomerToCustomer', parent: HomeRouter.name),
                _i13.RouteConfig(CustomerToCourierRoute.name,
                    path: 'customerToCourier', parent: HomeRouter.name),
                _i13.RouteConfig(SelfStoragePaymentRoute.name,
                    path: 'selfStoragePayment', parent: HomeRouter.name),
                _i13.RouteConfig(PaymentRoute.name,
                    path: 'paymentPage', parent: HomeRouter.name),
                _i13.RouteConfig(ChooseCardRoute.name,
                    path: 'chooseCardPage', parent: HomeRouter.name),
                _i13.RouteConfig(ChooseSizeRoute.name,
                    path: 'chooseSizePage', parent: HomeRouter.name),
                _i13.RouteConfig(CustomerToCourierRoute.name,
                    path: 'customerToCourier', parent: HomeRouter.name),
                _i13.RouteConfig(CustomerToCustomerPaymentRoute.name,
                    path: 'customerToCustomerPayment', parent: HomeRouter.name),
                _i13.RouteConfig(CustomerToCourierPaymentRoute.name,
                    path: 'customerToCourierPayment', parent: HomeRouter.name),
                _i13.RouteConfig(ReceiptRoute.name,
                    path: 'receiptPage', parent: HomeRouter.name)
              ]),
          _i13.RouteConfig(ParcelRouter.name,
              path: 'parcels',
              parent: HomeRoute.name,
              children: [
                _i13.RouteConfig(ParcelsRoute.name,
                    path: '',
                    parent: ParcelRouter.name,
                    children: [
                      _i13.RouteConfig(CustomerParcelRoute.name,
                          path: 'customer2Customer', parent: ParcelsRoute.name),
                      _i13.RouteConfig(SelfStorageParcelRoute.name,
                          path: 'selfStorage', parent: ParcelsRoute.name),
                      _i13.RouteConfig(CourierParcelRoute.name,
                          path: 'customer2Courier', parent: ParcelsRoute.name)
                    ]),
                _i13.RouteConfig(SelfParcelDetailsRoute.name,
                    path: 'selfDetailsPage', parent: ParcelRouter.name),
                _i13.RouteConfig(CustomerParcelDetailsRoute.name,
                    path: 'customerDetailsPage', parent: ParcelRouter.name),
                _i13.RouteConfig(CourierParcelDetailsRoute.name,
                    path: 'courierDetailsPage', parent: ParcelRouter.name)
              ]),
          _i13.RouteConfig(ProfileRouter.name,
              path: 'profile',
              parent: HomeRoute.name,
              children: [
                _i13.RouteConfig(ProfileRoute.name,
                    path: '', parent: ProfileRouter.name),
                _i13.RouteConfig(ProfileEditRoute.name,
                    path: 'editProfile', parent: ProfileRouter.name),
                _i13.RouteConfig(EditPhotoRoute.name,
                    path: 'profilePhoto', parent: ProfileRouter.name)
              ]),
          _i13.RouteConfig(SettingsRouter.name,
              path: 'settings',
              parent: HomeRoute.name,
              children: [
                _i13.RouteConfig(SettingsRoute.name,
                    path: '', parent: SettingsRouter.name),
                _i13.RouteConfig(ResetPasswordRoute.name,
                    path: 'resetPassword', parent: SettingsRouter.name),
                _i13.RouteConfig(StoredCardsRoute.name,
                    path: 'storedCards', parent: SettingsRouter.name)
              ])
        ])
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i13.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.WelcomePage]
class WelcomeRoute extends _i13.PageRouteInfo<void> {
  const WelcomeRoute() : super(WelcomeRoute.name, path: '/welcome');

  static const String name = 'WelcomeRoute';
}

/// generated route for
/// [_i3.LoginPage]
class LoginRoute extends _i13.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/login');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i4.SignUpPage]
class SignUpRoute extends _i13.PageRouteInfo<void> {
  const SignUpRoute() : super(SignUpRoute.name, path: '/signUp');

  static const String name = 'SignUpRoute';
}

/// generated route for
/// [_i5.SubmitPasswordOtpPage]
class SubmitPasswordOtpRoute
    extends _i13.PageRouteInfo<SubmitPasswordOtpRouteArgs> {
  SubmitPasswordOtpRoute({_i40.Key? key, required String email})
      : super(SubmitPasswordOtpRoute.name,
            path: '/submitPasswordOtp',
            args: SubmitPasswordOtpRouteArgs(key: key, email: email));

  static const String name = 'SubmitPasswordOtpRoute';
}

class SubmitPasswordOtpRouteArgs {
  const SubmitPasswordOtpRouteArgs({this.key, required this.email});

  final _i40.Key? key;

  final String email;

  @override
  String toString() {
    return 'SubmitPasswordOtpRouteArgs{key: $key, email: $email}';
  }
}

/// generated route for
/// [_i6.ConfirmEmailPage]
class ConfirmEmailRoute extends _i13.PageRouteInfo<ConfirmEmailRouteArgs> {
  ConfirmEmailRoute(
      {_i40.Key? key, required String email, required String password})
      : super(ConfirmEmailRoute.name,
            path: '/confirmEmail',
            args: ConfirmEmailRouteArgs(
                key: key, email: email, password: password),
            rawPathParams: {'email': email, 'password': password});

  static const String name = 'ConfirmEmailRoute';
}

class ConfirmEmailRouteArgs {
  const ConfirmEmailRouteArgs(
      {this.key, required this.email, required this.password});

  final _i40.Key? key;

  final String email;

  final String password;

  @override
  String toString() {
    return 'ConfirmEmailRouteArgs{key: $key, email: $email, password: $password}';
  }
}

/// generated route for
/// [_i7.ForgotPasswordPage]
class ForgotPasswordRoute extends _i13.PageRouteInfo<void> {
  const ForgotPasswordRoute()
      : super(ForgotPasswordRoute.name, path: '/forgotPassword');

  static const String name = 'ForgotPasswordRoute';
}

/// generated route for
/// [_i8.ConfirmPasswordPage]
class ConfirmPasswordRoute
    extends _i13.PageRouteInfo<ConfirmPasswordRouteArgs> {
  ConfirmPasswordRoute({_i40.Key? key, required String email})
      : super(ConfirmPasswordRoute.name,
            path: '/confirmPassword',
            args: ConfirmPasswordRouteArgs(key: key, email: email));

  static const String name = 'ConfirmPasswordRoute';
}

class ConfirmPasswordRouteArgs {
  const ConfirmPasswordRouteArgs({this.key, required this.email});

  final _i40.Key? key;

  final String email;

  @override
  String toString() {
    return 'ConfirmPasswordRouteArgs{key: $key, email: $email}';
  }
}

/// generated route for
/// [_i9.PasswordChangedPage]
class PasswordChangedRoute extends _i13.PageRouteInfo<void> {
  const PasswordChangedRoute()
      : super(PasswordChangedRoute.name, path: '/emailConfirmedPage');

  static const String name = 'PasswordChangedRoute';
}

/// generated route for
/// [_i10.NotificationPage]
class NotificationRoute extends _i13.PageRouteInfo<NotificationRouteArgs> {
  NotificationRoute(
      {_i40.Key? key, required _i41.NotificationBloc notificationBloc})
      : super(NotificationRoute.name,
            path: '/notifications',
            args: NotificationRouteArgs(
                key: key, notificationBloc: notificationBloc));

  static const String name = 'NotificationRoute';
}

class NotificationRouteArgs {
  const NotificationRouteArgs({this.key, required this.notificationBloc});

  final _i40.Key? key;

  final _i41.NotificationBloc notificationBloc;

  @override
  String toString() {
    return 'NotificationRouteArgs{key: $key, notificationBloc: $notificationBloc}';
  }
}

/// generated route for
/// [_i11.HomePage]
class HomeRoute extends _i13.PageRouteInfo<void> {
  const HomeRoute({List<_i13.PageRouteInfo>? children})
      : super(HomeRoute.name, path: '/home', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i12.HomeWrapperPage]
class HomeRouter extends _i13.PageRouteInfo<void> {
  const HomeRouter({List<_i13.PageRouteInfo>? children})
      : super(HomeRouter.name, path: 'home', initialChildren: children);

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i13.EmptyRouterPage]
class ParcelRouter extends _i13.PageRouteInfo<void> {
  const ParcelRouter({List<_i13.PageRouteInfo>? children})
      : super(ParcelRouter.name, path: 'parcels', initialChildren: children);

  static const String name = 'ParcelRouter';
}

/// generated route for
/// [_i13.EmptyRouterPage]
class ProfileRouter extends _i13.PageRouteInfo<void> {
  const ProfileRouter({List<_i13.PageRouteInfo>? children})
      : super(ProfileRouter.name, path: 'profile', initialChildren: children);

  static const String name = 'ProfileRouter';
}

/// generated route for
/// [_i13.EmptyRouterPage]
class SettingsRouter extends _i13.PageRouteInfo<void> {
  const SettingsRouter({List<_i13.PageRouteInfo>? children})
      : super(SettingsRouter.name, path: 'settings', initialChildren: children);

  static const String name = 'SettingsRouter';
}

/// generated route for
/// [_i14.DashboardPage]
class DashboardRoute extends _i13.PageRouteInfo<void> {
  const DashboardRoute() : super(DashboardRoute.name, path: '');

  static const String name = 'DashboardRoute';
}

/// generated route for
/// [_i15.ChooseDurationPage]
class ChooseDurationRoute extends _i13.PageRouteInfo<void> {
  const ChooseDurationRoute()
      : super(ChooseDurationRoute.name, path: 'chooseDuration');

  static const String name = 'ChooseDurationRoute';
}

/// generated route for
/// [_i16.SelectLocationPage]
class SelectLocationRoute extends _i13.PageRouteInfo<SelectLocationRouteArgs> {
  SelectLocationRoute(
      {_i40.Key? key, required _i42.CenterDistrict centerDistrict})
      : super(SelectLocationRoute.name,
            path: 'selectLocation',
            args: SelectLocationRouteArgs(
                key: key, centerDistrict: centerDistrict));

  static const String name = 'SelectLocationRoute';
}

class SelectLocationRouteArgs {
  const SelectLocationRouteArgs({this.key, required this.centerDistrict});

  final _i40.Key? key;

  final _i42.CenterDistrict centerDistrict;

  @override
  String toString() {
    return 'SelectLocationRouteArgs{key: $key, centerDistrict: $centerDistrict}';
  }
}

/// generated route for
/// [_i17.SelectLocationDistrictPage]
class SelectLocationDistrictRoute extends _i13.PageRouteInfo<void> {
  const SelectLocationDistrictRoute()
      : super(SelectLocationDistrictRoute.name, path: 'selectLocationDistrict');

  static const String name = 'SelectLocationDistrictRoute';
}

/// generated route for
/// [_i18.CustomerToCustomerPage]
class CustomerToCustomerRoute extends _i13.PageRouteInfo<void> {
  const CustomerToCustomerRoute()
      : super(CustomerToCustomerRoute.name, path: 'cutomerToCustomer');

  static const String name = 'CustomerToCustomerRoute';
}

/// generated route for
/// [_i19.CustomerToCourierPage]
class CustomerToCourierRoute extends _i13.PageRouteInfo<void> {
  const CustomerToCourierRoute()
      : super(CustomerToCourierRoute.name, path: 'customerToCourier');

  static const String name = 'CustomerToCourierRoute';
}

/// generated route for
/// [_i20.SelfStoragePaymentPage]
class SelfStoragePaymentRoute extends _i13.PageRouteInfo<void> {
  const SelfStoragePaymentRoute()
      : super(SelfStoragePaymentRoute.name, path: 'selfStoragePayment');

  static const String name = 'SelfStoragePaymentRoute';
}

/// generated route for
/// [_i21.PaymentPage]
class PaymentRoute extends _i13.PageRouteInfo<PaymentRouteArgs> {
  PaymentRoute({_i40.Key? key, required _i43.BankCard bankCard})
      : super(PaymentRoute.name,
            path: 'paymentPage',
            args: PaymentRouteArgs(key: key, bankCard: bankCard));

  static const String name = 'PaymentRoute';
}

class PaymentRouteArgs {
  const PaymentRouteArgs({this.key, required this.bankCard});

  final _i40.Key? key;

  final _i43.BankCard bankCard;

  @override
  String toString() {
    return 'PaymentRouteArgs{key: $key, bankCard: $bankCard}';
  }
}

/// generated route for
/// [_i22.ChooseCardPage]
class ChooseCardRoute extends _i13.PageRouteInfo<void> {
  const ChooseCardRoute() : super(ChooseCardRoute.name, path: 'chooseCardPage');

  static const String name = 'ChooseCardRoute';
}

/// generated route for
/// [_i23.ChooseSizePage]
class ChooseSizeRoute extends _i13.PageRouteInfo<ChooseSizeRouteArgs> {
  ChooseSizeRoute({_i40.Key? key, required _i44.ParcelCenter parcelCenter})
      : super(ChooseSizeRoute.name,
            path: 'chooseSizePage',
            args: ChooseSizeRouteArgs(key: key, parcelCenter: parcelCenter));

  static const String name = 'ChooseSizeRoute';
}

class ChooseSizeRouteArgs {
  const ChooseSizeRouteArgs({this.key, required this.parcelCenter});

  final _i40.Key? key;

  final _i44.ParcelCenter parcelCenter;

  @override
  String toString() {
    return 'ChooseSizeRouteArgs{key: $key, parcelCenter: $parcelCenter}';
  }
}

/// generated route for
/// [_i24.CustomerToCustomerPaymentPage]
class CustomerToCustomerPaymentRoute extends _i13.PageRouteInfo<void> {
  const CustomerToCustomerPaymentRoute()
      : super(CustomerToCustomerPaymentRoute.name,
            path: 'customerToCustomerPayment');

  static const String name = 'CustomerToCustomerPaymentRoute';
}

/// generated route for
/// [_i25.CustomerToCourierPaymentPage]
class CustomerToCourierPaymentRoute extends _i13.PageRouteInfo<void> {
  const CustomerToCourierPaymentRoute()
      : super(CustomerToCourierPaymentRoute.name,
            path: 'customerToCourierPayment');

  static const String name = 'CustomerToCourierPaymentRoute';
}

/// generated route for
/// [_i26.ReceiptPage]
class ReceiptRoute extends _i13.PageRouteInfo<ReceiptRouteArgs> {
  ReceiptRoute({_i40.Key? key, required _i45.BookingData bookingData})
      : super(ReceiptRoute.name,
            path: 'receiptPage',
            args: ReceiptRouteArgs(key: key, bookingData: bookingData));

  static const String name = 'ReceiptRoute';
}

class ReceiptRouteArgs {
  const ReceiptRouteArgs({this.key, required this.bookingData});

  final _i40.Key? key;

  final _i45.BookingData bookingData;

  @override
  String toString() {
    return 'ReceiptRouteArgs{key: $key, bookingData: $bookingData}';
  }
}

/// generated route for
/// [_i27.ParcelsPage]
class ParcelsRoute extends _i13.PageRouteInfo<void> {
  const ParcelsRoute({List<_i13.PageRouteInfo>? children})
      : super(ParcelsRoute.name, path: '', initialChildren: children);

  static const String name = 'ParcelsRoute';
}

/// generated route for
/// [_i28.SelfParcelDetailsPage]
class SelfParcelDetailsRoute
    extends _i13.PageRouteInfo<SelfParcelDetailsRouteArgs> {
  SelfParcelDetailsRoute({required _i46.SelfStorage selfStorage, _i40.Key? key})
      : super(SelfParcelDetailsRoute.name,
            path: 'selfDetailsPage',
            args:
                SelfParcelDetailsRouteArgs(selfStorage: selfStorage, key: key));

  static const String name = 'SelfParcelDetailsRoute';
}

class SelfParcelDetailsRouteArgs {
  const SelfParcelDetailsRouteArgs({required this.selfStorage, this.key});

  final _i46.SelfStorage selfStorage;

  final _i40.Key? key;

  @override
  String toString() {
    return 'SelfParcelDetailsRouteArgs{selfStorage: $selfStorage, key: $key}';
  }
}

/// generated route for
/// [_i29.CustomerParcelDetailsPage]
class CustomerParcelDetailsRoute
    extends _i13.PageRouteInfo<CustomerParcelDetailsRouteArgs> {
  CustomerParcelDetailsRoute(
      {required _i47.CustomerToCustomer customerToCustomer, _i40.Key? key})
      : super(CustomerParcelDetailsRoute.name,
            path: 'customerDetailsPage',
            args: CustomerParcelDetailsRouteArgs(
                customerToCustomer: customerToCustomer, key: key));

  static const String name = 'CustomerParcelDetailsRoute';
}

class CustomerParcelDetailsRouteArgs {
  const CustomerParcelDetailsRouteArgs(
      {required this.customerToCustomer, this.key});

  final _i47.CustomerToCustomer customerToCustomer;

  final _i40.Key? key;

  @override
  String toString() {
    return 'CustomerParcelDetailsRouteArgs{customerToCustomer: $customerToCustomer, key: $key}';
  }
}

/// generated route for
/// [_i30.CourierParcelDetailsPage]
class CourierParcelDetailsRoute
    extends _i13.PageRouteInfo<CourierParcelDetailsRouteArgs> {
  CourierParcelDetailsRoute(
      {required _i48.CustomerToCourier customerToCourier, _i40.Key? key})
      : super(CourierParcelDetailsRoute.name,
            path: 'courierDetailsPage',
            args: CourierParcelDetailsRouteArgs(
                customerToCourier: customerToCourier, key: key));

  static const String name = 'CourierParcelDetailsRoute';
}

class CourierParcelDetailsRouteArgs {
  const CourierParcelDetailsRouteArgs(
      {required this.customerToCourier, this.key});

  final _i48.CustomerToCourier customerToCourier;

  final _i40.Key? key;

  @override
  String toString() {
    return 'CourierParcelDetailsRouteArgs{customerToCourier: $customerToCourier, key: $key}';
  }
}

/// generated route for
/// [_i31.CustomerParcelPage]
class CustomerParcelRoute extends _i13.PageRouteInfo<CustomerParcelRouteArgs> {
  CustomerParcelRoute({_i40.Key? key})
      : super(CustomerParcelRoute.name,
            path: 'customer2Customer', args: CustomerParcelRouteArgs(key: key));

  static const String name = 'CustomerParcelRoute';
}

class CustomerParcelRouteArgs {
  const CustomerParcelRouteArgs({this.key});

  final _i40.Key? key;

  @override
  String toString() {
    return 'CustomerParcelRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i32.SelfStorageParcelPage]
class SelfStorageParcelRoute
    extends _i13.PageRouteInfo<SelfStorageParcelRouteArgs> {
  SelfStorageParcelRoute({_i40.Key? key})
      : super(SelfStorageParcelRoute.name,
            path: 'selfStorage', args: SelfStorageParcelRouteArgs(key: key));

  static const String name = 'SelfStorageParcelRoute';
}

class SelfStorageParcelRouteArgs {
  const SelfStorageParcelRouteArgs({this.key});

  final _i40.Key? key;

  @override
  String toString() {
    return 'SelfStorageParcelRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i33.CourierParcelPage]
class CourierParcelRoute extends _i13.PageRouteInfo<CourierParcelRouteArgs> {
  CourierParcelRoute({_i40.Key? key})
      : super(CourierParcelRoute.name,
            path: 'customer2Courier', args: CourierParcelRouteArgs(key: key));

  static const String name = 'CourierParcelRoute';
}

class CourierParcelRouteArgs {
  const CourierParcelRouteArgs({this.key});

  final _i40.Key? key;

  @override
  String toString() {
    return 'CourierParcelRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i34.ProfilePage]
class ProfileRoute extends _i13.PageRouteInfo<void> {
  const ProfileRoute() : super(ProfileRoute.name, path: '');

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i35.ProfileEditPage]
class ProfileEditRoute extends _i13.PageRouteInfo<ProfileEditRouteArgs> {
  ProfileEditRoute({_i40.Key? key, required dynamic Function() onExit})
      : super(ProfileEditRoute.name,
            path: 'editProfile',
            args: ProfileEditRouteArgs(key: key, onExit: onExit));

  static const String name = 'ProfileEditRoute';
}

class ProfileEditRouteArgs {
  const ProfileEditRouteArgs({this.key, required this.onExit});

  final _i40.Key? key;

  final dynamic Function() onExit;

  @override
  String toString() {
    return 'ProfileEditRouteArgs{key: $key, onExit: $onExit}';
  }
}

/// generated route for
/// [_i36.EditPhotoPage]
class EditPhotoRoute extends _i13.PageRouteInfo<EditPhotoRouteArgs> {
  EditPhotoRoute({_i40.Key? key, required dynamic Function() onUploaded})
      : super(EditPhotoRoute.name,
            path: 'profilePhoto',
            args: EditPhotoRouteArgs(key: key, onUploaded: onUploaded));

  static const String name = 'EditPhotoRoute';
}

class EditPhotoRouteArgs {
  const EditPhotoRouteArgs({this.key, required this.onUploaded});

  final _i40.Key? key;

  final dynamic Function() onUploaded;

  @override
  String toString() {
    return 'EditPhotoRouteArgs{key: $key, onUploaded: $onUploaded}';
  }
}

/// generated route for
/// [_i37.SettingsPage]
class SettingsRoute extends _i13.PageRouteInfo<void> {
  const SettingsRoute() : super(SettingsRoute.name, path: '');

  static const String name = 'SettingsRoute';
}

/// generated route for
/// [_i38.ResetPasswordPage]
class ResetPasswordRoute extends _i13.PageRouteInfo<void> {
  const ResetPasswordRoute()
      : super(ResetPasswordRoute.name, path: 'resetPassword');

  static const String name = 'ResetPasswordRoute';
}

/// generated route for
/// [_i39.StoredCardsPage]
class StoredCardsRoute extends _i13.PageRouteInfo<void> {
  const StoredCardsRoute() : super(StoredCardsRoute.name, path: 'storedCards');

  static const String name = 'StoredCardsRoute';
}
