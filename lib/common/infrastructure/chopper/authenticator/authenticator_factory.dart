import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smart_parcel/common/infrastructure/chopper/authenticator/default_auth_object.dart';
import 'package:smart_parcel/common/infrastructure/chopper/authenticator/jwt_auth_object.dart';
import 'package:smart_parcel/common/infrastructure/chopper/authenticator/paystack_aut_object.dart';

const tokenKey = 'token';

class AuthenticatorFactory {
  static AuthObject create(
    String refresh,
    Tuple2<Request, Response> requestItems,
    Tuple3<http.Client, String, SharedPreferences> jwtItems,
  ) {
    switch (refresh) {
      case "":
        return DefaultAuthObject(requestItems.value1, requestItems.value2);
      case "paystack":
        return PaystackAuthObject(requestItems.value1, requestItems.value2);
      default:
        return JwtAuthObject(
          requestItems.value1,
          requestItems.value2,
          jwtItems,
        );
    }
  }
}

abstract class AuthObject {
  FutureOr<Request?> authenticate();
}
