// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:chopper/chopper.dart' as _i21;
import 'package:connectivity/connectivity.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i9;

import 'auth/application/bloc/sign_in_bloc/signin_bloc.dart' as _i38;
import 'auth/application/bloc/sign_up_bloc/signup_bloc.dart' as _i39;
import 'auth/domain/interface/auth_storage_interface.dart' as _i14;
import 'auth/domain/repositories/sign_in_repository.dart' as _i24;
import 'auth/domain/repositories/sign_up_repository.dart' as _i26;
import 'auth/domain/usecases/auth_usecases.dart' as _i36;
import 'auth/domain/usecases/forgot_password_usecase.dart' as _i32;
import 'auth/domain/usecases/login_usecase.dart' as _i33;
import 'auth/domain/usecases/request_otp_usecase.dart' as _i35;
import 'auth/domain/usecases/sign_in_usecase.dart' as _i25;
import 'auth/domain/usecases/sign_up_usecase.dart' as _i27;
import 'auth/domain/usecases/start_countdown_usecase.dart' as _i13;
import 'auth/domain/usecases/submit_otp_usecase.dart' as _i28;
import 'auth/infrastructure/services/auth_storage_service.dart' as _i15;
import 'common/application/auth_bloc/auth_bloc.dart' as _i41;
import 'common/application/user_bloc/user_bloc.dart' as _i40;
import 'common/domain/interface/common_storage_interface.dart' as _i17;
import 'common/domain/repositories/auth_repository.dart' as _i29;
import 'common/domain/repositories/user_repository.dart' as _i20;
import 'common/domain/usecases/authenticate_usecase.dart' as _i30;
import 'common/domain/usecases/base_usecases.dart' as _i16;
import 'common/domain/usecases/check_authenticate_usecase.dart' as _i31;
import 'common/domain/usecases/common_usecases.dart' as _i37;
import 'common/domain/usecases/get_stored_user_usecase.dart' as _i23;
import 'common/domain/usecases/logout_usecase.dart' as _i34;
import 'common/domain/usecases/show_alert_usecase.dart' as _i10;
import 'common/domain/usecases/show_error_usecase.dart' as _i11;
import 'common/domain/usecases/show_prompt_usecase.dart' as _i12;
import 'common/infrastructure/chopper/connectivity_interceptor.dart' as _i6;
import 'common/infrastructure/chopper/error_interceptor.dart' as _i8;
import 'common/infrastructure/chopper/jwt_authenticator.dart' as _i19;
import 'common/infrastructure/register_module.dart' as _i42;
import 'common/infrastructure/services/common_storage_service.dart' as _i18;
import 'delivery/domain/repositories/delivery_repository.dart' as _i22;
import 'delivery/domain/usecases/choose_duration_usecase.dart' as _i3;
import 'delivery/domain/usecases/delivery_usecases.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i7.DeliveryUseCases>(() => _i7.DeliveryUseCases(
      chooseDurationUseCase: get<_i3.ChooseDurationUseCase>()));
  gh.factory<_i8.ErrorInterceptor>(() => _i8.ErrorInterceptor());
  await gh.factoryAsync<_i9.SharedPreferences>(
      () => registerModule.sharedPreferences,
      preResolve: true);
  gh.factory<_i10.ShowAlertUseCase>(() => _i10.ShowAlertUseCase());
  gh.factory<_i11.ShowErrorUseCase>(() => _i11.ShowErrorUseCase());
  gh.factory<_i12.ShowPromptUseCase>(() => _i12.ShowPromptUseCase());
  gh.factory<_i13.StartCountDownUseCase>(() => _i13.StartCountDownUseCase());
  gh.factory<String>(() => registerModule.baseUrl, instanceName: 'baseUrl');
  gh.factory<_i14.AuthStorageInterface>(
      () => _i15.AuthStorageService(get<_i9.SharedPreferences>()));
  gh.factory<_i16.BaseUseCases>(() => _i16.BaseUseCases(
      showAlertUseCase: get<_i10.ShowAlertUseCase>(),
      showErrorUseCase: get<_i11.ShowErrorUseCase>(),
      showPromptUseCase: get<_i12.ShowPromptUseCase>()));
  gh.factory<_i17.CommonStorageInterface>(
      () => _i18.CommonStorageService(get<_i9.SharedPreferences>()));
  gh.factory<_i19.JwtAuthenticator>(() => registerModule.jwtAuthenticator(
      get<String>(instanceName: 'baseUrl'),
      get<_i9.SharedPreferences>(),
      get<_i4.Client>(instanceName: 'auth'),
      get<_i5.Connectivity>()));
  gh.factory<_i20.UserRepository>(
      () => _i20.UserRepository(get<_i17.CommonStorageInterface>()));
  gh.factory<_i21.ChopperClient>(() => registerModule.client(get<_i4.Client>(),
      get<String>(instanceName: 'baseUrl'), get<_i19.JwtAuthenticator>()));
  gh.factory<_i22.DeliveryRepository>(
      () => _i22.DeliveryRepository(get<_i21.ChopperClient>()));
  gh.factory<_i23.GetStoredUserUseCase>(
      () => _i23.GetStoredUserUseCase(get<_i20.UserRepository>()));
  gh.factory<_i24.SignInRepository>(() => _i24.SignInRepository(
      get<_i21.ChopperClient>(), get<_i14.AuthStorageInterface>()));
  gh.factory<_i25.SignInUsecase>(
      () => _i25.SignInUsecase(get<_i24.SignInRepository>()));
  gh.factory<_i26.SignUpRepository>(() => _i26.SignUpRepository(
      get<_i21.ChopperClient>(), get<_i14.AuthStorageInterface>()));
  gh.factory<_i27.SignUpUsecase>(
      () => _i27.SignUpUsecase(get<_i26.SignUpRepository>()));
  gh.factory<_i28.SubmitOtpUseCase>(
      () => _i28.SubmitOtpUseCase(get<_i26.SignUpRepository>()));
  gh.factory<_i29.AuthRepository>(() => _i29.AuthRepository(
      get<_i17.CommonStorageInterface>(),
      get<_i21.ChopperClient>(),
      get<_i14.AuthStorageInterface>()));
  gh.factory<_i30.AuthenticateUseCase>(
      () => _i30.AuthenticateUseCase(get<_i29.AuthRepository>()));
  gh.factory<_i31.CheckAuthenticateUseCase>(
      () => _i31.CheckAuthenticateUseCase(get<_i29.AuthRepository>()));
  gh.factory<_i32.ForgotPasswordUseCase>(
      () => _i32.ForgotPasswordUseCase(get<_i24.SignInRepository>()));
  gh.factory<_i33.LoginUseCase>(
      () => _i33.LoginUseCase(get<_i24.SignInRepository>()));
  gh.factory<_i34.LogoutUseCase>(
      () => _i34.LogoutUseCase(get<_i29.AuthRepository>()));
  gh.factory<_i35.RequestOtpUseCase>(
      () => _i35.RequestOtpUseCase(get<_i26.SignUpRepository>()));
  gh.factory<_i36.AuthUseCases>(() => _i36.AuthUseCases(
      signInUsecase: get<_i25.SignInUsecase>(),
      signUpUsecase: get<_i27.SignUpUsecase>(),
      requestOtpUseCase: get<_i35.RequestOtpUseCase>(),
      submitOtpUseCase: get<_i28.SubmitOtpUseCase>(),
      startCountDownUseCase: get<_i13.StartCountDownUseCase>(),
      forgotPasswordUseCase: get<_i32.ForgotPasswordUseCase>()));
  gh.factory<_i37.CommonUseCases>(() => _i37.CommonUseCases(
      getStoredUserUseCase: get<_i23.GetStoredUserUseCase>(),
      authenticateUseCase: get<_i30.AuthenticateUseCase>(),
      logoutUseCase: get<_i34.LogoutUseCase>()));
  gh.factory<_i38.SignInBloc>(() => _i38.SignInBloc(get<_i36.AuthUseCases>()));
  gh.factory<_i39.SignUpBloc>(() => _i39.SignUpBloc(get<_i36.AuthUseCases>()));
  gh.factory<_i40.UserBloc>(() => _i40.UserBloc(get<_i37.CommonUseCases>()));
  gh.factory<_i41.AuthBloc>(() => _i41.AuthBloc(get<_i37.CommonUseCases>()));
  return get;
}

class _$RegisterModule extends _i42.RegisterModule {}
