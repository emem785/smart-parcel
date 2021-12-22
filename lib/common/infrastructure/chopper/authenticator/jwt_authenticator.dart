import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smart_parcel/common/infrastructure/chopper/authenticator/authenticator_factory.dart';

const tokenKey = 'token';

class JwtAuthenticator extends Authenticator {
  final http.Client client;
  final SharedPreferences sharedPreferences;
  final String baseUrl;

  JwtAuthenticator(
    this.client,
    this.baseUrl,
    this.sharedPreferences,
  );

  @override
  FutureOr<Request?> authenticate(Request request, Response response) async {
    final jwtItems = Tuple3(client, baseUrl, sharedPreferences);
    final requestItems = Tuple2(request, response);
    final refreshString = request.headers["refresh"];
    return AuthenticatorFactory.create(refreshString!, requestItems, jwtItems)
        .authenticate();
  }
}
