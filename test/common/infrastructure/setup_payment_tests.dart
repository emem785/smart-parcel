import 'package:connectivity/connectivity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_paystack/flutter_paystack.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smart_parcel/inject_conf.dart';

import 'setup_auth_tests.dart';

class MockPaystack extends Mock implements PaystackPlugin {}

class FakeContext extends Fake implements BuildContext {}

class FakeCharge extends Fake implements Charge {}

class PaymentSetupTest extends AuthTestSetup {
  static Future<void> init() async {
    await configureDependencies();
    getIt.unregister<Connectivity>();
    getIt.unregister<SharedPreferences>();
    getIt.unregister<String>(instanceName: "baseUrl");
    getIt.unregister<http.Client>();
    getIt.unregister<PaystackPlugin>();
    getIt.registerFactory<String>(
      () => "localhost",
      instanceName: "baseUrl",
    );
    registerFallbackValue(BaseRequestFake());
    registerFallbackValue(FakeContext());
    registerFallbackValue(FakeCharge());
  }

  static PaystackPlugin _registerPaystack() {
    final mockPaystack = MockPaystack();
    getIt.registerFactory<PaystackPlugin>(() => mockPaystack);
    return mockPaystack;
  }

  static _setupPaystack(CheckoutResponse? response) {
    if (response != null) {
      when(() =>
              _registerPaystack().checkout(any(), charge: any(named: "charge")))
          .thenAnswer((inv) async => response);
    }
  }

  static void setupPayment(
    String? response,
    int? statusCode, [
    String? cacheResponse,
    CheckoutResponse? checkoutResponse,
  ]) {
    AuthTestSetup.setup(response, statusCode, cacheResponse);
    _setupPaystack(checkoutResponse);
  }
}
