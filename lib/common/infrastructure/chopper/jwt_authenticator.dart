import 'dart:async';
import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smart_parcel/auth/domain/models/auth_tokens.dart';
import 'package:smart_parcel/common/domain/models/exceptions.dart';

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
    await sharedPreferences.setString(tokenKey, authToken.toJson());
  }

  Future<AuthToken> _refreshToken(String? refreshToken) async {
    final authToken = await _makeHttpRequest(refreshToken);
    await _storeToken(authToken);
    return authToken;
  }

  @override
  FutureOr<Request?> authenticate(Request request, Response response) async {
    if (request.headers["refresh"] != "") {
      if (request.headers["refresh"] == "paystack") {
        return _handlePaystack(request, response);
      }

      if (response.statusCode == 401) {
        final authToken = await _refreshToken(request.headers["refresh"]);
        return request.copyWith(
          headers: {
            HttpHeaders.authorizationHeader: "Bearer ${authToken.access}",
            HttpHeaders.contentTypeHeader: "application/json",
            "refresh": request.headers["refresh"]!,
          },
        );
      }
    }
  }

  FutureOr<Request?> _handlePaystack(Request request, Response response) {
    if (!response.isSuccessful) {
      throw ApiException("Payment Gateway error encountered");
    }
  }
}
