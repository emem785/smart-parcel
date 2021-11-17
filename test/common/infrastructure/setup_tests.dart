import 'dart:convert';

import 'package:connectivity/connectivity.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';
import 'package:shared_preferences/shared_preferences.dart';
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
    getIt.unregister<String>(instanceName: "baseUrl");
    getIt.unregister<http.Client>();
    getIt.registerFactory<String>(
      () => "localhost",
      instanceName: "baseUrl",
    );
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
    getIt.registerFactory<http.Client>(() => mockClient);
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
    when(() => sharedPreferences.remove(any()))
        .thenAnswer((invocation) async => true);
  }

  static Future<void> _setupClient(String? response, int? statusCode) async {
    final client = _registerMockClient();

    if (response != null && statusCode != null) {
      when(() => client.send(any())).thenAnswer(
        (invocation) async {
          return http.StreamedResponse(
              Stream.value(utf8.encode(response)), statusCode);
        },
      );
    }
  }
}
