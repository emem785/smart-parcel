// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:chopper/chopper.dart' as _i29;
import 'package:connectivity/connectivity.dart' as _i5;
import 'package:flutter_paystack/flutter_paystack.dart' as _i9;
import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i12;

import 'account/application/account_bloc/account_bloc.dart' as _i72;
import 'account/domain/repositories/account_repository.dart' as _i43;
import 'account/domain/usecases/account_usecases.dart' as _i62;
import 'account/domain/usecases/edit_user_usecase.dart' as _i49;
import 'account/domain/usecases/open_support_usecase.dart' as _i8;
import 'account/domain/usecases/reset_password_usecase.dart' as _i60;
import 'account/domain/usecases/select_image_usecase.dart' as _i11;
import 'account/domain/usecases/upload_photo_usecase.dart' as _i61;
import 'auth/application/bloc/sign_in_bloc/signin_bloc.dart' as _i69;
import 'auth/application/bloc/sign_up_bloc/signup_bloc.dart' as _i70;
import 'auth/domain/interface/auth_storage_interface.dart' as _i18;
import 'auth/domain/repositories/sign_in_repository.dart' as _i36;
import 'auth/domain/repositories/sign_up_repository.dart' as _i38;
import 'auth/domain/usecases/auth_usecases.dart' as _i63;
import 'auth/domain/usecases/confirm_password_usecase.dart' as _i47;
import 'auth/domain/usecases/forgot_password_usecase.dart' as _i50;
import 'auth/domain/usecases/request_otp_usecase.dart' as _i59;
import 'auth/domain/usecases/sign_in_usecase.dart' as _i37;
import 'auth/domain/usecases/sign_up_usecase.dart' as _i39;
import 'auth/domain/usecases/start_countdown_usecase.dart' as _i16;
import 'auth/domain/usecases/submit_otp_usecase.dart' as _i40;
import 'auth/domain/usecases/submit_password_otp_usecase.dart' as _i41;
import 'auth/infrastructure/services/auth_storage_service.dart' as _i19;
import 'auth/infrastructure/services/object_auth_storage_service.dart' as _i20;
import 'common/application/auth_bloc/auth_bloc.dart' as _i73;
import 'common/application/notification_bloc/notification_bloc.dart' as _i66;
import 'common/application/user_bloc/user_bloc.dart' as _i71;
import 'common/domain/interface/common_storage_interface.dart' as _i22;
import 'common/domain/repositories/auth_repository.dart' as _i44;
import 'common/domain/repositories/user_repository.dart' as _i42;
import 'common/domain/usecases/authenticate_usecase.dart' as _i45;
import 'common/domain/usecases/base_usecases.dart' as _i21;
import 'common/domain/usecases/check_authenticate_usecase.dart' as _i46;
import 'common/domain/usecases/common_usecases.dart' as _i64;
import 'common/domain/usecases/get_stored_user_stream_usecase.dart' as _i52;
import 'common/domain/usecases/get_stored_user_usecase.dart' as _i53;
import 'common/domain/usecases/logout_usecase.dart' as _i54;
import 'common/domain/usecases/populate_textforms_usecase.dart' as _i10;
import 'common/domain/usecases/show_alert_usecase.dart' as _i13;
import 'common/domain/usecases/show_error_usecase.dart' as _i14;
import 'common/domain/usecases/show_prompt_usecase.dart' as _i15;
import 'common/infrastructure/chopper/authenticator/jwt_authenticator.dart'
    as _i24;
import 'common/infrastructure/chopper/interceptors/auth_interceptor.dart'
    as _i17;
import 'common/infrastructure/chopper/interceptors/connectivity_interceptor.dart'
    as _i6;
import 'common/infrastructure/chopper/interceptors/error_interceptor.dart'
    as _i7;
import 'common/infrastructure/chopper/interceptors/paystack_interceptor.dart'
    as _i27;
import 'common/infrastructure/chopper/interceptors/places_interceptor.dart'
    as _i28;
import 'common/infrastructure/register_module.dart' as _i74;
import 'common/infrastructure/services/common_storage_service.dart' as _i23;
import 'delivery/application/delivery_bloc/delivery_bloc.dart' as _i65;
import 'delivery/domain/repositories/delivery_repository.dart' as _i30;
import 'delivery/domain/usecases/choose_duration_usecase.dart' as _i3;
import 'delivery/domain/usecases/delivery_usecases.dart' as _i48;
import 'delivery/domain/usecases/get_location_districts_usecase.dart' as _i31;
import 'delivery/domain/usecases/proceed_to_payment_usecase.dart' as _i34;
import 'delivery/domain/usecases/search_usecase.dart' as _i35;
import 'parcels/application/parcels_bloc/parcel_bloc.dart' as _i67;
import 'parcels/domain/repositories/parcel_repository.dart' as _i32;
import 'parcels/domain/usecases/get_history_usecase.dart' as _i51;
import 'parcels/domain/usecases/parcel_usecases.dart' as _i57;
import 'payment/application/payment_bloc/payment_bloc.dart' as _i68;
import 'payment/domain/interface/payment_interface.dart' as _i25;
import 'payment/domain/repositories/payment_repository.dart' as _i33;
import 'payment/domain/usecases/make_payment_usecase.dart' as _i55;
import 'payment/domain/usecases/open_map_usecase.dart' as _i56;
import 'payment/domain/usecases/payment_usecases.dart' as _i58;
import 'payment/infrastructure/services/payment_service.dart' as _i26;

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
  gh.factory<_i8.OpenSupportUseCase>(() => _i8.OpenSupportUseCase());
  gh.lazySingleton<_i9.PaystackPlugin>(() => registerModule.payStackPlugin);
  gh.factory<_i10.PopulateTextFormUseCase>(
      () => _i10.PopulateTextFormUseCase());
  gh.factory<_i11.SelectImageUsecase>(() => _i11.SelectImageUsecase());
  await gh.factoryAsync<_i12.SharedPreferences>(
      () => registerModule.sharedPreferences,
      preResolve: true);
  gh.factory<_i13.ShowAlertUseCase>(() => _i13.ShowAlertUseCase());
  gh.factory<_i14.ShowErrorUseCase>(() => _i14.ShowErrorUseCase());
  gh.factory<_i15.ShowPromptUseCase>(() => _i15.ShowPromptUseCase());
  gh.factory<_i16.StartCountDownUseCase>(() => _i16.StartCountDownUseCase());
  gh.factory<String>(() => registerModule.apiKey,
      instanceName: 'googleCloudApiKey');
  gh.factory<String>(() => registerModule.secretKey,
      instanceName: 'paystackSecretkey');
  gh.factory<String>(() => registerModule.publicKey,
      instanceName: 'paystackPublicKey');
  gh.factory<String>(() => registerModule.baseUrl, instanceName: 'baseUrl');
  gh.factory<_i17.AuthInterceptor>(() =>
      _i17.AuthInterceptor(sharedPreferences: get<_i12.SharedPreferences>()));
  gh.factory<_i18.AuthStorageInterface>(
      () => _i19.AuthStorageService(get<_i12.SharedPreferences>()),
      registerFor: {_test});
  gh.factory<_i18.AuthStorageInterface>(
      () => _i20.ObjectAuthStorageService(get<_i12.SharedPreferences>()),
      registerFor: {_dev});
  gh.factory<_i21.BaseUseCases>(() => _i21.BaseUseCases(
      showAlertUseCase: get<_i13.ShowAlertUseCase>(),
      showErrorUseCase: get<_i14.ShowErrorUseCase>(),
      showPromptUseCase: get<_i15.ShowPromptUseCase>()));
  gh.factory<_i22.CommonStorageInterface>(
      () => _i23.CommonStorageService(get<_i12.SharedPreferences>()));
  gh.factory<_i24.JwtAuthenticator>(() => registerModule.jwtAuthenticator(
      get<String>(instanceName: 'baseUrl'),
      get<_i12.SharedPreferences>(),
      get<_i4.Client>(instanceName: 'auth'),
      get<_i5.Connectivity>()));
  gh.factory<_i25.PaymentInterface>(
      () => _i26.PaymentService(get<_i9.PaystackPlugin>()));
  gh.factory<_i27.PaystackInterceptor>(() => _i27.PaystackInterceptor(
      paystackSecretKey: get<String>(instanceName: 'paystackSecretkey')));
  gh.factory<_i28.PlacesInterceptor>(() => _i28.PlacesInterceptor(
      apiKey: get<String>(instanceName: 'googleCloudApiKey')));
  gh.factory<_i29.ChopperClient>(() => registerModule.client(get<_i4.Client>(),
      get<String>(instanceName: 'baseUrl'), get<_i24.JwtAuthenticator>()));
  gh.factory<_i30.DeliveryRepository>(() => _i30.DeliveryRepository(
      get<_i29.ChopperClient>(), get<_i22.CommonStorageInterface>()));
  gh.factory<_i31.GetLocationDistrictUseCase>(
      () => _i31.GetLocationDistrictUseCase(get<_i30.DeliveryRepository>()));
  gh.factory<_i32.ParcelRepository>(() => _i32.ParcelRepository(
      get<_i29.ChopperClient>(), get<_i22.CommonStorageInterface>()));
  gh.factory<_i33.PaymentRepository>(() => _i33.PaymentRepository(
      get<_i25.PaymentInterface>(),
      get<_i29.ChopperClient>(),
      get<_i22.CommonStorageInterface>()));
  gh.factory<_i34.ProceedToPaymentUseCase>(
      () => _i34.ProceedToPaymentUseCase(get<_i30.DeliveryRepository>()));
  gh.factory<_i35.SearchUsecase>(
      () => _i35.SearchUsecase(get<_i30.DeliveryRepository>()));
  gh.factory<_i36.SignInRepository>(() => _i36.SignInRepository(
      get<_i29.ChopperClient>(),
      get<_i18.AuthStorageInterface>(),
      get<_i22.CommonStorageInterface>()));
  gh.factory<_i37.SignInUsecase>(
      () => _i37.SignInUsecase(get<_i36.SignInRepository>()));
  gh.factory<_i38.SignUpRepository>(() => _i38.SignUpRepository(
      get<_i29.ChopperClient>(), get<_i18.AuthStorageInterface>()));
  gh.factory<_i39.SignUpUsecase>(
      () => _i39.SignUpUsecase(get<_i38.SignUpRepository>()));
  gh.factory<_i40.SubmitOtpUseCase>(
      () => _i40.SubmitOtpUseCase(get<_i38.SignUpRepository>()));
  gh.factory<_i41.SubmitPasswordOtpUseCase>(
      () => _i41.SubmitPasswordOtpUseCase(get<_i36.SignInRepository>()));
  gh.factory<_i42.UserRepository>(() => _i42.UserRepository(
      get<_i22.CommonStorageInterface>(), get<_i29.ChopperClient>()));
  gh.factory<_i43.AccountRepository>(() => _i43.AccountRepository(
      get<_i22.CommonStorageInterface>(),
      get<_i29.ChopperClient>(),
      get<_i18.AuthStorageInterface>()));
  gh.factory<_i44.AuthRepository>(() => _i44.AuthRepository(
      get<_i22.CommonStorageInterface>(),
      get<_i29.ChopperClient>(),
      get<_i18.AuthStorageInterface>()));
  gh.factory<_i45.AuthenticateUseCase>(() => _i45.AuthenticateUseCase(
      get<_i44.AuthRepository>(), get<_i42.UserRepository>()));
  gh.factory<_i46.CheckAuthenticateUseCase>(
      () => _i46.CheckAuthenticateUseCase(get<_i44.AuthRepository>()));
  gh.factory<_i47.ConfirmPasswordUseCase>(
      () => _i47.ConfirmPasswordUseCase(get<_i36.SignInRepository>()));
  gh.factory<_i48.DeliveryUseCases>(() => _i48.DeliveryUseCases(
      chooseDurationUseCase: get<_i3.ChooseDurationUseCase>(),
      getLocationDistrictUseCase: get<_i31.GetLocationDistrictUseCase>(),
      proceedToPaymentUseCase: get<_i34.ProceedToPaymentUseCase>(),
      searchUsecase: get<_i35.SearchUsecase>()));
  gh.factory<_i49.EditUserUseCase>(
      () => _i49.EditUserUseCase(get<_i43.AccountRepository>()));
  gh.factory<_i50.ForgotPasswordUseCase>(
      () => _i50.ForgotPasswordUseCase(get<_i36.SignInRepository>()));
  gh.factory<_i51.GetHistoryUseCase>(
      () => _i51.GetHistoryUseCase(get<_i32.ParcelRepository>()));
  gh.factory<_i52.GetStoredUserStreamUseCase>(
      () => _i52.GetStoredUserStreamUseCase(get<_i42.UserRepository>()));
  gh.factory<_i53.GetStoredUserUseCase>(
      () => _i53.GetStoredUserUseCase(get<_i42.UserRepository>()));
  gh.factory<_i54.LogoutUseCase>(
      () => _i54.LogoutUseCase(get<_i44.AuthRepository>()));
  gh.factory<_i55.MakePaymentUseCase>(
      () => _i55.MakePaymentUseCase(get<_i33.PaymentRepository>()));
  gh.factory<_i56.OpenMapUseCase>(
      () => _i56.OpenMapUseCase(get<_i33.PaymentRepository>()));
  gh.factory<_i57.ParcelUseCases>(() =>
      _i57.ParcelUseCases(getHistoryUseCase: get<_i51.GetHistoryUseCase>()));
  gh.factory<_i58.PaymentUseCases>(() => _i58.PaymentUseCases(
      makePaymentUseCase: get<_i55.MakePaymentUseCase>(),
      openMapUseCase: get<_i56.OpenMapUseCase>()));
  gh.factory<_i59.RequestOtpUseCase>(
      () => _i59.RequestOtpUseCase(get<_i38.SignUpRepository>()));
  gh.factory<_i60.ResetPasswordUseCase>(
      () => _i60.ResetPasswordUseCase(get<_i43.AccountRepository>()));
  gh.factory<_i61.UploadPhotoUsecase>(
      () => _i61.UploadPhotoUsecase(get<_i43.AccountRepository>()));
  gh.factory<_i62.AccountUseCases>(() => _i62.AccountUseCases(
      editUserUseCase: get<_i49.EditUserUseCase>(),
      openSupportUseCase: get<_i8.OpenSupportUseCase>(),
      resetPasswordUseCase: get<_i60.ResetPasswordUseCase>(),
      uploadPhotoUsecase: get<_i61.UploadPhotoUsecase>(),
      selectImageUsecase: get<_i11.SelectImageUsecase>()));
  gh.factory<_i63.AuthUseCases>(() => _i63.AuthUseCases(
      signInUsecase: get<_i37.SignInUsecase>(),
      signUpUsecase: get<_i39.SignUpUsecase>(),
      requestOtpUseCase: get<_i59.RequestOtpUseCase>(),
      submitOtpUseCase: get<_i40.SubmitOtpUseCase>(),
      startCountDownUseCase: get<_i16.StartCountDownUseCase>(),
      confirmPasswordUseCase: get<_i47.ConfirmPasswordUseCase>(),
      forgotPasswordUseCase: get<_i50.ForgotPasswordUseCase>(),
      submitPasswordOtpUseCase: get<_i41.SubmitPasswordOtpUseCase>()));
  gh.factory<_i64.CommonUseCases>(() => _i64.CommonUseCases(
      getStoredUserUseCase: get<_i53.GetStoredUserUseCase>(),
      authenticateUseCase: get<_i45.AuthenticateUseCase>(),
      logoutUseCase: get<_i54.LogoutUseCase>(),
      populateTextFormUseCase: get<_i10.PopulateTextFormUseCase>(),
      getStoredUserStreamUseCase: get<_i52.GetStoredUserStreamUseCase>()));
  gh.factory<_i65.DeliveryBloc>(
      () => _i65.DeliveryBloc(get<_i48.DeliveryUseCases>()));
  gh.factory<_i66.NotificationBloc>(
      () => _i66.NotificationBloc(get<_i64.CommonUseCases>()));
  gh.factory<_i67.ParcelBloc>(
      () => _i67.ParcelBloc(get<_i57.ParcelUseCases>()));
  gh.factory<_i68.PaymentBloc>(
      () => _i68.PaymentBloc(get<_i58.PaymentUseCases>()));
  gh.factory<_i69.SignInBloc>(() => _i69.SignInBloc(get<_i63.AuthUseCases>()));
  gh.factory<_i70.SignUpBloc>(() => _i70.SignUpBloc(get<_i63.AuthUseCases>()));
  gh.factory<_i71.UserBloc>(() => _i71.UserBloc(get<_i64.CommonUseCases>()));
  gh.factory<_i72.AccountBloc>(
      () => _i72.AccountBloc(get<_i62.AccountUseCases>()));
  gh.factory<_i73.AuthBloc>(() => _i73.AuthBloc(get<_i64.CommonUseCases>()));
  return get;
}

class _$RegisterModule extends _i74.RegisterModule {}
