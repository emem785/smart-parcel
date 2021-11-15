import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:connectivity/connectivity.dart';
import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smart_parcel/auth/infrastructure/services/auth_http_service.dart';
import 'package:smart_parcel/common/infrastructure/chopper/converter.dart';
import 'package:smart_parcel/common/infrastructure/chopper/error_interceptor.dart';
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

  static void setup(
    String? response,
    int? statusCode, [
    String? cacheResponse,
  ]) {
    final prefs = _registerSharedPreference();
    when(() => _registerConnectivity().checkConnectivity())
        .thenAnswer((_) async => ConnectivityResult.wifi);

    _setupClient(response, statusCode);
    setupStorageNested(cacheResponse, prefs);
  }

  static void setupStorageNested(
    String? cacheResponse,
    SharedPreferences sharedPreferences,
  ) {
    when(() => sharedPreferences.setString(any(), any()))
        .thenAnswer((_) async => true);

    if (cacheResponse == null) {
      when(() => sharedPreferences.getString(any()))
          .thenThrow(Exception("Nothing Stored"));
      return;
    }
    when(() => sharedPreferences.getString(any())).thenReturn(cacheResponse);
  }

  static Future<void> _setupClient(String? response, int? statusCode) async {
    final client = _registerMockClient();
    if (response != null && statusCode != null) {
      when(() => client.send(any())).thenAnswer(
        (invocation) async => http.StreamedResponse(
            Stream.value(utf8.encode(response)), statusCode),
      );
    }
  }
}
