import 'package:auto_route/auto_route.dart';
import 'package:smart_parcel/account/presentation/profile_page/edit_photo_page.dart';
import 'package:smart_parcel/account/presentation/profile_page/profiles_page.dart';
import 'package:smart_parcel/account/presentation/reset_password_page/reset_password_page.dart';
import 'package:smart_parcel/account/presentation/settings_page/settings_page.dart';
import 'package:smart_parcel/auth/presentation/confirm_email/confirm_email.dart';
import 'package:smart_parcel/auth/presentation/confirm_email/password_changed_page.dart';
import 'package:smart_parcel/auth/presentation/confirm_email/submit_password_otp_page.dart';
import 'package:smart_parcel/auth/presentation/confirm_password_page/confirm_password_page.dart';
import 'package:smart_parcel/auth/presentation/forgot_password_page/forgot_password_page.dart';
import 'package:smart_parcel/auth/presentation/login_page/login_page.dart';
import 'package:smart_parcel/auth/presentation/sign_up_page/sign_up_page.dart';
import 'package:smart_parcel/auth/presentation/welcome_page/welcome_page.dart';
import 'package:smart_parcel/common/presentation/widgets/home_page.dart';
import 'package:smart_parcel/common/presentation/widgets/root_page.dart';
import 'package:smart_parcel/common/presentation/widgets/splash_page.dart';
import 'package:smart_parcel/delivery/presentation/customer_to_courier_pages/customer_to_courier.dart';
import 'package:smart_parcel/delivery/presentation/customer_to_customer_pages/customer_to_customer.dart';
import 'package:smart_parcel/delivery/presentation/dashboard/dashboard.dart';
import 'package:smart_parcel/delivery/presentation/home_wrapper_page.dart';
import 'package:smart_parcel/delivery/presentation/notification_page/notification_page.dart';
import 'package:smart_parcel/delivery/presentation/select_location_pages/select_location_district_page.dart';
import 'package:smart_parcel/delivery/presentation/select_location_pages/select_location_page.dart';
import 'package:smart_parcel/delivery/presentation/self_storage_pages/choose_duration_page.dart';
import 'package:smart_parcel/parcels/presentation/courier_parcel/customer_2_courier_parcel_page.dart';
import 'package:smart_parcel/parcels/presentation/customer_parcel/customer_2_customer_parcel_page.dart';
import 'package:smart_parcel/parcels/presentation/parcel_detail_page/courier_parcel_detail_page.dart';
import 'package:smart_parcel/parcels/presentation/parcel_detail_page/customer_parcel_detail_page.dart';
import 'package:smart_parcel/parcels/presentation/parcel_detail_page/self_parcel_detail_page.dart';
import 'package:smart_parcel/parcels/presentation/parcels_page.dart';
import 'package:smart_parcel/parcels/presentation/self_storage_parcel/self_storage_parcel.dart';
import 'package:smart_parcel/payment/presentation/customer_to_courier_page/customer_to_courier_payment_page.dart';
import 'package:smart_parcel/payment/presentation/customer_to_customer_page/customer_to_customer_payment_page.dart';
import 'package:smart_parcel/payment/presentation/receipt_page/receipt_page.dart';
import 'package:smart_parcel/payment/presentation/self_storage_page/self_storage_payment_page.dart';

const homePageChildren = [
  AutoRoute(
    path: 'home',
    name: 'homeRouter',
    page: HomeWrapperPage,
    children: [
      AutoRoute(path: '', page: DashboardPage),
      AutoRoute(path: 'chooseDuration', page: ChooseDurationPage),
      AutoRoute(path: 'selectLocation', page: SelectLocationPage),
      AutoRoute(
        path: 'selectLocationDistrict',
        page: SelectLocationDistrictPage,
      ),
      AutoRoute(path: 'customerToCourier', page: CustomerToCourierPage),
      AutoRoute(path: 'cutomerToCustomer', page: CustomerToCustomerPage),
      AutoRoute(path: 'selfStoragePayment', page: SelfStoragePaymentPage),
      AutoRoute(path: 'customerToCourier', page: CustomerToCourierPage),
      AutoRoute(
        path: 'customerToCustomerPayment',
        page: CustomerToCustomerPaymentPage,
      ),
      AutoRoute(
        path: 'customerToCourierPayment',
        page: CustomerToCourierPaymentPage,
      ),
      AutoRoute(path: 'receiptPage', page: ReceiptPage),
    ],
  ),
  AutoRoute(
      path: 'parcels',
      name: 'parcelRouter',
      page: EmptyRouterPage,
      children: [
        AutoRoute(path: '', page: ParcelsPage, children: [
          AutoRoute(path: 'customer2Customer', page: CustomerParcelPage),
          AutoRoute(path: 'selfStorage', page: SelfStorageParcelPage),
          AutoRoute(path: 'customer2Courier', page: CourierParcelPage),
        ]),
        AutoRoute(path: 'selfDetailsPage', page: SelfParcelDetailsPage),
        AutoRoute(path: 'customerDetailsPage', page: CustomerParcelDetailsPage),
        AutoRoute(path: 'courierDetailsPage', page: CourierParcelDetailsPage),
      ]),
  AutoRoute(
    path: 'profile',
    name: 'profileRouter',
    page: EmptyRouterPage,
    children: [
      AutoRoute(path: '', page: ProfilePage),
      AutoRoute(path: 'profilePhoto', page: EditPhotoPage),
    ],
  ),
  AutoRoute(
    path: 'settings',
    name: 'settingsRouter',
    page: EmptyRouterPage,
    children: [
      AutoRoute(path: '', page: SettingsPage),
      AutoRoute(path: 'resetPassword', page: ResetPasswordPage),
    ],
  ),
];

const appRoutes = [
  AutoRoute(page: SplashPage, path: 'splashPage', initial: true),
  CustomRoute(
    page: WelcomePage,
    path: 'welcome',
    transitionsBuilder: TransitionsBuilders.fadeIn,
    durationInMilliseconds: 500,
  ),
  AutoRoute(page: LoginPage, path: 'login'),
  AutoRoute(page: SignUpPage, path: 'signUp'),
  AutoRoute(page: SubmitPasswordOtpPage, path: 'submitPasswordOtp'),
  AutoRoute(page: ConfirmEmailPage, path: 'confirmEmail'),
  AutoRoute(page: ForgotPasswordPage, path: 'forgotPassword'),
  AutoRoute(page: SubmitPasswordOtpPage, path: 'submitPasswordOtp'),
  AutoRoute(page: ConfirmPasswordPage, path: 'confirmPassword'),
  AutoRoute(page: PasswordChangedPage, path: 'emailConfirmedPage'),
  AutoRoute(page: NotificationPage, path: 'notifications'),
  CustomRoute(
    page: HomePage,
    path: 'home',
    children: homePageChildren,
    transitionsBuilder: TransitionsBuilders.fadeIn,
    durationInMilliseconds: 500,
  ),
];

const routes = [
  AutoRoute(page: RootPage, path: '/', children: appRoutes),
];

@AdaptiveAutoRouter(
  routes: routes,
  replaceInRouteName: 'Page,Route',
)
class $AppRouter {}
