import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:connectivity/connectivity.dart';
import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smart_parcel/auth/infrastructure/services/auth_http_service.dart';
import 'package:smart_parcel/common/infrastructure/chopper/converter.dart';
import 'package:smart_parcel/common/infrastructure/chopper/interceptors.dart';
import 'package:smart_parcel/inject_conf.dart';

enum Method { post, get }

class MockConnectivity extends Mock implements Connectivity {}

class MockSharedPreference extends Mock implements SharedPreferences {}

class MockClient extends Mock implements http.Client {}

class BaseRequestFake extends Fake implements http.BaseRequest {}

class TestSetup {
  static Future<void> init() async {
    await configureDependencies();
    getIt.unregister<Connectivity>();
    getIt.unregister<SharedPreferences>();
    getIt.unregister<ChopperClient>();
    registerFallbackValue(BaseRequestFake());
  }

  static MockConnectivity _registerConnectivity() {
    final mockConnectivity = MockConnectivity();
    getIt.registerFactory<Connectivity>(() => mockConnectivity);
    return mockConnectivity;
  }

  static MockSharedPreference _registerSharedPreference() {
    final mockSharedPreference = MockSharedPreference();
    getIt.registerFactory<SharedPreferences>(() => mockSharedPreference);
    return mockSharedPreference;
  }

  static MockClient _registerMockClient() {
    final mockClient = MockClient();
    getIt.registerFactory(() => ChopperClient(
          client: mockClient,
          baseUrl: "localhost",
          services: [
            AuthHttpService.create(),
          ],
          converter: JsonSerializableConverter(),
          interceptors: [
            getIt<ConnectivityInterceptor>(),
            ErrorInterceptor(),
          ],
        ));
    return mockClient;
  }

  static void setup(String response, int statusCode) {
    when(() => _registerConnectivity().checkConnectivity())
        .thenAnswer((_) async => ConnectivityResult.wifi);
    when(() => _registerSharedPreference().setString(any(), any()))
        .thenAnswer((_) async => true);
    _setupClient(response, statusCode);
  }

  static Future<void> _setupClient(String response, int statusCode) async {
    when(() => _registerMockClient().send(any())).thenAnswer(
        (invocation) async => http.StreamedResponse(
            Stream.value(utf8.encode(response)), statusCode));
  }
}
