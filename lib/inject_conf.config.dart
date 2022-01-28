// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:chopper/chopper.dart' as _i32;
import 'package:connectivity/connectivity.dart' as _i5;
import 'package:flutter_paystack/flutter_paystack.dart' as _i10;
import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i13;

import 'account/application/account_bloc/account_bloc.dart' as _i77;
import 'account/domain/repositories/account_repository.dart' as _i46;
import 'account/domain/usecases/account_usecases.dart' as _i67;
import 'account/domain/usecases/edit_user_usecase.dart' as _i53;
import 'account/domain/usecases/open_support_usecase.dart' as _i9;
import 'account/domain/usecases/reset_password_usecase.dart' as _i65;
import 'account/domain/usecases/select_image_usecase.dart' as _i12;
import 'account/domain/usecases/upload_photo_usecase.dart' as _i66;
import 'auth/application/bloc/sign_in_bloc/signin_bloc.dart' as _i74;
import 'auth/application/bloc/sign_up_bloc/signup_bloc.dart' as _i75;
import 'auth/domain/interface/auth_storage_interface.dart' as _i20;
import 'auth/domain/repositories/sign_in_repository.dart' as _i39;
import 'auth/domain/repositories/sign_up_repository.dart' as _i41;
import 'auth/domain/usecases/auth_usecases.dart' as _i68;
import 'auth/domain/usecases/confirm_password_usecase.dart' as _i51;
import 'auth/domain/usecases/forgot_password_usecase.dart' as _i54;
import 'auth/domain/usecases/request_otp_usecase.dart' as _i64;
import 'auth/domain/usecases/sign_in_usecase.dart' as _i40;
import 'auth/domain/usecases/sign_up_usecase.dart' as _i42;
import 'auth/domain/usecases/start_countdown_usecase.dart' as _i18;
import 'auth/domain/usecases/submit_otp_usecase.dart' as _i43;
import 'auth/domain/usecases/submit_password_otp_usecase.dart' as _i44;
import 'auth/infrastructure/services/auth_storage_service.dart' as _i21;
import 'auth/infrastructure/services/object_auth_storage_service.dart' as _i22;
import 'common/application/auth_bloc/auth_bloc.dart' as _i78;
import 'common/application/notification_bloc/notification_bloc.dart' as _i71;
import 'common/application/user_bloc/user_bloc.dart' as _i76;
import 'common/domain/interface/common_storage_interface.dart' as _i25;
import 'common/domain/repositories/auth_repository.dart' as _i47;
import 'common/domain/repositories/user_repository.dart' as _i45;
import 'common/domain/usecases/authenticate_usecase.dart' as _i48;
import 'common/domain/usecases/base_usecases.dart' as _i23;
import 'common/domain/usecases/check_authenticate_usecase.dart' as _i50;
import 'common/domain/usecases/common_usecases.dart' as _i69;
import 'common/domain/usecases/get_stored_user_stream_usecase.dart' as _i56;
import 'common/domain/usecases/get_stored_user_usecase.dart' as _i57;
import 'common/domain/usecases/logout_usecase.dart' as _i58;
import 'common/domain/usecases/populate_textforms_usecase.dart' as _i11;
import 'common/domain/usecases/show_alert_usecase.dart' as _i14;
import 'common/domain/usecases/show_error_usecase.dart' as _i15;
import 'common/domain/usecases/show_full_screen_alert.dart' as _i24;
import 'common/domain/usecases/show_options_usecase.dart' as _i16;
import 'common/domain/usecases/show_prompt_usecase.dart' as _i17;
import 'common/infrastructure/chopper/authenticator/jwt_authenticator.dart'
    as _i27;
import 'common/infrastructure/chopper/interceptors/auth_interceptor.dart'
    as _i19;
import 'common/infrastructure/chopper/interceptors/connectivity_interceptor.dart'
    as _i6;
import 'common/infrastructure/chopper/interceptors/error_interceptor.dart'
    as _i7;
import 'common/infrastructure/chopper/interceptors/paystack_interceptor.dart'
    as _i30;
import 'common/infrastructure/chopper/interceptors/places_interceptor.dart'
    as _i31;
import 'common/infrastructure/register_module.dart' as _i79;
import 'common/infrastructure/services/common_storage_service.dart' as _i26;
import 'delivery/application/delivery_bloc/delivery_bloc.dart' as _i70;
import 'delivery/domain/repositories/delivery_repository.dart' as _i33;
import 'delivery/domain/usecases/choose_duration_usecase.dart' as _i3;
import 'delivery/domain/usecases/delivery_usecases.dart' as _i52;
import 'delivery/domain/usecases/finish_transaction_usecase.dart' as _i8;
import 'delivery/domain/usecases/get_location_districts_usecase.dart' as _i34;
import 'delivery/domain/usecases/proceed_to_booking_usecase.dart' as _i37;
import 'delivery/domain/usecases/search_usecase.dart' as _i38;
import 'parcels/application/parcels_bloc/parcel_bloc.dart' as _i72;
import 'parcels/domain/repositories/parcel_repository.dart' as _i35;
import 'parcels/domain/usecases/get_history_usecase.dart' as _i55;
import 'parcels/domain/usecases/parcel_usecases.dart' as _i61;
import 'payment/application/payment_bloc/payment_bloc.dart' as _i73;
import 'payment/domain/interface/payment_interface.dart' as _i28;
import 'payment/domain/repositories/payment_repository.dart' as _i36;
import 'payment/domain/usecases/charge_auth_usecase.dart' as _i49;
import 'payment/domain/usecases/make_payment_usecase.dart' as _i59;
import 'payment/domain/usecases/open_map_usecase.dart' as _i60;
import 'payment/domain/usecases/pay_with_method_usecase.dart' as _i62;
import 'payment/domain/usecases/payment_usecases.dart' as _i63;
import 'payment/infrastructure/services/payment_service.dart' as _i29;

const String _test = 'test';
const String _dev = 'dev';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.factory<_i3.ChooseDurationUseCase>(() => _i3.ChooseDurationUseCase());
  gh.factory<_i4.Client>(() => registerModule.authClient, instanceName: 'auth');
  gh.singleton<_i4.Client>(registerModule.httpClient);
  gh.lazySingleton<_i5.Connectivity>(() => registerModule.connectivity);
  gh.factory<_i6.ConnectivityInterceptor>(
      () => _i6.ConnectivityInterceptor(connectivity: get<_i5.Connectivity>()));
  gh.factory<_i7.ErrorInterceptor>(() => _i7.ErrorInterceptor());
  gh.factory<_i8.FinishTransactionUseCase>(
      () => _i8.FinishTransactionUseCase());
  gh.factory<_i9.OpenSupportUseCase>(() => _i9.OpenSupportUseCase());
  gh.lazySingleton<_i10.PaystackPlugin>(() => registerModule.payStackPlugin);
  gh.factory<_i11.PopulateTextFormUseCase>(
      () => _i11.PopulateTextFormUseCase());
  gh.factory<_i12.SelectImageUsecase>(() => _i12.SelectImageUsecase());
  await gh.factoryAsync<_i13.SharedPreferences>(
      () => registerModule.sharedPreferences,
      preResolve: true);
  gh.factory<_i14.ShowAlertUseCase>(() => _i14.ShowAlertUseCase());
  gh.factory<_i15.ShowErrorUseCase>(() => _i15.ShowErrorUseCase());
  gh.factory<_i16.ShowOptionUseCase>(() => _i16.ShowOptionUseCase());
  gh.factory<_i17.ShowPromptUseCase>(() => _i17.ShowPromptUseCase());
  gh.factory<_i18.StartCountDownUseCase>(() => _i18.StartCountDownUseCase());
  gh.factory<String>(() => registerModule.baseUrl, instanceName: 'baseUrl');
  gh.factory<String>(() => registerModule.secretKey,
      instanceName: 'paystackSecretkey');
  gh.factory<String>(() => registerModule.apiKey,
      instanceName: 'googleCloudApiKey');
  gh.factory<String>(() => registerModule.publicKey,
      instanceName: 'paystackPublicKey');
  gh.factory<_i19.AuthInterceptor>(() =>
      _i19.AuthInterceptor(sharedPreferences: get<_i13.SharedPreferences>()));
  gh.factory<_i20.AuthStorageInterface>(
      () => _i21.AuthStorageService(get<_i13.SharedPreferences>()),
      registerFor: {_test});
  gh.factory<_i20.AuthStorageInterface>(
      () => _i22.ObjectAuthStorageService(get<_i13.SharedPreferences>()),
      registerFor: {_dev});
  gh.factory<_i23.BaseUseCases>(() => _i23.BaseUseCases(
      showAlertUseCase: get<_i14.ShowAlertUseCase>(),
      showErrorUseCase: get<_i15.ShowErrorUseCase>(),
      showPromptUseCase: get<_i17.ShowPromptUseCase>(),
      showOptionUseCase: get<_i16.ShowOptionUseCase>(),
      showFullScreenDialogue: get<_i24.ShowFullScreenDialogue>()));
  gh.factory<_i25.CommonStorageInterface>(
      () => _i26.CommonStorageService(get<_i13.SharedPreferences>()));
  gh.factory<_i27.JwtAuthenticator>(() => registerModule.jwtAuthenticator(
      get<String>(instanceName: 'baseUrl'),
      get<_i13.SharedPreferences>(),
      get<_i4.Client>(instanceName: 'auth'),
      get<_i5.Connectivity>()));
  gh.factory<_i28.PaymentInterface>(
      () => _i29.PaymentService(get<_i10.PaystackPlugin>()));
  gh.factory<_i30.PaystackInterceptor>(() => _i30.PaystackInterceptor(
      paystackSecretKey: get<String>(instanceName: 'paystackSecretkey')));
  gh.factory<_i31.PlacesInterceptor>(() => _i31.PlacesInterceptor(
      apiKey: get<String>(instanceName: 'googleCloudApiKey')));
  gh.factory<_i32.ChopperClient>(() => registerModule.client(get<_i4.Client>(),
      get<String>(instanceName: 'baseUrl'), get<_i27.JwtAuthenticator>()));
  gh.factory<_i33.DeliveryRepository>(() => _i33.DeliveryRepository(
      get<_i32.ChopperClient>(), get<_i25.CommonStorageInterface>()));
  gh.factory<_i34.GetLocationDistrictUseCase>(
      () => _i34.GetLocationDistrictUseCase(get<_i33.DeliveryRepository>()));
  gh.factory<_i35.ParcelRepository>(() => _i35.ParcelRepository(
      get<_i32.ChopperClient>(), get<_i25.CommonStorageInterface>()));
  gh.factory<_i36.PaymentRepository>(() => _i36.PaymentRepository(
      get<_i28.PaymentInterface>(),
      get<_i32.ChopperClient>(),
      get<_i25.CommonStorageInterface>()));
  gh.factory<_i37.ProceedToBookingUseCase>(
      () => _i37.ProceedToBookingUseCase(get<_i33.DeliveryRepository>()));
  gh.factory<_i38.SearchUsecase>(
      () => _i38.SearchUsecase(get<_i33.DeliveryRepository>()));
  gh.factory<_i39.SignInRepository>(() => _i39.SignInRepository(
      get<_i32.ChopperClient>(),
      get<_i20.AuthStorageInterface>(),
      get<_i25.CommonStorageInterface>()));
  gh.factory<_i40.SignInUsecase>(
      () => _i40.SignInUsecase(get<_i39.SignInRepository>()));
  gh.factory<_i41.SignUpRepository>(() => _i41.SignUpRepository(
      get<_i32.ChopperClient>(), get<_i20.AuthStorageInterface>()));
  gh.factory<_i42.SignUpUsecase>(
      () => _i42.SignUpUsecase(get<_i41.SignUpRepository>()));
  gh.factory<_i43.SubmitOtpUseCase>(
      () => _i43.SubmitOtpUseCase(get<_i41.SignUpRepository>()));
  gh.factory<_i44.SubmitPasswordOtpUseCase>(
      () => _i44.SubmitPasswordOtpUseCase(get<_i39.SignInRepository>()));
  gh.factory<_i45.UserRepository>(() => _i45.UserRepository(
      get<_i25.CommonStorageInterface>(), get<_i32.ChopperClient>()));
  gh.factory<_i46.AccountRepository>(() => _i46.AccountRepository(
      get<_i25.CommonStorageInterface>(),
      get<_i32.ChopperClient>(),
      get<_i20.AuthStorageInterface>()));
  gh.factory<_i47.AuthRepository>(() => _i47.AuthRepository(
      get<_i25.CommonStorageInterface>(),
      get<_i32.ChopperClient>(),
      get<_i20.AuthStorageInterface>()));
  gh.factory<_i48.AuthenticateUseCase>(() => _i48.AuthenticateUseCase(
      get<_i47.AuthRepository>(), get<_i45.UserRepository>()));
  gh.factory<_i49.ChargeAuthUseCase>(
      () => _i49.ChargeAuthUseCase(get<_i36.PaymentRepository>()));
  gh.factory<_i50.CheckAuthenticateUseCase>(
      () => _i50.CheckAuthenticateUseCase(get<_i47.AuthRepository>()));
  gh.factory<_i51.ConfirmPasswordUseCase>(
      () => _i51.ConfirmPasswordUseCase(get<_i39.SignInRepository>()));
  gh.factory<_i52.DeliveryUseCases>(() => _i52.DeliveryUseCases(
      chooseDurationUseCase: get<_i3.ChooseDurationUseCase>(),
      getLocationDistrictUseCase: get<_i34.GetLocationDistrictUseCase>(),
      proceedToBookingUseCase: get<_i37.ProceedToBookingUseCase>(),
      searchUsecase: get<_i38.SearchUsecase>(),
      finishTransactionUseCase: get<_i8.FinishTransactionUseCase>()));
  gh.factory<_i53.EditUserUseCase>(
      () => _i53.EditUserUseCase(get<_i46.AccountRepository>()));
  gh.factory<_i54.ForgotPasswordUseCase>(
      () => _i54.ForgotPasswordUseCase(get<_i39.SignInRepository>()));
  gh.factory<_i55.GetHistoryUseCase>(
      () => _i55.GetHistoryUseCase(get<_i35.ParcelRepository>()));
  gh.factory<_i56.GetStoredUserStreamUseCase>(
      () => _i56.GetStoredUserStreamUseCase(get<_i45.UserRepository>()));
  gh.factory<_i57.GetStoredUserUseCase>(
      () => _i57.GetStoredUserUseCase(get<_i45.UserRepository>()));
  gh.factory<_i58.LogoutUseCase>(
      () => _i58.LogoutUseCase(get<_i47.AuthRepository>()));
  gh.factory<_i59.MakePaymentUseCase>(
      () => _i59.MakePaymentUseCase(get<_i36.PaymentRepository>()));
  gh.factory<_i60.OpenMapUseCase>(
      () => _i60.OpenMapUseCase(get<_i36.PaymentRepository>()));
  gh.factory<_i61.ParcelUseCases>(() =>
      _i61.ParcelUseCases(getHistoryUseCase: get<_i55.GetHistoryUseCase>()));
  gh.factory<_i62.PayWithMethodUseCase>(
      () => _i62.PayWithMethodUseCase(get<_i36.PaymentRepository>()));
  gh.factory<_i63.PaymentUseCases>(() => _i63.PaymentUseCases(
      makePaymentUseCase: get<_i59.MakePaymentUseCase>(),
      openMapUseCase: get<_i60.OpenMapUseCase>(),
      chargeAuthUseCase: get<_i49.ChargeAuthUseCase>(),
      payWithMethodUseCase: get<_i62.PayWithMethodUseCase>()));
  gh.factory<_i64.RequestOtpUseCase>(
      () => _i64.RequestOtpUseCase(get<_i41.SignUpRepository>()));
  gh.factory<_i65.ResetPasswordUseCase>(
      () => _i65.ResetPasswordUseCase(get<_i46.AccountRepository>()));
  gh.factory<_i66.UploadPhotoUsecase>(
      () => _i66.UploadPhotoUsecase(get<_i46.AccountRepository>()));
  gh.factory<_i67.AccountUseCases>(() => _i67.AccountUseCases(
      editUserUseCase: get<_i53.EditUserUseCase>(),
      openSupportUseCase: get<_i9.OpenSupportUseCase>(),
      resetPasswordUseCase: get<_i65.ResetPasswordUseCase>(),
      uploadPhotoUsecase: get<_i66.UploadPhotoUsecase>(),
      selectImageUsecase: get<_i12.SelectImageUsecase>(),
      shhowOptionUseCase: get<_i16.ShowOptionUseCase>()));
  gh.factory<_i68.AuthUseCases>(() => _i68.AuthUseCases(
      signInUsecase: get<_i40.SignInUsecase>(),
      signUpUsecase: get<_i42.SignUpUsecase>(),
      requestOtpUseCase: get<_i64.RequestOtpUseCase>(),
      submitOtpUseCase: get<_i43.SubmitOtpUseCase>(),
      startCountDownUseCase: get<_i18.StartCountDownUseCase>(),
      confirmPasswordUseCase: get<_i51.ConfirmPasswordUseCase>(),
      forgotPasswordUseCase: get<_i54.ForgotPasswordUseCase>(),
      submitPasswordOtpUseCase: get<_i44.SubmitPasswordOtpUseCase>()));
  gh.factory<_i69.CommonUseCases>(() => _i69.CommonUseCases(
      getStoredUserUseCase: get<_i57.GetStoredUserUseCase>(),
      authenticateUseCase: get<_i48.AuthenticateUseCase>(),
      logoutUseCase: get<_i58.LogoutUseCase>(),
      populateTextFormUseCase: get<_i11.PopulateTextFormUseCase>(),
      getStoredUserStreamUseCase: get<_i56.GetStoredUserStreamUseCase>()));
  gh.factory<_i70.DeliveryBloc>(
      () => _i70.DeliveryBloc(get<_i52.DeliveryUseCases>()));
  gh.factory<_i71.NotificationBloc>(
      () => _i71.NotificationBloc(get<_i69.CommonUseCases>()));
  gh.factory<_i72.ParcelBloc>(
      () => _i72.ParcelBloc(get<_i61.ParcelUseCases>()));
  gh.factory<_i73.PaymentBloc>(() => _i73.PaymentBloc(
      get<_i63.PaymentUseCases>(), get<_i36.PaymentRepository>()));
  gh.factory<_i74.SignInBloc>(() => _i74.SignInBloc(get<_i68.AuthUseCases>()));
  gh.factory<_i75.SignUpBloc>(() => _i75.SignUpBloc(get<_i68.AuthUseCases>()));
  gh.factory<_i76.UserBloc>(() => _i76.UserBloc(get<_i69.CommonUseCases>()));
  gh.factory<_i77.AccountBloc>(
      () => _i77.AccountBloc(get<_i67.AccountUseCases>()));
  gh.factory<_i78.AuthBloc>(() => _i78.AuthBloc(get<_i69.CommonUseCases>()));
  return get;
}

class _$RegisterModule extends _i79.RegisterModule {}
