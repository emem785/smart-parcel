import 'package:chopper/chopper.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_paystack/flutter_paystack.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smart_parcel/auth/infrastructure/services/auth_http_service.dart';
import 'package:smart_parcel/common/infrastructure/chopper/connectivity_interceptor.dart';
import 'package:smart_parcel/common/infrastructure/chopper/converter.dart';
import 'package:smart_parcel/common/infrastructure/chopper/error_interceptor.dart';
import 'package:smart_parcel/common/infrastructure/chopper/jwt_authenticator.dart';
import 'package:smart_parcel/common/infrastructure/services/common_http_service.dart';
import 'package:smart_parcel/delivery/infrastructure/services/delivery_http_service.dart';
import 'package:smart_parcel/inject_conf.dart';

@module
abstract class RegisterModule {
  @Named("paystackPublicKey")
  String get publicKey => dotenv.env['PAYSTACK_PK'].toString();

  @lazySingleton
  PaystackPlugin get payStackPlugin =>
      PaystackPlugin().initialize(publicKey: publicKey);

  @lazySingleton
  Connectivity get connectivity => Connectivity();

  @preResolve
  Future<SharedPreferences> get sharedPreferences =>
      SharedPreferences.getInstance();

  @singleton
  http.Client get httpClient => http.Client();

  @Named("auth")
  http.Client get authClient => http.Client();

  @Named("baseUrl")
  String get baseUrl => "https://smartparcel.herokuapp.com/v1";

  JwtAuthenticator jwtAuthenticator(
    @Named("baseUrl") String baseUrl,
    SharedPreferences sharedPreferences,
    @Named("auth") http.Client client,
    Connectivity connectivity,
  ) {
    return JwtAuthenticator(client, baseUrl, sharedPreferences);
  }

  @injectable
  ChopperClient client(
    http.Client client,
    @Named("baseUrl") String url,
    JwtAuthenticator authenticator,
  ) {
    return ChopperClient(
      client: client,
      baseUrl: url,
      services: [
        AuthHttpService.create(),
        CommonHttpService.create(),
        DeliveryHttpService.create(),
      ],
      converter: JsonSerializableConverter(),
      authenticator: authenticator,
      interceptors: [
        getIt<ConnectivityInterceptor>(),
        ErrorInterceptor(),
      ],
    );
  }
}
