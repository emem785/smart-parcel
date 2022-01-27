// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:chopper/chopper.dart' as _i31;
import 'package:connectivity/connectivity.dart' as _i5;
import 'package:flutter_paystack/flutter_paystack.dart' as _i10;
import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i13;

import 'account/application/account_bloc/account_bloc.dart' as _i76;
import 'account/domain/repositories/account_repository.dart' as _i45;
import 'account/domain/usecases/account_usecases.dart' as _i66;
import 'account/domain/usecases/edit_user_usecase.dart' as _i52;
import 'account/domain/usecases/open_support_usecase.dart' as _i9;
import 'account/domain/usecases/reset_password_usecase.dart' as _i64;
import 'account/domain/usecases/select_image_usecase.dart' as _i12;
import 'account/domain/usecases/upload_photo_usecase.dart' as _i65;
import 'auth/application/bloc/sign_in_bloc/signin_bloc.dart' as _i73;
import 'auth/application/bloc/sign_up_bloc/signup_bloc.dart' as _i74;
import 'auth/domain/interface/auth_storage_interface.dart' as _i20;
import 'auth/domain/repositories/sign_in_repository.dart' as _i38;
import 'auth/domain/repositories/sign_up_repository.dart' as _i40;
import 'auth/domain/usecases/auth_usecases.dart' as _i67;
import 'auth/domain/usecases/confirm_password_usecase.dart' as _i50;
import 'auth/domain/usecases/forgot_password_usecase.dart' as _i53;
import 'auth/domain/usecases/request_otp_usecase.dart' as _i63;
import 'auth/domain/usecases/sign_in_usecase.dart' as _i39;
import 'auth/domain/usecases/sign_up_usecase.dart' as _i41;
import 'auth/domain/usecases/start_countdown_usecase.dart' as _i18;
import 'auth/domain/usecases/submit_otp_usecase.dart' as _i42;
import 'auth/domain/usecases/submit_password_otp_usecase.dart' as _i43;
import 'auth/infrastructure/services/auth_storage_service.dart' as _i21;
import 'auth/infrastructure/services/object_auth_storage_service.dart' as _i22;
import 'common/application/auth_bloc/auth_bloc.dart' as _i77;
import 'common/application/notification_bloc/notification_bloc.dart' as _i70;
import 'common/application/user_bloc/user_bloc.dart' as _i75;
import 'common/domain/interface/common_storage_interface.dart' as _i24;
import 'common/domain/repositories/auth_repository.dart' as _i46;
import 'common/domain/repositories/user_repository.dart' as _i44;
import 'common/domain/usecases/authenticate_usecase.dart' as _i47;
import 'common/domain/usecases/base_usecases.dart' as _i23;
import 'common/domain/usecases/check_authenticate_usecase.dart' as _i49;
import 'common/domain/usecases/common_usecases.dart' as _i68;
import 'common/domain/usecases/get_stored_user_stream_usecase.dart' as _i55;
import 'common/domain/usecases/get_stored_user_usecase.dart' as _i56;
import 'common/domain/usecases/logout_usecase.dart' as _i57;
import 'common/domain/usecases/populate_textforms_usecase.dart' as _i11;
import 'common/domain/usecases/show_alert_usecase.dart' as _i14;
import 'common/domain/usecases/show_error_usecase.dart' as _i15;
import 'common/domain/usecases/show_options_usecase.dart' as _i16;
import 'common/domain/usecases/show_prompt_usecase.dart' as _i17;
import 'common/infrastructure/chopper/authenticator/jwt_authenticator.dart'
    as _i26;
import 'common/infrastructure/chopper/interceptors/auth_interceptor.dart'
    as _i19;
import 'common/infrastructure/chopper/interceptors/connectivity_interceptor.dart'
    as _i6;
import 'common/infrastructure/chopper/interceptors/error_interceptor.dart'
    as _i7;
import 'common/infrastructure/chopper/interceptors/paystack_interceptor.dart'
    as _i29;
import 'common/infrastructure/chopper/interceptors/places_interceptor.dart'
    as _i30;
import 'common/infrastructure/register_module.dart' as _i78;
import 'common/infrastructure/services/common_storage_service.dart' as _i25;
import 'delivery/application/delivery_bloc/delivery_bloc.dart' as _i69;
import 'delivery/domain/repositories/delivery_repository.dart' as _i32;
import 'delivery/domain/usecases/choose_duration_usecase.dart' as _i3;
import 'delivery/domain/usecases/delivery_usecases.dart' as _i51;
import 'delivery/domain/usecases/finish_transaction_usecase.dart' as _i8;
import 'delivery/domain/usecases/get_location_districts_usecase.dart' as _i33;
import 'delivery/domain/usecases/proceed_to_booking_usecase.dart' as _i36;
import 'delivery/domain/usecases/search_usecase.dart' as _i37;
import 'parcels/application/parcels_bloc/parcel_bloc.dart' as _i71;
import 'parcels/domain/repositories/parcel_repository.dart' as _i34;
import 'parcels/domain/usecases/get_history_usecase.dart' as _i54;
import 'parcels/domain/usecases/parcel_usecases.dart' as _i60;
import 'payment/application/payment_bloc/payment_bloc.dart' as _i72;
import 'payment/domain/interface/payment_interface.dart' as _i27;
import 'payment/domain/repositories/payment_repository.dart' as _i35;
import 'payment/domain/usecases/charge_auth_usecase.dart' as _i48;
import 'payment/domain/usecases/make_payment_usecase.dart' as _i58;
import 'payment/domain/usecases/open_map_usecase.dart' as _i59;
import 'payment/domain/usecases/pay_with_method_usecase.dart' as _i61;
import 'payment/domain/usecases/payment_usecases.dart' as _i62;
import 'payment/infrastructure/services/payment_service.dart' as _i28;

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
      showOptionUseCase: get<_i16.ShowOptionUseCase>()));
  gh.factory<_i24.CommonStorageInterface>(
      () => _i25.CommonStorageService(get<_i13.SharedPreferences>()));
  gh.factory<_i26.JwtAuthenticator>(() => registerModule.jwtAuthenticator(
      get<String>(instanceName: 'baseUrl'),
      get<_i13.SharedPreferences>(),
      get<_i4.Client>(instanceName: 'auth'),
      get<_i5.Connectivity>()));
  gh.factory<_i27.PaymentInterface>(
      () => _i28.PaymentService(get<_i10.PaystackPlugin>()));
  gh.factory<_i29.PaystackInterceptor>(() => _i29.PaystackInterceptor(
      paystackSecretKey: get<String>(instanceName: 'paystackSecretkey')));
  gh.factory<_i30.PlacesInterceptor>(() => _i30.PlacesInterceptor(
      apiKey: get<String>(instanceName: 'googleCloudApiKey')));
  gh.factory<_i31.ChopperClient>(() => registerModule.client(get<_i4.Client>(),
      get<String>(instanceName: 'baseUrl'), get<_i26.JwtAuthenticator>()));
  gh.factory<_i32.DeliveryRepository>(() => _i32.DeliveryRepository(
      get<_i31.ChopperClient>(), get<_i24.CommonStorageInterface>()));
  gh.factory<_i33.GetLocationDistrictUseCase>(
      () => _i33.GetLocationDistrictUseCase(get<_i32.DeliveryRepository>()));
  gh.factory<_i34.ParcelRepository>(() => _i34.ParcelRepository(
      get<_i31.ChopperClient>(), get<_i24.CommonStorageInterface>()));
  gh.factory<_i35.PaymentRepository>(() => _i35.PaymentRepository(
      get<_i27.PaymentInterface>(),
      get<_i31.ChopperClient>(),
      get<_i24.CommonStorageInterface>()));
  gh.factory<_i36.ProceedToBookingUseCase>(
      () => _i36.ProceedToBookingUseCase(get<_i32.DeliveryRepository>()));
  gh.factory<_i37.SearchUsecase>(
      () => _i37.SearchUsecase(get<_i32.DeliveryRepository>()));
  gh.factory<_i38.SignInRepository>(() => _i38.SignInRepository(
      get<_i31.ChopperClient>(),
      get<_i20.AuthStorageInterface>(),
      get<_i24.CommonStorageInterface>()));
  gh.factory<_i39.SignInUsecase>(
      () => _i39.SignInUsecase(get<_i38.SignInRepository>()));
  gh.factory<_i40.SignUpRepository>(() => _i40.SignUpRepository(
      get<_i31.ChopperClient>(), get<_i20.AuthStorageInterface>()));
  gh.factory<_i41.SignUpUsecase>(
      () => _i41.SignUpUsecase(get<_i40.SignUpRepository>()));
  gh.factory<_i42.SubmitOtpUseCase>(
      () => _i42.SubmitOtpUseCase(get<_i40.SignUpRepository>()));
  gh.factory<_i43.SubmitPasswordOtpUseCase>(
      () => _i43.SubmitPasswordOtpUseCase(get<_i38.SignInRepository>()));
  gh.factory<_i44.UserRepository>(() => _i44.UserRepository(
      get<_i24.CommonStorageInterface>(), get<_i31.ChopperClient>()));
  gh.factory<_i45.AccountRepository>(() => _i45.AccountRepository(
      get<_i24.CommonStorageInterface>(),
      get<_i31.ChopperClient>(),
      get<_i20.AuthStorageInterface>()));
  gh.factory<_i46.AuthRepository>(() => _i46.AuthRepository(
      get<_i24.CommonStorageInterface>(),
      get<_i31.ChopperClient>(),
      get<_i20.AuthStorageInterface>()));
  gh.factory<_i47.AuthenticateUseCase>(() => _i47.AuthenticateUseCase(
      get<_i46.AuthRepository>(), get<_i44.UserRepository>()));
  gh.factory<_i48.ChargeAuthUseCase>(
      () => _i48.ChargeAuthUseCase(get<_i35.PaymentRepository>()));
  gh.factory<_i49.CheckAuthenticateUseCase>(
      () => _i49.CheckAuthenticateUseCase(get<_i46.AuthRepository>()));
  gh.factory<_i50.ConfirmPasswordUseCase>(
      () => _i50.ConfirmPasswordUseCase(get<_i38.SignInRepository>()));
  gh.factory<_i51.DeliveryUseCases>(() => _i51.DeliveryUseCases(
      chooseDurationUseCase: get<_i3.ChooseDurationUseCase>(),
      getLocationDistrictUseCase: get<_i33.GetLocationDistrictUseCase>(),
      proceedToBookingUseCase: get<_i36.ProceedToBookingUseCase>(),
      searchUsecase: get<_i37.SearchUsecase>(),
      finishTransactionUseCase: get<_i8.FinishTransactionUseCase>()));
  gh.factory<_i52.EditUserUseCase>(
      () => _i52.EditUserUseCase(get<_i45.AccountRepository>()));
  gh.factory<_i53.ForgotPasswordUseCase>(
      () => _i53.ForgotPasswordUseCase(get<_i38.SignInRepository>()));
  gh.factory<_i54.GetHistoryUseCase>(
      () => _i54.GetHistoryUseCase(get<_i34.ParcelRepository>()));
  gh.factory<_i55.GetStoredUserStreamUseCase>(
      () => _i55.GetStoredUserStreamUseCase(get<_i44.UserRepository>()));
  gh.factory<_i56.GetStoredUserUseCase>(
      () => _i56.GetStoredUserUseCase(get<_i44.UserRepository>()));
  gh.factory<_i57.LogoutUseCase>(
      () => _i57.LogoutUseCase(get<_i46.AuthRepository>()));
  gh.factory<_i58.MakePaymentUseCase>(
      () => _i58.MakePaymentUseCase(get<_i35.PaymentRepository>()));
  gh.factory<_i59.OpenMapUseCase>(
      () => _i59.OpenMapUseCase(get<_i35.PaymentRepository>()));
  gh.factory<_i60.ParcelUseCases>(() =>
      _i60.ParcelUseCases(getHistoryUseCase: get<_i54.GetHistoryUseCase>()));
  gh.factory<_i61.PayWithMethodUseCase>(
      () => _i61.PayWithMethodUseCase(get<_i35.PaymentRepository>()));
  gh.factory<_i62.PaymentUseCases>(() => _i62.PaymentUseCases(
      makePaymentUseCase: get<_i58.MakePaymentUseCase>(),
      openMapUseCase: get<_i59.OpenMapUseCase>(),
      chargeAuthUseCase: get<_i48.ChargeAuthUseCase>(),
      payWithMethodUseCase: get<_i61.PayWithMethodUseCase>()));
  gh.factory<_i63.RequestOtpUseCase>(
      () => _i63.RequestOtpUseCase(get<_i40.SignUpRepository>()));
  gh.factory<_i64.ResetPasswordUseCase>(
      () => _i64.ResetPasswordUseCase(get<_i45.AccountRepository>()));
  gh.factory<_i65.UploadPhotoUsecase>(
      () => _i65.UploadPhotoUsecase(get<_i45.AccountRepository>()));
  gh.factory<_i66.AccountUseCases>(() => _i66.AccountUseCases(
      editUserUseCase: get<_i52.EditUserUseCase>(),
      openSupportUseCase: get<_i9.OpenSupportUseCase>(),
      resetPasswordUseCase: get<_i64.ResetPasswordUseCase>(),
      uploadPhotoUsecase: get<_i65.UploadPhotoUsecase>(),
      selectImageUsecase: get<_i12.SelectImageUsecase>(),
      shhowOptionUseCase: get<_i16.ShowOptionUseCase>()));
  gh.factory<_i67.AuthUseCases>(() => _i67.AuthUseCases(
      signInUsecase: get<_i39.SignInUsecase>(),
      signUpUsecase: get<_i41.SignUpUsecase>(),
      requestOtpUseCase: get<_i63.RequestOtpUseCase>(),
      submitOtpUseCase: get<_i42.SubmitOtpUseCase>(),
      startCountDownUseCase: get<_i18.StartCountDownUseCase>(),
      confirmPasswordUseCase: get<_i50.ConfirmPasswordUseCase>(),
      forgotPasswordUseCase: get<_i53.ForgotPasswordUseCase>(),
      submitPasswordOtpUseCase: get<_i43.SubmitPasswordOtpUseCase>()));
  gh.factory<_i68.CommonUseCases>(() => _i68.CommonUseCases(
      getStoredUserUseCase: get<_i56.GetStoredUserUseCase>(),
      authenticateUseCase: get<_i47.AuthenticateUseCase>(),
      logoutUseCase: get<_i57.LogoutUseCase>(),
      populateTextFormUseCase: get<_i11.PopulateTextFormUseCase>(),
      getStoredUserStreamUseCase: get<_i55.GetStoredUserStreamUseCase>()));
  gh.factory<_i69.DeliveryBloc>(
      () => _i69.DeliveryBloc(get<_i51.DeliveryUseCases>()));
  gh.factory<_i70.NotificationBloc>(
      () => _i70.NotificationBloc(get<_i68.CommonUseCases>()));
  gh.factory<_i71.ParcelBloc>(
      () => _i71.ParcelBloc(get<_i60.ParcelUseCases>()));
  gh.factory<_i72.PaymentBloc>(() => _i72.PaymentBloc(
      get<_i62.PaymentUseCases>(), get<_i35.PaymentRepository>()));
  gh.factory<_i73.SignInBloc>(() => _i73.SignInBloc(get<_i67.AuthUseCases>()));
  gh.factory<_i74.SignUpBloc>(() => _i74.SignUpBloc(get<_i67.AuthUseCases>()));
  gh.factory<_i75.UserBloc>(() => _i75.UserBloc(get<_i68.CommonUseCases>()));
  gh.factory<_i76.AccountBloc>(
      () => _i76.AccountBloc(get<_i66.AccountUseCases>()));
  gh.factory<_i77.AuthBloc>(() => _i77.AuthBloc(get<_i68.CommonUseCases>()));
  return get;
}

class _$RegisterModule extends _i78.RegisterModule {}
