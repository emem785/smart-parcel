import 'dart:async';
import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smart_parcel/auth/domain/models/auth_tokens.dart';

const tokenKey = 'token';

@injectable
class AuthInterceptor extends RequestInterceptor {
  final SharedPreferences sharedPreferences;

  AuthInterceptor({required this.sharedPreferences});
  @override
  FutureOr<Request> onRequest(Request request) async {
    if (request.headers['refresh'] == 'refresh') {
      final authToken = getAuthToken();
      return addHeaders(request, authToken);
    }
    return request;
  }

  AuthToken getAuthToken() {
    final authTokenJson = sharedPreferences.getString(tokenKey);
    return AuthToken.fromJson(authTokenJson!);
  }

  Request addHeaders(Request request, AuthToken authToken) {
    request = request.copyWith(headers: {
      'Authorization': 'Bearer ${authToken.access}',
      'refresh': authToken.refresh,
      HttpHeaders.contentTypeHeader: 'application/json',
    });
    return request;
  }
}
