// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:chopper/chopper.dart' as _i29;
import 'package:connectivity/connectivity.dart' as _i5;
import 'package:flutter_paystack/flutter_paystack.dart' as _i10;
import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i12;

import 'account/application/account_bloc/account_bloc.dart' as _i67;
import 'account/domain/repositories/account_repository.dart' as _i42;
import 'account/domain/usecases/account_usecases.dart' as _i58;
import 'account/domain/usecases/edit_user_usecase.dart' as _i48;
import 'account/domain/usecases/open_support_usecase.dart' as _i8;
import 'account/domain/usecases/reset_password_usecase.dart' as _i57;
import 'auth/application/bloc/sign_in_bloc/signin_bloc.dart' as _i64;
import 'auth/application/bloc/sign_up_bloc/signup_bloc.dart' as _i65;
import 'auth/domain/interface/auth_storage_interface.dart' as _i18;
import 'auth/domain/repositories/sign_in_repository.dart' as _i36;
import 'auth/domain/repositories/sign_up_repository.dart' as _i38;
import 'auth/domain/usecases/auth_usecases.dart' as _i59;
import 'auth/domain/usecases/confirm_password_usecase.dart' as _i46;
import 'auth/domain/usecases/forgot_password_usecase.dart' as _i49;
import 'auth/domain/usecases/request_otp_usecase.dart' as _i56;
import 'auth/domain/usecases/sign_in_usecase.dart' as _i37;
import 'auth/domain/usecases/sign_up_usecase.dart' as _i39;
import 'auth/domain/usecases/start_countdown_usecase.dart' as _i16;
import 'auth/domain/usecases/submit_otp_usecase.dart' as _i40;
import 'auth/domain/usecases/submit_password_otp_usecase.dart' as _i41;
import 'auth/infrastructure/services/auth_storage_service.dart' as _i19;
import 'common/application/auth_bloc/auth_bloc.dart' as _i68;
import 'common/application/user_bloc/user_bloc.dart' as _i66;
import 'common/domain/interface/common_storage_interface.dart' as _i21;
import 'common/domain/repositories/auth_repository.dart' as _i43;
import 'common/domain/repositories/user_repository.dart' as _i28;
import 'common/domain/usecases/authenticate_usecase.dart' as _i44;
import 'common/domain/usecases/base_usecases.dart' as _i20;
import 'common/domain/usecases/check_authenticate_usecase.dart' as _i45;
import 'common/domain/usecases/common_usecases.dart' as _i60;
import 'common/domain/usecases/get_stored_user_usecase.dart' as _i32;
import 'common/domain/usecases/logout_usecase.dart' as _i51;
import 'common/domain/usecases/populate_textforms_usecase.dart' as _i11;
import 'common/domain/usecases/show_alert_usecase.dart' as _i13;
import 'common/domain/usecases/show_error_usecase.dart' as _i14;
import 'common/domain/usecases/show_prompt_usecase.dart' as _i15;
import 'common/infrastructure/chopper/auth_interceptor.dart' as _i17;
import 'common/infrastructure/chopper/connectivity_interceptor.dart' as _i6;
import 'common/infrastructure/chopper/error_interceptor.dart' as _i7;
import 'common/infrastructure/chopper/jwt_authenticator.dart' as _i23;
import 'common/infrastructure/chopper/paystack_error_interceptor.dart' as _i9;
import 'common/infrastructure/chopper/paystack_interceptor.dart' as _i26;
import 'common/infrastructure/chopper/places_interceptor.dart' as _i27;
import 'common/infrastructure/register_module.dart' as _i69;
import 'common/infrastructure/services/common_storage_service.dart' as _i22;
import 'delivery/application/delivery_bloc/delivery_bloc.dart' as _i61;
import 'delivery/domain/repositories/delivery_repository.dart' as _i30;
import 'delivery/domain/usecases/choose_duration_usecase.dart' as _i3;
import 'delivery/domain/usecases/delivery_usecases.dart' as _i47;
import 'delivery/domain/usecases/get_location_districts_usecase.dart' as _i31;
import 'delivery/domain/usecases/proceed_to_payment_usecase.dart' as _i35;
import 'parcels/application/parcels_bloc/parcel_bloc.dart' as _i62;
import 'parcels/domain/repositories/parcel_repository.dart' as _i33;
import 'parcels/domain/usecases/get_history_usecase.dart' as _i50;
import 'parcels/domain/usecases/parcel_usecases.dart' as _i54;
import 'payment/application/payment_bloc/payment_bloc.dart' as _i63;
import 'payment/domain/interface/payment_interface.dart' as _i24;
import 'payment/domain/repositories/payment_repository.dart' as _i34;
import 'payment/domain/usecases/make_payment_usecase.dart' as _i52;
import 'payment/domain/usecases/open_map_usecase.dart' as _i53;
import 'payment/domain/usecases/payment_usecases.dart' as _i55;
import 'payment/infrastructure/services/payment_service.dart'
    as _i25; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.factory<_i3.ChooseDurationUseCase>(() => _i3.ChooseDurationUseCase());
  gh.singleton<_i4.Client>(registerModule.httpClient);
  gh.factory<_i4.Client>(() => registerModule.authClient, instanceName: 'auth');
  gh.lazySingleton<_i5.Connectivity>(() => registerModule.connectivity);
  gh.factory<_i6.ConnectivityInterceptor>(
      () => _i6.ConnectivityInterceptor(connectivity: get<_i5.Connectivity>()));
  gh.factory<_i7.ErrorInterceptor>(() => _i7.ErrorInterceptor());
  gh.factory<_i8.OpenSupportUseCase>(() => _i8.OpenSupportUseCase());
  gh.factory<_i9.PaystackErrorInterceptor>(
      () => _i9.PaystackErrorInterceptor());
  gh.lazySingleton<_i10.PaystackPlugin>(() => registerModule.payStackPlugin);
  gh.factory<_i11.PopulateTextFormUseCase>(
      () => _i11.PopulateTextFormUseCase());
  await gh.factoryAsync<_i12.SharedPreferences>(
      () => registerModule.sharedPreferences,
      preResolve: true);
  gh.factory<_i13.ShowAlertUseCase>(() => _i13.ShowAlertUseCase());
  gh.factory<_i14.ShowErrorUseCase>(() => _i14.ShowErrorUseCase());
  gh.factory<_i15.ShowPromptUseCase>(() => _i15.ShowPromptUseCase());
  gh.factory<_i16.StartCountDownUseCase>(() => _i16.StartCountDownUseCase());
  gh.factory<String>(() => registerModule.publicKey,
      instanceName: 'paystackPublicKey');
  gh.factory<String>(() => registerModule.secretKey,
      instanceName: 'paystackSecretkey');
  gh.factory<String>(() => registerModule.apiKey,
      instanceName: 'googleCloudApiKey');
  gh.factory<String>(() => registerModule.baseUrl, instanceName: 'baseUrl');
  gh.factory<_i17.AuthInterceptor>(() =>
      _i17.AuthInterceptor(sharedPreferences: get<_i12.SharedPreferences>()));
  gh.factory<_i18.AuthStorageInterface>(
      () => _i19.AuthStorageService(get<_i12.SharedPreferences>()));
  gh.factory<_i20.BaseUseCases>(() => _i20.BaseUseCases(
      showAlertUseCase: get<_i13.ShowAlertUseCase>(),
      showErrorUseCase: get<_i14.ShowErrorUseCase>(),
      showPromptUseCase: get<_i15.ShowPromptUseCase>()));
  gh.factory<_i21.CommonStorageInterface>(
      () => _i22.CommonStorageService(get<_i12.SharedPreferences>()));
  gh.factory<_i23.JwtAuthenticator>(() => registerModule.jwtAuthenticator(
      get<String>(instanceName: 'baseUrl'),
      get<_i12.SharedPreferences>(),
      get<_i4.Client>(instanceName: 'auth'),
      get<_i5.Connectivity>()));
  gh.factory<_i24.PaymentInterface>(
      () => _i25.PaymentService(get<_i10.PaystackPlugin>()));
  gh.factory<_i26.PaystackInterceptor>(() => _i26.PaystackInterceptor(
      paystackSecretKey: get<String>(instanceName: 'paystackSecretkey')));
  gh.factory<_i27.PlacesInterceptor>(() => _i27.PlacesInterceptor(
      apiKey: get<String>(instanceName: 'googleCloudApiKey')));
  gh.factory<_i28.UserRepository>(
      () => _i28.UserRepository(get<_i21.CommonStorageInterface>()));
  gh.factory<_i29.ChopperClient>(() => registerModule.client(get<_i4.Client>(),
      get<String>(instanceName: 'baseUrl'), get<_i23.JwtAuthenticator>()));
  gh.factory<_i30.DeliveryRepository>(() => _i30.DeliveryRepository(
      get<_i29.ChopperClient>(), get<_i21.CommonStorageInterface>()));
  gh.factory<_i31.GetLocationDistrictUseCase>(
      () => _i31.GetLocationDistrictUseCase(get<_i30.DeliveryRepository>()));
  gh.factory<_i32.GetStoredUserUseCase>(
      () => _i32.GetStoredUserUseCase(get<_i28.UserRepository>()));
  gh.factory<_i33.ParcelRepository>(() => _i33.ParcelRepository(
      get<_i29.ChopperClient>(), get<_i21.CommonStorageInterface>()));
  gh.factory<_i34.PaymentRepository>(() => _i34.PaymentRepository(
      get<_i24.PaymentInterface>(),
      get<_i29.ChopperClient>(),
      get<_i21.CommonStorageInterface>()));
  gh.factory<_i35.ProceedToPaymentUseCase>(
      () => _i35.ProceedToPaymentUseCase(get<_i30.DeliveryRepository>()));
  gh.factory<_i36.SignInRepository>(() => _i36.SignInRepository(
      get<_i29.ChopperClient>(), get<_i18.AuthStorageInterface>()));
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
  gh.factory<_i42.AccountRepository>(() => _i42.AccountRepository(
      get<_i21.CommonStorageInterface>(),
      get<_i29.ChopperClient>(),
      get<_i18.AuthStorageInterface>()));
  gh.factory<_i43.AuthRepository>(() => _i43.AuthRepository(
      get<_i21.CommonStorageInterface>(),
      get<_i29.ChopperClient>(),
      get<_i18.AuthStorageInterface>()));
  gh.factory<_i44.AuthenticateUseCase>(
      () => _i44.AuthenticateUseCase(get<_i43.AuthRepository>()));
  gh.factory<_i45.CheckAuthenticateUseCase>(
      () => _i45.CheckAuthenticateUseCase(get<_i43.AuthRepository>()));
  gh.factory<_i46.ConfirmPasswordUseCase>(
      () => _i46.ConfirmPasswordUseCase(get<_i36.SignInRepository>()));
  gh.factory<_i47.DeliveryUseCases>(() => _i47.DeliveryUseCases(
      chooseDurationUseCase: get<_i3.ChooseDurationUseCase>(),
      getLocationDistrictUseCase: get<_i31.GetLocationDistrictUseCase>(),
      proceedToPaymentUseCase: get<_i35.ProceedToPaymentUseCase>()));
  gh.factory<_i48.EditUserUseCase>(
      () => _i48.EditUserUseCase(get<_i42.AccountRepository>()));
  gh.factory<_i49.ForgotPasswordUseCase>(
      () => _i49.ForgotPasswordUseCase(get<_i36.SignInRepository>()));
  gh.factory<_i50.GetHistoryUseCase>(
      () => _i50.GetHistoryUseCase(get<_i33.ParcelRepository>()));
  gh.factory<_i51.LogoutUseCase>(
      () => _i51.LogoutUseCase(get<_i43.AuthRepository>()));
  gh.factory<_i52.MakePaymentUseCase>(
      () => _i52.MakePaymentUseCase(get<_i34.PaymentRepository>()));
  gh.factory<_i53.OpenMapUseCase>(
      () => _i53.OpenMapUseCase(get<_i34.PaymentRepository>()));
  gh.factory<_i54.ParcelUseCases>(() =>
      _i54.ParcelUseCases(getHistoryUseCase: get<_i50.GetHistoryUseCase>()));
  gh.factory<_i55.PaymentUseCases>(() => _i55.PaymentUseCases(
      makePaymentUseCase: get<_i52.MakePaymentUseCase>(),
      openMapUseCase: get<_i53.OpenMapUseCase>()));
  gh.factory<_i56.RequestOtpUseCase>(
      () => _i56.RequestOtpUseCase(get<_i38.SignUpRepository>()));
  gh.factory<_i57.ResetPasswordUseCase>(
      () => _i57.ResetPasswordUseCase(get<_i42.AccountRepository>()));
  gh.factory<_i58.AccountUseCases>(() => _i58.AccountUseCases(
      editUserUseCase: get<_i48.EditUserUseCase>(),
      openSupportUseCase: get<_i8.OpenSupportUseCase>(),
      resetPasswordUseCase: get<_i57.ResetPasswordUseCase>()));
  gh.factory<_i59.AuthUseCases>(() => _i59.AuthUseCases(
      signInUsecase: get<_i37.SignInUsecase>(),
      signUpUsecase: get<_i39.SignUpUsecase>(),
      requestOtpUseCase: get<_i56.RequestOtpUseCase>(),
      submitOtpUseCase: get<_i40.SubmitOtpUseCase>(),
      startCountDownUseCase: get<_i16.StartCountDownUseCase>(),
      confirmPasswordUseCase: get<_i46.ConfirmPasswordUseCase>(),
      forgotPasswordUseCase: get<_i49.ForgotPasswordUseCase>(),
      submitPasswordOtpUseCase: get<_i41.SubmitPasswordOtpUseCase>()));
  gh.factory<_i60.CommonUseCases>(() => _i60.CommonUseCases(
      getStoredUserUseCase: get<_i32.GetStoredUserUseCase>(),
      authenticateUseCase: get<_i44.AuthenticateUseCase>(),
      logoutUseCase: get<_i51.LogoutUseCase>(),
      populateTextFormUseCase: get<_i11.PopulateTextFormUseCase>()));
  gh.factory<_i61.DeliveryBloc>(
      () => _i61.DeliveryBloc(get<_i47.DeliveryUseCases>()));
  gh.factory<_i62.ParcelBloc>(
      () => _i62.ParcelBloc(get<_i54.ParcelUseCases>()));
  gh.factory<_i63.PaymentBloc>(
      () => _i63.PaymentBloc(get<_i55.PaymentUseCases>()));
  gh.factory<_i64.SignInBloc>(() => _i64.SignInBloc(get<_i59.AuthUseCases>()));
  gh.factory<_i65.SignUpBloc>(() => _i65.SignUpBloc(get<_i59.AuthUseCases>()));
  gh.factory<_i66.UserBloc>(() => _i66.UserBloc(get<_i60.CommonUseCases>()));
  gh.factory<_i67.AccountBloc>(
      () => _i67.AccountBloc(get<_i58.AccountUseCases>()));
  gh.factory<_i68.AuthBloc>(() => _i68.AuthBloc(get<_i60.CommonUseCases>()));
  return get;
}

class _$RegisterModule extends _i69.RegisterModule {}
