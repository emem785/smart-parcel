// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:chopper/chopper.dart' as _i4;
import 'package:connectivity/connectivity.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i10;

import 'auth/application/bloc/sign_in_bloc/signin_bloc.dart' as _i35;
import 'auth/application/bloc/sign_up_bloc/signup_bloc.dart' as _i36;
import 'auth/domain/interface/auth_storage_interface.dart' as _i14;
import 'auth/domain/repositories/sign_in_repository.dart' as _i19;
import 'auth/domain/repositories/sign_up_repository.dart' as _i21;
import 'auth/domain/usecases/auth_usecases.dart' as _i33;
import 'auth/domain/usecases/forgot_password_usecase.dart' as _i28;
import 'auth/domain/usecases/login_usecase.dart' as _i31;
import 'auth/domain/usecases/request_otp_usecase.dart' as _i32;
import 'auth/domain/usecases/sign_in_usecase.dart' as _i20;
import 'auth/domain/usecases/sign_up_usecase.dart' as _i22;
import 'auth/domain/usecases/start_countdown_usecase.dart' as _i13;
import 'auth/domain/usecases/submit_otp_usecase.dart' as _i23;
import 'auth/infrastructure/services/auth_storage_service.dart' as _i15;
import 'common/application/auth_bloc/auth_bloc.dart' as _i38;
import 'common/application/user_bloc/user_bloc.dart' as _i37;
import 'common/domain/interface/common_storage_interface.dart' as _i17;
import 'common/domain/repositories/auth_repository.dart' as _i25;
import 'common/domain/repositories/user_repository.dart' as _i24;
import 'common/domain/usecases/authenticate_usecase.dart' as _i26;
import 'common/domain/usecases/base_usecases.dart' as _i16;
import 'common/domain/usecases/check_authenticate_usecase.dart' as _i27;
import 'common/domain/usecases/common_usecases.dart' as _i34;
import 'common/domain/usecases/get_stored_user_usecase.dart' as _i29;
import 'common/domain/usecases/show_error_usecase.dart' as _i11;
import 'common/domain/usecases/show_prompt_usecase.dart' as _i12;
import 'common/infrastructure/chopper/error_interceptor.dart' as _i9;
import 'common/infrastructure/chopper/interceptors.dart' as _i7;
import 'common/infrastructure/chopper/jwt_interceptor.dart' as _i30;
import 'common/infrastructure/register_module.dart' as _i39;
import 'common/infrastructure/services/common_storage_service.dart' as _i18;
import 'delivery/domain/usecases/choose_duration_usecase.dart' as _i3;
import 'delivery/domain/usecases/delivery_usecases.dart'
    as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.factory<_i3.ChooseDurationUseCase>(() => _i3.ChooseDurationUseCase());
  gh.factory<_i4.ChopperClient>(() => registerModule.client);
  gh.singleton<_i5.Client>(registerModule.httpClient);
  gh.lazySingleton<_i6.Connectivity>(() => registerModule.connectivity);
  gh.factory<_i7.ConnectivityInterceptor>(
      () => _i7.ConnectivityInterceptor(connectivity: get<_i6.Connectivity>()));
  gh.factory<_i8.DeliveryUseCases>(() => _i8.DeliveryUseCases(
      chooseDurationUseCase: get<_i3.ChooseDurationUseCase>()));
  gh.factory<_i9.ErrorInterceptor>(() => _i9.ErrorInterceptor());
  await gh.factoryAsync<_i10.SharedPreferences>(
      () => registerModule.sharedPreferences,
      preResolve: true);
  gh.factory<_i11.ShowErrorUseCase>(() => _i11.ShowErrorUseCase());
  gh.factory<_i12.ShowPromptUseCase>(() => _i12.ShowPromptUseCase());
  gh.factory<_i13.StartCountDownUseCase>(() => _i13.StartCountDownUseCase());
  gh.factory<String>(() => registerModule.baseUrl, instanceName: 'baseUrl');
  gh.factory<_i14.AuthStorageInterface>(
      () => _i15.AuthStorageService(get<_i10.SharedPreferences>()));
  gh.factory<_i16.BaseUseCases>(() => _i16.BaseUseCases(
      showErrorUseCase: get<_i11.ShowErrorUseCase>(),
      showPromptUseCase: get<_i12.ShowPromptUseCase>()));
  gh.factory<_i17.CommonStorageInterface>(
      () => _i18.CommonStorageService(get<_i10.SharedPreferences>()));
  gh.factory<_i19.SignInRepository>(() => _i19.SignInRepository(
      get<_i4.ChopperClient>(), get<_i14.AuthStorageInterface>()));
  gh.factory<_i20.SignInUsecase>(
      () => _i20.SignInUsecase(get<_i19.SignInRepository>()));
  gh.factory<_i21.SignUpRepository>(() => _i21.SignUpRepository(
      get<_i4.ChopperClient>(), get<_i14.AuthStorageInterface>()));
  gh.factory<_i22.SignUpUsecase>(
      () => _i22.SignUpUsecase(get<_i21.SignUpRepository>()));
  gh.factory<_i23.SubmitOtpUseCase>(
      () => _i23.SubmitOtpUseCase(get<_i21.SignUpRepository>()));
  gh.factory<_i24.UserRepository>(
      () => _i24.UserRepository(get<_i17.CommonStorageInterface>()));
  gh.factory<_i25.AuthRepository>(() => _i25.AuthRepository(
      get<_i17.CommonStorageInterface>(),
      get<_i4.ChopperClient>(),
      get<_i14.AuthStorageInterface>()));
  gh.factory<_i26.AuthenticateUseCase>(
      () => _i26.AuthenticateUseCase(get<_i25.AuthRepository>()));
  gh.factory<_i27.CheckAuthenticateUseCase>(
      () => _i27.CheckAuthenticateUseCase(get<_i25.AuthRepository>()));
  gh.factory<_i28.ForgotPasswordUseCase>(
      () => _i28.ForgotPasswordUseCase(get<_i19.SignInRepository>()));
  gh.factory<_i29.GetStoredUserUseCase>(
      () => _i29.GetStoredUserUseCase(get<_i24.UserRepository>()));
  gh.factory<_i30.JwtInterceptor>(
      () => _i30.JwtInterceptor(get<_i25.AuthRepository>()));
  gh.factory<_i31.LoginUseCase>(
      () => _i31.LoginUseCase(get<_i19.SignInRepository>()));
  gh.factory<_i32.RequestOtpUseCase>(
      () => _i32.RequestOtpUseCase(get<_i21.SignUpRepository>()));
  gh.factory<_i33.AuthUseCases>(() => _i33.AuthUseCases(
      signInUsecase: get<_i20.SignInUsecase>(),
      signUpUsecase: get<_i22.SignUpUsecase>(),
      requestOtpUseCase: get<_i32.RequestOtpUseCase>(),
      submitOtpUseCase: get<_i23.SubmitOtpUseCase>(),
      startCountDownUseCase: get<_i13.StartCountDownUseCase>(),
      forgotPasswordUseCase: get<_i28.ForgotPasswordUseCase>()));
  gh.factory<_i34.CommonUseCases>(() => _i34.CommonUseCases(
      getStoredUserUseCase: get<_i29.GetStoredUserUseCase>(),
      authenticateUseCase: get<_i26.AuthenticateUseCase>()));
  gh.factory<_i35.SignInBloc>(() => _i35.SignInBloc(get<_i33.AuthUseCases>()));
  gh.factory<_i36.SignUpBloc>(() => _i36.SignUpBloc(get<_i33.AuthUseCases>()));
  gh.factory<_i37.UserBloc>(() => _i37.UserBloc(get<_i34.CommonUseCases>()));
  gh.factory<_i38.AuthBloc>(() => _i38.AuthBloc(get<_i34.CommonUseCases>()));
  return get;
}

class _$RegisterModule extends _i39.RegisterModule {}
