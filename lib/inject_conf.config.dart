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

import 'account/application/account_bloc/account_bloc.dart' as _i68;
import 'account/domain/repositories/account_repository.dart' as _i43;
import 'account/domain/usecases/account_usecases.dart' as _i59;
import 'account/domain/usecases/edit_user_usecase.dart' as _i49;
import 'account/domain/usecases/open_support_usecase.dart' as _i8;
import 'account/domain/usecases/reset_password_usecase.dart' as _i58;
import 'auth/application/bloc/sign_in_bloc/signin_bloc.dart' as _i65;
import 'auth/application/bloc/sign_up_bloc/signup_bloc.dart' as _i66;
import 'auth/domain/interface/auth_storage_interface.dart' as _i18;
import 'auth/domain/repositories/sign_in_repository.dart' as _i37;
import 'auth/domain/repositories/sign_up_repository.dart' as _i39;
import 'auth/domain/usecases/auth_usecases.dart' as _i60;
import 'auth/domain/usecases/confirm_password_usecase.dart' as _i47;
import 'auth/domain/usecases/forgot_password_usecase.dart' as _i50;
import 'auth/domain/usecases/request_otp_usecase.dart' as _i57;
import 'auth/domain/usecases/sign_in_usecase.dart' as _i38;
import 'auth/domain/usecases/sign_up_usecase.dart' as _i40;
import 'auth/domain/usecases/start_countdown_usecase.dart' as _i16;
import 'auth/domain/usecases/submit_otp_usecase.dart' as _i41;
import 'auth/domain/usecases/submit_password_otp_usecase.dart' as _i42;
import 'auth/infrastructure/services/auth_storage_service.dart' as _i19;
import 'common/application/auth_bloc/auth_bloc.dart' as _i69;
import 'common/application/user_bloc/user_bloc.dart' as _i67;
import 'common/domain/interface/common_storage_interface.dart' as _i21;
import 'common/domain/repositories/auth_repository.dart' as _i44;
import 'common/domain/repositories/user_repository.dart' as _i28;
import 'common/domain/usecases/authenticate_usecase.dart' as _i45;
import 'common/domain/usecases/base_usecases.dart' as _i20;
import 'common/domain/usecases/check_authenticate_usecase.dart' as _i46;
import 'common/domain/usecases/common_usecases.dart' as _i61;
import 'common/domain/usecases/get_stored_user_usecase.dart' as _i32;
import 'common/domain/usecases/logout_usecase.dart' as _i52;
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
import 'common/infrastructure/register_module.dart' as _i70;
import 'common/infrastructure/services/common_storage_service.dart' as _i22;
import 'delivery/application/delivery_bloc/delivery_bloc.dart' as _i62;
import 'delivery/domain/repositories/delivery_repository.dart' as _i30;
import 'delivery/domain/usecases/choose_duration_usecase.dart' as _i3;
import 'delivery/domain/usecases/delivery_usecases.dart' as _i48;
import 'delivery/domain/usecases/get_location_districts_usecase.dart' as _i31;
import 'delivery/domain/usecases/proceed_to_payment_usecase.dart' as _i35;
import 'delivery/domain/usecases/search_usecase.dart' as _i36;
import 'parcels/application/parcels_bloc/parcel_bloc.dart' as _i63;
import 'parcels/domain/repositories/parcel_repository.dart' as _i33;
import 'parcels/domain/usecases/get_history_usecase.dart' as _i51;
import 'parcels/domain/usecases/parcel_usecases.dart' as _i55;
import 'payment/application/payment_bloc/payment_bloc.dart' as _i64;
import 'payment/domain/interface/payment_interface.dart' as _i24;
import 'payment/domain/repositories/payment_repository.dart' as _i34;
import 'payment/domain/usecases/make_payment_usecase.dart' as _i53;
import 'payment/domain/usecases/open_map_usecase.dart' as _i54;
import 'payment/domain/usecases/payment_usecases.dart' as _i56;
import 'payment/infrastructure/services/payment_service.dart'
    as _i25; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<String>(() => registerModule.baseUrl, instanceName: 'baseUrl');
  gh.factory<String>(() => registerModule.secretKey,
      instanceName: 'paystackSecretkey');
  gh.factory<String>(() => registerModule.publicKey,
      instanceName: 'paystackPublicKey');
  gh.factory<String>(() => registerModule.apiKey,
      instanceName: 'googleCloudApiKey');
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
  gh.factory<_i36.SearchUsecase>(
      () => _i36.SearchUsecase(get<_i30.DeliveryRepository>()));
  gh.factory<_i37.SignInRepository>(() => _i37.SignInRepository(
      get<_i29.ChopperClient>(), get<_i18.AuthStorageInterface>()));
  gh.factory<_i38.SignInUsecase>(
      () => _i38.SignInUsecase(get<_i37.SignInRepository>()));
  gh.factory<_i39.SignUpRepository>(() => _i39.SignUpRepository(
      get<_i29.ChopperClient>(), get<_i18.AuthStorageInterface>()));
  gh.factory<_i40.SignUpUsecase>(
      () => _i40.SignUpUsecase(get<_i39.SignUpRepository>()));
  gh.factory<_i41.SubmitOtpUseCase>(
      () => _i41.SubmitOtpUseCase(get<_i39.SignUpRepository>()));
  gh.factory<_i42.SubmitPasswordOtpUseCase>(
      () => _i42.SubmitPasswordOtpUseCase(get<_i37.SignInRepository>()));
  gh.factory<_i43.AccountRepository>(() => _i43.AccountRepository(
      get<_i21.CommonStorageInterface>(),
      get<_i29.ChopperClient>(),
      get<_i18.AuthStorageInterface>()));
  gh.factory<_i44.AuthRepository>(() => _i44.AuthRepository(
      get<_i21.CommonStorageInterface>(),
      get<_i29.ChopperClient>(),
      get<_i18.AuthStorageInterface>()));
  gh.factory<_i45.AuthenticateUseCase>(
      () => _i45.AuthenticateUseCase(get<_i44.AuthRepository>()));
  gh.factory<_i46.CheckAuthenticateUseCase>(
      () => _i46.CheckAuthenticateUseCase(get<_i44.AuthRepository>()));
  gh.factory<_i47.ConfirmPasswordUseCase>(
      () => _i47.ConfirmPasswordUseCase(get<_i37.SignInRepository>()));
  gh.factory<_i48.DeliveryUseCases>(() => _i48.DeliveryUseCases(
      chooseDurationUseCase: get<_i3.ChooseDurationUseCase>(),
      getLocationDistrictUseCase: get<_i31.GetLocationDistrictUseCase>(),
      proceedToPaymentUseCase: get<_i35.ProceedToPaymentUseCase>(),
      searchUsecase: get<_i36.SearchUsecase>()));
  gh.factory<_i49.EditUserUseCase>(
      () => _i49.EditUserUseCase(get<_i43.AccountRepository>()));
  gh.factory<_i50.ForgotPasswordUseCase>(
      () => _i50.ForgotPasswordUseCase(get<_i37.SignInRepository>()));
  gh.factory<_i51.GetHistoryUseCase>(
      () => _i51.GetHistoryUseCase(get<_i33.ParcelRepository>()));
  gh.factory<_i52.LogoutUseCase>(
      () => _i52.LogoutUseCase(get<_i44.AuthRepository>()));
  gh.factory<_i53.MakePaymentUseCase>(
      () => _i53.MakePaymentUseCase(get<_i34.PaymentRepository>()));
  gh.factory<_i54.OpenMapUseCase>(
      () => _i54.OpenMapUseCase(get<_i34.PaymentRepository>()));
  gh.factory<_i55.ParcelUseCases>(() =>
      _i55.ParcelUseCases(getHistoryUseCase: get<_i51.GetHistoryUseCase>()));
  gh.factory<_i56.PaymentUseCases>(() => _i56.PaymentUseCases(
      makePaymentUseCase: get<_i53.MakePaymentUseCase>(),
      openMapUseCase: get<_i54.OpenMapUseCase>()));
  gh.factory<_i57.RequestOtpUseCase>(
      () => _i57.RequestOtpUseCase(get<_i39.SignUpRepository>()));
  gh.factory<_i58.ResetPasswordUseCase>(
      () => _i58.ResetPasswordUseCase(get<_i43.AccountRepository>()));
  gh.factory<_i59.AccountUseCases>(() => _i59.AccountUseCases(
      editUserUseCase: get<_i49.EditUserUseCase>(),
      openSupportUseCase: get<_i8.OpenSupportUseCase>(),
      resetPasswordUseCase: get<_i58.ResetPasswordUseCase>()));
  gh.factory<_i60.AuthUseCases>(() => _i60.AuthUseCases(
      signInUsecase: get<_i38.SignInUsecase>(),
      signUpUsecase: get<_i40.SignUpUsecase>(),
      requestOtpUseCase: get<_i57.RequestOtpUseCase>(),
      submitOtpUseCase: get<_i41.SubmitOtpUseCase>(),
      startCountDownUseCase: get<_i16.StartCountDownUseCase>(),
      confirmPasswordUseCase: get<_i47.ConfirmPasswordUseCase>(),
      forgotPasswordUseCase: get<_i50.ForgotPasswordUseCase>(),
      submitPasswordOtpUseCase: get<_i42.SubmitPasswordOtpUseCase>()));
  gh.factory<_i61.CommonUseCases>(() => _i61.CommonUseCases(
      getStoredUserUseCase: get<_i32.GetStoredUserUseCase>(),
      authenticateUseCase: get<_i45.AuthenticateUseCase>(),
      logoutUseCase: get<_i52.LogoutUseCase>(),
      populateTextFormUseCase: get<_i11.PopulateTextFormUseCase>()));
  gh.factory<_i62.DeliveryBloc>(
      () => _i62.DeliveryBloc(get<_i48.DeliveryUseCases>()));
  gh.factory<_i63.ParcelBloc>(
      () => _i63.ParcelBloc(get<_i55.ParcelUseCases>()));
  gh.factory<_i64.PaymentBloc>(
      () => _i64.PaymentBloc(get<_i56.PaymentUseCases>()));
  gh.factory<_i65.SignInBloc>(() => _i65.SignInBloc(get<_i60.AuthUseCases>()));
  gh.factory<_i66.SignUpBloc>(() => _i66.SignUpBloc(get<_i60.AuthUseCases>()));
  gh.factory<_i67.UserBloc>(() => _i67.UserBloc(get<_i61.CommonUseCases>()));
  gh.factory<_i68.AccountBloc>(
      () => _i68.AccountBloc(get<_i59.AccountUseCases>()));
  gh.factory<_i69.AuthBloc>(() => _i69.AuthBloc(get<_i61.CommonUseCases>()));
  return get;
}

class _$RegisterModule extends _i70.RegisterModule {}
