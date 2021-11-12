import 'dart:async';
import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:connectivity/connectivity.dart';
import 'package:injectable/injectable.dart';
import 'package:smart_parcel/auth/domain/models/auth_error.dart';
import 'package:smart_parcel/common/domain/models/exceptions.dart';

@injectable
class ConnectivityInterceptor extends RequestInterceptor {
  final Connectivity connectivity;

  ConnectivityInterceptor({required this.connectivity});
  @override
  FutureOr<Request> onRequest(Request request) async {
    final status = await connectivity.checkConnectivity();
    if (status == ConnectivityResult.none) {
      throw ConnectivityException("No internet connection");
    }
    return request;
  }
}

@injectable
class ErrorInterceptor implements ResponseInterceptor {
  @override
  FutureOr<Response> onResponse(Response response) {
    print(response.error);
    if (!response.isSuccessful) {
      throw ApiException(getError(response.error));
    }
    return response;
  }

  String getError(dynamic body) {
    final bodyDecoded = jsonDecode(body);
    if (bodyDecoded is Iterable) {
      return handleIterableError(bodyDecoded);
    } else if (bodyDecoded is Map) {
      return handleMapError(body);
    }
    return "None";
  }

  String handleIterableError(Iterable body) {
    return body.first;
  }

  String handleMapError(String body) {
    final bodyMap = jsonDecode(body);
    if (bodyMap.containsKey("error")) {
      return getAuthError(body);
    }
    return '';
  }

  String getAuthError(String body) {
    final authError = AuthError.fromJson(body);
    final emailErr = authError.error.email ?? [];
    final userNameErr = authError.error.username ?? [];
    final errMsg = userNameErr.isNotEmpty ? userNameErr : emailErr;

    return errMsg[0];
  }
}
