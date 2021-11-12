import 'package:chopper/chopper.dart';
import 'package:connectivity/connectivity.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smart_parcel/auth/infrastructure/services/auth_http_service.dart';
import 'package:smart_parcel/common/infrastructure/chopper/converter.dart';
import 'package:smart_parcel/common/infrastructure/chopper/interceptors.dart';
import 'package:smart_parcel/inject_conf.dart';

@module
abstract class RegisterModule {
  @lazySingleton
  Connectivity get connectivity => Connectivity();

  @preResolve
  Future<SharedPreferences> get sharedPreferences =>
      SharedPreferences.getInstance();

  @singleton
  http.Client get httpClient => http.Client();

  @Named("baseUrl")
  String get baseUrl => "https://smartparcel.herokuapp.com/v1";

  ChopperClient get client {
    return ChopperClient(
      client: httpClient,
      baseUrl: baseUrl,
      services: [
        AuthHttpService.create(),
      ],
      converter: JsonSerializableConverter(),
      interceptors: [
        getIt<ConnectivityInterceptor>(),
        ErrorInterceptor(),
      ],
    );
  }
}
