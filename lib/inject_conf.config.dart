// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:chopper/chopper.dart' as _i27;
import 'package:connectivity/connectivity.dart' as _i5;
import 'package:flutter_paystack/flutter_paystack.dart' as _i9;
import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i11;

import 'account/application/account_bloc/account_bloc.dart' as _i64;
import 'account/domain/repositories/account_repository.dart' as _i40;
import 'account/domain/usecases/account_usecases.dart' as _i55;
import 'account/domain/usecases/edit_user_usecase.dart' as _i46;
import 'account/domain/usecases/reset_password_usecase.dart' as _i54;
import 'auth/application/bloc/sign_in_bloc/signin_bloc.dart' as _i61;
import 'auth/application/bloc/sign_up_bloc/signup_bloc.dart' as _i62;
import 'auth/domain/interface/auth_storage_interface.dart' as _i17;
import 'auth/domain/repositories/sign_in_repository.dart' as _i34;
import 'auth/domain/repositories/sign_up_repository.dart' as _i36;
import 'auth/domain/usecases/auth_usecases.dart' as _i56;
import 'auth/domain/usecases/confirm_password_usecase.dart' as _i44;
import 'auth/domain/usecases/forgot_password_usecase.dart' as _i47;
import 'auth/domain/usecases/request_otp_usecase.dart' as _i53;
import 'auth/domain/usecases/sign_in_usecase.dart' as _i35;
import 'auth/domain/usecases/sign_up_usecase.dart' as _i37;
import 'auth/domain/usecases/start_countdown_usecase.dart' as _i15;
import 'auth/domain/usecases/submit_otp_usecase.dart' as _i38;
import 'auth/domain/usecases/submit_password_otp_usecase.dart' as _i39;
import 'auth/infrastructure/services/auth_storage_service.dart' as _i18;
import 'common/application/auth_bloc/auth_bloc.dart' as _i65;
import 'common/application/user_bloc/user_bloc.dart' as _i63;
import 'common/domain/interface/common_storage_interface.dart' as _i20;
import 'common/domain/repositories/auth_repository.dart' as _i41;
import 'common/domain/repositories/user_repository.dart' as _i26;
import 'common/domain/usecases/authenticate_usecase.dart' as _i42;
import 'common/domain/usecases/base_usecases.dart' as _i19;
import 'common/domain/usecases/check_authenticate_usecase.dart' as _i43;
import 'common/domain/usecases/common_usecases.dart' as _i57;
import 'common/domain/usecases/get_stored_user_usecase.dart' as _i30;
import 'common/domain/usecases/logout_usecase.dart' as _i49;
import 'common/domain/usecases/populate_textforms_usecase.dart' as _i10;
import 'common/domain/usecases/show_alert_usecase.dart' as _i12;
import 'common/domain/usecases/show_error_usecase.dart' as _i13;
import 'common/domain/usecases/show_prompt_usecase.dart' as _i14;
import 'common/infrastructure/chopper/auth_interceptor.dart' as _i16;
import 'common/infrastructure/chopper/connectivity_interceptor.dart' as _i6;
import 'common/infrastructure/chopper/error_interceptor.dart' as _i7;
import 'common/infrastructure/chopper/jwt_authenticator.dart' as _i22;
import 'common/infrastructure/chopper/paystack_error_interceptor.dart' as _i8;
import 'common/infrastructure/chopper/paystack_interceptor.dart' as _i25;
import 'common/infrastructure/register_module.dart' as _i66;
import 'common/infrastructure/services/common_storage_service.dart' as _i21;
import 'delivery/application/delivery_bloc/delivery_bloc.dart' as _i58;
import 'delivery/domain/repositories/delivery_repository.dart' as _i28;
import 'delivery/domain/usecases/choose_duration_usecase.dart' as _i3;
import 'delivery/domain/usecases/delivery_usecases.dart' as _i45;
import 'delivery/domain/usecases/get_location_districts_usecase.dart' as _i29;
import 'delivery/domain/usecases/proceed_to_payment_usecase.dart' as _i33;
import 'parcels/application/parcels_bloc/parcel_bloc.dart' as _i59;
import 'parcels/domain/repositories/parcel_repository.dart' as _i31;
import 'parcels/domain/usecases/get_history_usecase.dart' as _i48;
import 'parcels/domain/usecases/parcel_usecases.dart' as _i51;
import 'payment/application/payment_bloc/payment_bloc.dart' as _i60;
import 'payment/domain/interface/payment_interface.dart' as _i23;
import 'payment/domain/repositories/payment_repository.dart' as _i32;
import 'payment/domain/usecases/make_payment_usecase.dart' as _i50;
import 'payment/domain/usecases/payment_usecases.dart' as _i52;
import 'payment/infrastructure/services/payment_service.dart'
    as _i24; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i8.PaystackErrorInterceptor>(
      () => _i8.PaystackErrorInterceptor());
  gh.lazySingleton<_i9.PaystackPlugin>(() => registerModule.payStackPlugin);
  gh.factory<_i10.PopulateTextFormUseCase>(
      () => _i10.PopulateTextFormUseCase());
  await gh.factoryAsync<_i11.SharedPreferences>(
      () => registerModule.sharedPreferences,
      preResolve: true);
  gh.factory<_i12.ShowAlertUseCase>(() => _i12.ShowAlertUseCase());
  gh.factory<_i13.ShowErrorUseCase>(() => _i13.ShowErrorUseCase());
  gh.factory<_i14.ShowPromptUseCase>(() => _i14.ShowPromptUseCase());
  gh.factory<_i15.StartCountDownUseCase>(() => _i15.StartCountDownUseCase());
  gh.factory<String>(() => registerModule.publicKey,
      instanceName: 'paystackPublicKey');
  gh.factory<String>(() => registerModule.baseUrl, instanceName: 'baseUrl');
  gh.factory<String>(() => registerModule.secretKey,
      instanceName: 'paystackSecretkey');
  gh.factory<_i16.AuthInterceptor>(() =>
      _i16.AuthInterceptor(sharedPreferences: get<_i11.SharedPreferences>()));
  gh.factory<_i17.AuthStorageInterface>(
      () => _i18.AuthStorageService(get<_i11.SharedPreferences>()));
  gh.factory<_i19.BaseUseCases>(() => _i19.BaseUseCases(
      showAlertUseCase: get<_i12.ShowAlertUseCase>(),
      showErrorUseCase: get<_i13.ShowErrorUseCase>(),
      showPromptUseCase: get<_i14.ShowPromptUseCase>()));
  gh.factory<_i20.CommonStorageInterface>(
      () => _i21.CommonStorageService(get<_i11.SharedPreferences>()));
  gh.factory<_i22.JwtAuthenticator>(() => registerModule.jwtAuthenticator(
      get<String>(instanceName: 'baseUrl'),
      get<_i11.SharedPreferences>(),
      get<_i4.Client>(instanceName: 'auth'),
      get<_i5.Connectivity>()));
  gh.factory<_i23.PaymentInterface>(
      () => _i24.PaymentService(get<_i9.PaystackPlugin>()));
  gh.factory<_i25.PaystackInterceptor>(() => _i25.PaystackInterceptor(
      paystackSecretKey: get<String>(instanceName: 'paystackSecretkey')));
  gh.factory<_i26.UserRepository>(
      () => _i26.UserRepository(get<_i20.CommonStorageInterface>()));
  gh.factory<_i27.ChopperClient>(() => registerModule.client(get<_i4.Client>(),
      get<String>(instanceName: 'baseUrl'), get<_i22.JwtAuthenticator>()));
  gh.factory<_i28.DeliveryRepository>(() => _i28.DeliveryRepository(
      get<_i27.ChopperClient>(), get<_i20.CommonStorageInterface>()));
  gh.factory<_i29.GetLocationDistrictUseCase>(
      () => _i29.GetLocationDistrictUseCase(get<_i28.DeliveryRepository>()));
  gh.factory<_i30.GetStoredUserUseCase>(
      () => _i30.GetStoredUserUseCase(get<_i26.UserRepository>()));
  gh.factory<_i31.ParcelRepository>(() => _i31.ParcelRepository(
      get<_i27.ChopperClient>(), get<_i20.CommonStorageInterface>()));
  gh.factory<_i32.PaymentRepository>(() => _i32.PaymentRepository(
      get<_i23.PaymentInterface>(),
      get<_i27.ChopperClient>(),
      get<_i20.CommonStorageInterface>()));
  gh.factory<_i33.ProceedToPaymentUseCase>(
      () => _i33.ProceedToPaymentUseCase(get<_i28.DeliveryRepository>()));
  gh.factory<_i34.SignInRepository>(() => _i34.SignInRepository(
      get<_i27.ChopperClient>(), get<_i17.AuthStorageInterface>()));
  gh.factory<_i35.SignInUsecase>(
      () => _i35.SignInUsecase(get<_i34.SignInRepository>()));
  gh.factory<_i36.SignUpRepository>(() => _i36.SignUpRepository(
      get<_i27.ChopperClient>(), get<_i17.AuthStorageInterface>()));
  gh.factory<_i37.SignUpUsecase>(
      () => _i37.SignUpUsecase(get<_i36.SignUpRepository>()));
  gh.factory<_i38.SubmitOtpUseCase>(
      () => _i38.SubmitOtpUseCase(get<_i36.SignUpRepository>()));
  gh.factory<_i39.SubmitPasswordOtpUseCase>(
      () => _i39.SubmitPasswordOtpUseCase(get<_i34.SignInRepository>()));
  gh.factory<_i40.AccountRepository>(() => _i40.AccountRepository(
      get<_i20.CommonStorageInterface>(),
      get<_i27.ChopperClient>(),
      get<_i17.AuthStorageInterface>()));
  gh.factory<_i41.AuthRepository>(() => _i41.AuthRepository(
      get<_i20.CommonStorageInterface>(),
      get<_i27.ChopperClient>(),
      get<_i17.AuthStorageInterface>()));
  gh.factory<_i42.AuthenticateUseCase>(
      () => _i42.AuthenticateUseCase(get<_i41.AuthRepository>()));
  gh.factory<_i43.CheckAuthenticateUseCase>(
      () => _i43.CheckAuthenticateUseCase(get<_i41.AuthRepository>()));
  gh.factory<_i44.ConfirmPasswordUseCase>(
      () => _i44.ConfirmPasswordUseCase(get<_i34.SignInRepository>()));
  gh.factory<_i45.DeliveryUseCases>(() => _i45.DeliveryUseCases(
      chooseDurationUseCase: get<_i3.ChooseDurationUseCase>(),
      getLocationDistrictUseCase: get<_i29.GetLocationDistrictUseCase>(),
      proceedToPaymentUseCase: get<_i33.ProceedToPaymentUseCase>()));
  gh.factory<_i46.EditUserUseCase>(
      () => _i46.EditUserUseCase(get<_i40.AccountRepository>()));
  gh.factory<_i47.ForgotPasswordUseCase>(
      () => _i47.ForgotPasswordUseCase(get<_i34.SignInRepository>()));
  gh.factory<_i48.GetHistoryUseCase>(
      () => _i48.GetHistoryUseCase(get<_i31.ParcelRepository>()));
  gh.factory<_i49.LogoutUseCase>(
      () => _i49.LogoutUseCase(get<_i41.AuthRepository>()));
  gh.factory<_i50.MakePaymentUseCase>(
      () => _i50.MakePaymentUseCase(get<_i32.PaymentRepository>()));
  gh.factory<_i51.ParcelUseCases>(() =>
      _i51.ParcelUseCases(getHistoryUseCase: get<_i48.GetHistoryUseCase>()));
  gh.factory<_i52.PaymentUseCases>(() =>
      _i52.PaymentUseCases(makePaymentUseCase: get<_i50.MakePaymentUseCase>()));
  gh.factory<_i53.RequestOtpUseCase>(
      () => _i53.RequestOtpUseCase(get<_i36.SignUpRepository>()));
  gh.factory<_i54.ResetPasswordUseCase>(
      () => _i54.ResetPasswordUseCase(get<_i40.AccountRepository>()));
  gh.factory<_i55.AccountUseCases>(() => _i55.AccountUseCases(
      editUserUseCase: get<_i46.EditUserUseCase>(),
      resetPasswordUseCase: get<_i54.ResetPasswordUseCase>()));
  gh.factory<_i56.AuthUseCases>(() => _i56.AuthUseCases(
      signInUsecase: get<_i35.SignInUsecase>(),
      signUpUsecase: get<_i37.SignUpUsecase>(),
      requestOtpUseCase: get<_i53.RequestOtpUseCase>(),
      submitOtpUseCase: get<_i38.SubmitOtpUseCase>(),
      startCountDownUseCase: get<_i15.StartCountDownUseCase>(),
      confirmPasswordUseCase: get<_i44.ConfirmPasswordUseCase>(),
      forgotPasswordUseCase: get<_i47.ForgotPasswordUseCase>(),
      submitPasswordOtpUseCase: get<_i39.SubmitPasswordOtpUseCase>()));
  gh.factory<_i57.CommonUseCases>(() => _i57.CommonUseCases(
      getStoredUserUseCase: get<_i30.GetStoredUserUseCase>(),
      authenticateUseCase: get<_i42.AuthenticateUseCase>(),
      logoutUseCase: get<_i49.LogoutUseCase>(),
      populateTextFormUseCase: get<_i10.PopulateTextFormUseCase>()));
  gh.factory<_i58.DeliveryBloc>(
      () => _i58.DeliveryBloc(get<_i45.DeliveryUseCases>()));
  gh.factory<_i59.ParcelBloc>(
      () => _i59.ParcelBloc(get<_i51.ParcelUseCases>()));
  gh.factory<_i60.PaymentBloc>(
      () => _i60.PaymentBloc(get<_i52.PaymentUseCases>()));
  gh.factory<_i61.SignInBloc>(() => _i61.SignInBloc(get<_i56.AuthUseCases>()));
  gh.factory<_i62.SignUpBloc>(() => _i62.SignUpBloc(get<_i56.AuthUseCases>()));
  gh.factory<_i63.UserBloc>(() => _i63.UserBloc(get<_i57.CommonUseCases>()));
  gh.factory<_i64.AccountBloc>(
      () => _i64.AccountBloc(get<_i55.AccountUseCases>()));
  gh.factory<_i65.AuthBloc>(() => _i65.AuthBloc(get<_i57.CommonUseCases>()));
  return get;
}

class _$RegisterModule extends _i66.RegisterModule {}
