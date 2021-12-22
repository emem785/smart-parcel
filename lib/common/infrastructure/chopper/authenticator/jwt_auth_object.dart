import 'dart:async';
import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smart_parcel/auth/domain/models/auth_tokens.dart';
import 'package:smart_parcel/common/infrastructure/chopper/authenticator/authenticator_factory.dart';

class JwtAuthObject implements AuthObject {
  final Request request;
  final Response response;
  final Tuple3<http.Client, String, SharedPreferences> jwtItems;

  String get baseUrl => jwtItems.value2;
  http.Client get client => jwtItems.value1;
  SharedPreferences get preferences => jwtItems.value3;

  JwtAuthObject(this.request, this.response, this.jwtItems);
  @override
  FutureOr<Request?> authenticate() async {
    if (response.statusCode == 401) {
      final authToken =
          await _refreshToken(response.base.request!.headers["refresh"]);
      return request.copyWith(
        headers: {
          HttpHeaders.authorizationHeader: "Bearer ${authToken.access}",
          HttpHeaders.contentTypeHeader: "application/json",
          "refresh": request.headers["refresh"]!,
        },
      );
    }
  }

  Future<AuthToken> _refreshToken(String? refreshToken) async {
    final authToken = await _makeHttpRequest(refreshToken);
    await _storeToken(authToken);
    return authToken;
  }

  Future<AuthToken> _makeHttpRequest(String? refreshToken) async {
    final url = Uri.parse("$baseUrl/auth/token/refresh/");
    final body = {"refresh": refreshToken};
    final response = await client.post(url, body: body);
    if (response.statusCode != 200) {
      throw Exception("Unexpected Server Error");
    }
    return AuthToken.fromJson(response.body);
  }

  _storeToken(AuthToken authToken) async {
    await preferences.setString(tokenKey, authToken.toJson());
  }
}
