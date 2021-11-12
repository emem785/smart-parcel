// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:chopper/chopper.dart' as _i4;
import 'package:connectivity/connectivity.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i9;

import 'auth/application/bloc/sign_in_bloc/signin_bloc.dart' as _i23;
import 'auth/application/bloc/sign_up_bloc/signup_bloc.dart' as _i24;
import 'auth/domain/interface/auth_storage_interface.dart' as _i12;
import 'auth/domain/repositories/sign_in_repository.dart' as _i15;
import 'auth/domain/repositories/sign_up_repository.dart' as _i17;
import 'auth/domain/usecases/auth_usecases.dart' as _i22;
import 'auth/domain/usecases/login_usecase.dart' as _i20;
import 'auth/domain/usecases/request_otp_usecase.dart' as _i21;
import 'auth/domain/usecases/sign_in_usecase.dart' as _i16;
import 'auth/domain/usecases/sign_up_usecase.dart' as _i18;
import 'auth/domain/usecases/submit_otp_usecase.dart' as _i19;
import 'auth/infrastructure/services/auth_storage_service.dart' as _i13;
import 'common/domain/usecases/base_usecases.dart' as _i14;
import 'common/domain/usecases/show_error_usecase.dart' as _i10;
import 'common/domain/usecases/show_prompt_usecase.dart' as _i11;
import 'common/infrastructure/chopper/interceptors.dart' as _i7;
import 'common/infrastructure/register_module.dart' as _i25;
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
  gh.factory<_i7.ErrorInterceptor>(() => _i7.ErrorInterceptor());
  await gh.factoryAsync<_i9.SharedPreferences>(
      () => registerModule.sharedPreferences,
      preResolve: true);
  gh.factory<_i10.ShowErrorUseCase>(() => _i10.ShowErrorUseCase());
  gh.factory<_i11.ShowPromptUseCase>(() => _i11.ShowPromptUseCase());
  gh.factory<String>(() => registerModule.baseUrl, instanceName: 'baseUrl');
  gh.factory<_i12.AuthStorageInterface>(
      () => _i13.AuthStorageService(get<_i9.SharedPreferences>()));
  gh.factory<_i14.BaseUseCases>(() => _i14.BaseUseCases(
      showErrorUseCase: get<_i10.ShowErrorUseCase>(),
      showPromptUseCase: get<_i11.ShowPromptUseCase>()));
  gh.factory<_i15.SignInRepository>(() => _i15.SignInRepository(
      get<_i4.ChopperClient>(), get<_i12.AuthStorageInterface>()));
  gh.factory<_i16.SignInUsecase>(
      () => _i16.SignInUsecase(get<_i15.SignInRepository>()));
  gh.factory<_i17.SignUpRepository>(() => _i17.SignUpRepository(
      get<_i4.ChopperClient>(), get<_i12.AuthStorageInterface>()));
  gh.factory<_i18.SignUpUsecase>(
      () => _i18.SignUpUsecase(get<_i17.SignUpRepository>()));
  gh.factory<_i19.SubmitOtpUseCase>(
      () => _i19.SubmitOtpUseCase(get<_i17.SignUpRepository>()));
  gh.factory<_i20.LoginUseCase>(
      () => _i20.LoginUseCase(get<_i15.SignInRepository>()));
  gh.factory<_i21.RequestOtpUseCase>(
      () => _i21.RequestOtpUseCase(get<_i17.SignUpRepository>()));
  gh.factory<_i22.AuthUseCases>(() => _i22.AuthUseCases(
      signInUsecase: get<_i16.SignInUsecase>(),
      signUpUsecase: get<_i18.SignUpUsecase>(),
      requestOtpUseCase: get<_i21.RequestOtpUseCase>(),
      submitOtpUseCase: get<_i19.SubmitOtpUseCase>()));
  gh.factory<_i23.SignInBloc>(() => _i23.SignInBloc(get<_i22.AuthUseCases>()));
  gh.factory<_i24.SignUpBloc>(() => _i24.SignUpBloc(get<_i22.AuthUseCases>()));
  return get;
}

class _$RegisterModule extends _i25.RegisterModule {}
