// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:chopper/chopper.dart' as _i33;
import 'package:connectivity/connectivity.dart' as _i5;
import 'package:flutter_paystack/flutter_paystack.dart' as _i10;
import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i13;

import 'account/application/account_bloc/account_bloc.dart' as _i78;
import 'account/domain/repositories/account_repository.dart' as _i47;
import 'account/domain/usecases/account_usecases.dart' as _i68;
import 'account/domain/usecases/edit_user_usecase.dart' as _i54;
import 'account/domain/usecases/open_support_usecase.dart' as _i9;
import 'account/domain/usecases/reset_password_usecase.dart' as _i66;
import 'account/domain/usecases/select_image_usecase.dart' as _i12;
import 'account/domain/usecases/upload_photo_usecase.dart' as _i67;
import 'auth/application/bloc/sign_in_bloc/signin_bloc.dart' as _i75;
import 'auth/application/bloc/sign_up_bloc/signup_bloc.dart' as _i76;
import 'auth/domain/interface/auth_storage_interface.dart' as _i21;
import 'auth/domain/repositories/sign_in_repository.dart' as _i40;
import 'auth/domain/repositories/sign_up_repository.dart' as _i42;
import 'auth/domain/usecases/auth_usecases.dart' as _i69;
import 'auth/domain/usecases/confirm_password_usecase.dart' as _i52;
import 'auth/domain/usecases/forgot_password_usecase.dart' as _i55;
import 'auth/domain/usecases/request_otp_usecase.dart' as _i65;
import 'auth/domain/usecases/sign_in_usecase.dart' as _i41;
import 'auth/domain/usecases/sign_up_usecase.dart' as _i43;
import 'auth/domain/usecases/start_countdown_usecase.dart' as _i19;
import 'auth/domain/usecases/submit_otp_usecase.dart' as _i44;
import 'auth/domain/usecases/submit_password_otp_usecase.dart' as _i45;
import 'auth/infrastructure/services/auth_storage_service.dart' as _i22;
import 'auth/infrastructure/services/object_auth_storage_service.dart' as _i23;
import 'common/application/auth_bloc/auth_bloc.dart' as _i79;
import 'common/application/notification_bloc/notification_bloc.dart' as _i72;
import 'common/application/user_bloc/user_bloc.dart' as _i77;
import 'common/domain/interface/common_storage_interface.dart' as _i26;
import 'common/domain/repositories/auth_repository.dart' as _i48;
import 'common/domain/repositories/user_repository.dart' as _i46;
import 'common/domain/usecases/authenticate_usecase.dart' as _i49;
import 'common/domain/usecases/base_usecases.dart' as _i24;
import 'common/domain/usecases/check_authenticate_usecase.dart' as _i51;
import 'common/domain/usecases/common_usecases.dart' as _i70;
import 'common/domain/usecases/get_stored_user_stream_usecase.dart' as _i57;
import 'common/domain/usecases/get_stored_user_usecase.dart' as _i58;
import 'common/domain/usecases/logout_usecase.dart' as _i59;
import 'common/domain/usecases/populate_textforms_usecase.dart' as _i11;
import 'common/domain/usecases/show_alert_usecase.dart' as _i14;
import 'common/domain/usecases/show_error_usecase.dart' as _i15;
import 'common/domain/usecases/show_full_screen_alert.dart' as _i25;
import 'common/domain/usecases/show_full_screen_alert_usecase.dart' as _i16;
import 'common/domain/usecases/show_options_usecase.dart' as _i17;
import 'common/domain/usecases/show_prompt_usecase.dart' as _i18;
import 'common/infrastructure/chopper/authenticator/jwt_authenticator.dart'
    as _i28;
import 'common/infrastructure/chopper/interceptors/auth_interceptor.dart'
    as _i20;
import 'common/infrastructure/chopper/interceptors/connectivity_interceptor.dart'
    as _i6;
import 'common/infrastructure/chopper/interceptors/error_interceptor.dart'
    as _i7;
import 'common/infrastructure/chopper/interceptors/paystack_interceptor.dart'
    as _i31;
import 'common/infrastructure/chopper/interceptors/places_interceptor.dart'
    as _i32;
import 'common/infrastructure/register_module.dart' as _i80;
import 'common/infrastructure/services/common_storage_service.dart' as _i27;
import 'delivery/application/delivery_bloc/delivery_bloc.dart' as _i71;
import 'delivery/domain/repositories/delivery_repository.dart' as _i34;
import 'delivery/domain/usecases/choose_duration_usecase.dart' as _i3;
import 'delivery/domain/usecases/delivery_usecases.dart' as _i53;
import 'delivery/domain/usecases/finish_transaction_usecase.dart' as _i8;
import 'delivery/domain/usecases/get_location_districts_usecase.dart' as _i35;
import 'delivery/domain/usecases/proceed_to_booking_usecase.dart' as _i38;
import 'delivery/domain/usecases/search_usecase.dart' as _i39;
import 'parcels/application/parcels_bloc/parcel_bloc.dart' as _i73;
import 'parcels/domain/repositories/parcel_repository.dart' as _i36;
import 'parcels/domain/usecases/get_history_usecase.dart' as _i56;
import 'parcels/domain/usecases/parcel_usecases.dart' as _i62;
import 'payment/application/payment_bloc/payment_bloc.dart' as _i74;
import 'payment/domain/interface/payment_interface.dart' as _i29;
import 'payment/domain/repositories/payment_repository.dart' as _i37;
import 'payment/domain/usecases/charge_auth_usecase.dart' as _i50;
import 'payment/domain/usecases/make_payment_usecase.dart' as _i60;
import 'payment/domain/usecases/open_map_usecase.dart' as _i61;
import 'payment/domain/usecases/pay_with_method_usecase.dart' as _i63;
import 'payment/domain/usecases/payment_usecases.dart' as _i64;
import 'payment/infrastructure/services/payment_service.dart' as _i30;

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
  gh.factory<_i16.ShowFullScreenDialogue>(() => _i16.ShowFullScreenDialogue());
  gh.factory<_i17.ShowOptionUseCase>(() => _i17.ShowOptionUseCase());
  gh.factory<_i18.ShowPromptUseCase>(() => _i18.ShowPromptUseCase());
  gh.factory<_i19.StartCountDownUseCase>(() => _i19.StartCountDownUseCase());
  gh.factory<String>(() => registerModule.apiKey,
      instanceName: 'googleCloudApiKey');
  gh.factory<String>(() => registerModule.secretKey,
      instanceName: 'paystackSecretkey');
  gh.factory<String>(() => registerModule.publicKey,
      instanceName: 'paystackPublicKey');
  gh.factory<String>(() => registerModule.baseUrl, instanceName: 'baseUrl');
  gh.factory<_i20.AuthInterceptor>(() =>
      _i20.AuthInterceptor(sharedPreferences: get<_i13.SharedPreferences>()));
  gh.factory<_i21.AuthStorageInterface>(
      () => _i22.AuthStorageService(get<_i13.SharedPreferences>()),
      registerFor: {_test});
  gh.factory<_i21.AuthStorageInterface>(
      () => _i23.ObjectAuthStorageService(get<_i13.SharedPreferences>()),
      registerFor: {_dev});
  gh.factory<_i24.BaseUseCases>(() => _i24.BaseUseCases(
      showAlertUseCase: get<_i14.ShowAlertUseCase>(),
      showErrorUseCase: get<_i15.ShowErrorUseCase>(),
      showPromptUseCase: get<_i18.ShowPromptUseCase>(),
      showOptionUseCase: get<_i17.ShowOptionUseCase>(),
      showFullScreenDialogue: get<_i25.ShowFullScreenDialogue>()));
  gh.factory<_i26.CommonStorageInterface>(
      () => _i27.CommonStorageService(get<_i13.SharedPreferences>()));
  gh.factory<_i28.JwtAuthenticator>(() => registerModule.jwtAuthenticator(
      get<String>(instanceName: 'baseUrl'),
      get<_i13.SharedPreferences>(),
      get<_i4.Client>(instanceName: 'auth'),
      get<_i5.Connectivity>()));
  gh.factory<_i29.PaymentInterface>(
      () => _i30.PaymentService(get<_i10.PaystackPlugin>()));
  gh.factory<_i31.PaystackInterceptor>(() => _i31.PaystackInterceptor(
      paystackSecretKey: get<String>(instanceName: 'paystackSecretkey')));
  gh.factory<_i32.PlacesInterceptor>(() => _i32.PlacesInterceptor(
      apiKey: get<String>(instanceName: 'googleCloudApiKey')));
  gh.factory<_i33.ChopperClient>(() => registerModule.client(get<_i4.Client>(),
      get<String>(instanceName: 'baseUrl'), get<_i28.JwtAuthenticator>()));
  gh.factory<_i34.DeliveryRepository>(() => _i34.DeliveryRepository(
      get<_i33.ChopperClient>(), get<_i26.CommonStorageInterface>()));
  gh.factory<_i35.GetLocationDistrictUseCase>(
      () => _i35.GetLocationDistrictUseCase(get<_i34.DeliveryRepository>()));
  gh.factory<_i36.ParcelRepository>(() => _i36.ParcelRepository(
      get<_i33.ChopperClient>(), get<_i26.CommonStorageInterface>()));
  gh.factory<_i37.PaymentRepository>(() => _i37.PaymentRepository(
      get<_i29.PaymentInterface>(),
      get<_i33.ChopperClient>(),
      get<_i26.CommonStorageInterface>()));
  gh.factory<_i38.ProceedToBookingUseCase>(
      () => _i38.ProceedToBookingUseCase(get<_i34.DeliveryRepository>()));
  gh.factory<_i39.SearchUsecase>(
      () => _i39.SearchUsecase(get<_i34.DeliveryRepository>()));
  gh.factory<_i40.SignInRepository>(() => _i40.SignInRepository(
      get<_i33.ChopperClient>(),
      get<_i21.AuthStorageInterface>(),
      get<_i26.CommonStorageInterface>()));
  gh.factory<_i41.SignInUsecase>(
      () => _i41.SignInUsecase(get<_i40.SignInRepository>()));
  gh.factory<_i42.SignUpRepository>(() => _i42.SignUpRepository(
      get<_i33.ChopperClient>(), get<_i21.AuthStorageInterface>()));
  gh.factory<_i43.SignUpUsecase>(
      () => _i43.SignUpUsecase(get<_i42.SignUpRepository>()));
  gh.factory<_i44.SubmitOtpUseCase>(
      () => _i44.SubmitOtpUseCase(get<_i42.SignUpRepository>()));
  gh.factory<_i45.SubmitPasswordOtpUseCase>(
      () => _i45.SubmitPasswordOtpUseCase(get<_i40.SignInRepository>()));
  gh.factory<_i46.UserRepository>(() => _i46.UserRepository(
      get<_i26.CommonStorageInterface>(), get<_i33.ChopperClient>()));
  gh.factory<_i47.AccountRepository>(() => _i47.AccountRepository(
      get<_i26.CommonStorageInterface>(),
      get<_i33.ChopperClient>(),
      get<_i21.AuthStorageInterface>()));
  gh.factory<_i48.AuthRepository>(() => _i48.AuthRepository(
      get<_i26.CommonStorageInterface>(),
      get<_i33.ChopperClient>(),
      get<_i21.AuthStorageInterface>()));
  gh.factory<_i49.AuthenticateUseCase>(() => _i49.AuthenticateUseCase(
      get<_i48.AuthRepository>(), get<_i46.UserRepository>()));
  gh.factory<_i50.ChargeAuthUseCase>(
      () => _i50.ChargeAuthUseCase(get<_i37.PaymentRepository>()));
  gh.factory<_i51.CheckAuthenticateUseCase>(
      () => _i51.CheckAuthenticateUseCase(get<_i48.AuthRepository>()));
  gh.factory<_i52.ConfirmPasswordUseCase>(
      () => _i52.ConfirmPasswordUseCase(get<_i40.SignInRepository>()));
  gh.factory<_i53.DeliveryUseCases>(() => _i53.DeliveryUseCases(
      chooseDurationUseCase: get<_i3.ChooseDurationUseCase>(),
      getLocationDistrictUseCase: get<_i35.GetLocationDistrictUseCase>(),
      proceedToBookingUseCase: get<_i38.ProceedToBookingUseCase>(),
      searchUsecase: get<_i39.SearchUsecase>(),
      finishTransactionUseCase: get<_i8.FinishTransactionUseCase>()));
  gh.factory<_i54.EditUserUseCase>(
      () => _i54.EditUserUseCase(get<_i47.AccountRepository>()));
  gh.factory<_i55.ForgotPasswordUseCase>(
      () => _i55.ForgotPasswordUseCase(get<_i40.SignInRepository>()));
  gh.factory<_i56.GetHistoryUseCase>(
      () => _i56.GetHistoryUseCase(get<_i36.ParcelRepository>()));
  gh.factory<_i57.GetStoredUserStreamUseCase>(
      () => _i57.GetStoredUserStreamUseCase(get<_i46.UserRepository>()));
  gh.factory<_i58.GetStoredUserUseCase>(
      () => _i58.GetStoredUserUseCase(get<_i46.UserRepository>()));
  gh.factory<_i59.LogoutUseCase>(
      () => _i59.LogoutUseCase(get<_i48.AuthRepository>()));
  gh.factory<_i60.MakePaymentUseCase>(
      () => _i60.MakePaymentUseCase(get<_i37.PaymentRepository>()));
  gh.factory<_i61.OpenMapUseCase>(
      () => _i61.OpenMapUseCase(get<_i37.PaymentRepository>()));
  gh.factory<_i62.ParcelUseCases>(() =>
      _i62.ParcelUseCases(getHistoryUseCase: get<_i56.GetHistoryUseCase>()));
  gh.factory<_i63.PayWithMethodUseCase>(
      () => _i63.PayWithMethodUseCase(get<_i37.PaymentRepository>()));
  gh.factory<_i64.PaymentUseCases>(() => _i64.PaymentUseCases(
      makePaymentUseCase: get<_i60.MakePaymentUseCase>(),
      openMapUseCase: get<_i61.OpenMapUseCase>(),
      chargeAuthUseCase: get<_i50.ChargeAuthUseCase>(),
      payWithMethodUseCase: get<_i63.PayWithMethodUseCase>()));
  gh.factory<_i65.RequestOtpUseCase>(
      () => _i65.RequestOtpUseCase(get<_i42.SignUpRepository>()));
  gh.factory<_i66.ResetPasswordUseCase>(
      () => _i66.ResetPasswordUseCase(get<_i47.AccountRepository>()));
  gh.factory<_i67.UploadPhotoUsecase>(
      () => _i67.UploadPhotoUsecase(get<_i47.AccountRepository>()));
  gh.factory<_i68.AccountUseCases>(() => _i68.AccountUseCases(
      editUserUseCase: get<_i54.EditUserUseCase>(),
      openSupportUseCase: get<_i9.OpenSupportUseCase>(),
      resetPasswordUseCase: get<_i66.ResetPasswordUseCase>(),
      uploadPhotoUsecase: get<_i67.UploadPhotoUsecase>(),
      selectImageUsecase: get<_i12.SelectImageUsecase>(),
      shhowOptionUseCase: get<_i17.ShowOptionUseCase>()));
  gh.factory<_i69.AuthUseCases>(() => _i69.AuthUseCases(
      signInUsecase: get<_i41.SignInUsecase>(),
      signUpUsecase: get<_i43.SignUpUsecase>(),
      requestOtpUseCase: get<_i65.RequestOtpUseCase>(),
      submitOtpUseCase: get<_i44.SubmitOtpUseCase>(),
      startCountDownUseCase: get<_i19.StartCountDownUseCase>(),
      confirmPasswordUseCase: get<_i52.ConfirmPasswordUseCase>(),
      forgotPasswordUseCase: get<_i55.ForgotPasswordUseCase>(),
      submitPasswordOtpUseCase: get<_i45.SubmitPasswordOtpUseCase>()));
  gh.factory<_i70.CommonUseCases>(() => _i70.CommonUseCases(
      getStoredUserUseCase: get<_i58.GetStoredUserUseCase>(),
      authenticateUseCase: get<_i49.AuthenticateUseCase>(),
      logoutUseCase: get<_i59.LogoutUseCase>(),
      populateTextFormUseCase: get<_i11.PopulateTextFormUseCase>(),
      getStoredUserStreamUseCase: get<_i57.GetStoredUserStreamUseCase>()));
  gh.factory<_i71.DeliveryBloc>(() => _i71.DeliveryBloc(
      get<_i53.DeliveryUseCases>(), get<_i34.DeliveryRepository>()));
  gh.factory<_i72.NotificationBloc>(
      () => _i72.NotificationBloc(get<_i70.CommonUseCases>()));
  gh.factory<_i73.ParcelBloc>(
      () => _i73.ParcelBloc(get<_i62.ParcelUseCases>()));
  gh.factory<_i74.PaymentBloc>(() => _i74.PaymentBloc(
      get<_i64.PaymentUseCases>(), get<_i37.PaymentRepository>()));
  gh.factory<_i75.SignInBloc>(() => _i75.SignInBloc(get<_i69.AuthUseCases>()));
  gh.factory<_i76.SignUpBloc>(() => _i76.SignUpBloc(get<_i69.AuthUseCases>()));
  gh.factory<_i77.UserBloc>(() => _i77.UserBloc(get<_i70.CommonUseCases>()));
  gh.factory<_i78.AccountBloc>(
      () => _i78.AccountBloc(get<_i68.AccountUseCases>()));
  gh.factory<_i79.AuthBloc>(() => _i79.AuthBloc(get<_i70.CommonUseCases>()));
  return get;
}

class _$RegisterModule extends _i80.RegisterModule {}
