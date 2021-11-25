import 'dart:async';
import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:injectable/injectable.dart';
import 'package:smart_parcel/auth/domain/models/auth_error.dart';
import 'package:smart_parcel/auth/domain/models/forgot_password_error.dart';
import 'package:smart_parcel/auth/domain/models/login_error.dart';
import 'package:smart_parcel/common/domain/models/exceptions.dart';
import 'package:smart_parcel/common/domain/models/token_error.dart';
import 'package:smart_parcel/delivery/domain/models/delivery_Error.dart';

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
    try {
      final bodyDecoded = jsonDecode(body);
      if (bodyDecoded is Iterable) {
        return handleIterableError(bodyDecoded);
      } else if (bodyDecoded is Map) {
        return handleMapError(body);
      }
      return "Unexpected Internal Error";
    } catch (e) {
      return "Unexpected Server Error";
    }
  }

  String handleIterableError(Iterable body) {
    return body.first;
  }

  String handleMapError(String body) {
    final bodyMap = jsonDecode(body) as Map;
    if (bodyMap.containsKey("error") && bodyMap.containsKey("message")) {
      return getAuthError(body);
    } else if (bodyMap.containsKey("error")) {
      return getLoginError(body);
    } else if (bodyMap.containsKey("email") || bodyMap.containsKey("otp")) {
      return getForgotPasswordError(body);
    } else if (bodyMap.containsKey("messages")) {
      return getTokenError(body);
    } else if (bodyMap.containsKey("errors")) {
      return getDeliveryError(body);
    }
    return 'Unexpected Internal Error';
  }

  String getAuthError(String body) {
    final authError = AuthError.fromJson(body);
    final emailErr = authError.error.email ?? [];
    final userNameErr = authError.error.username ?? [];
    final errMsg = userNameErr.isNotEmpty ? userNameErr : emailErr;

    return errMsg[0];
  }

  String getLoginError(String body) {
    final loginError = LoginError.fromJson(body);
    return loginError.error;
  }

  String getForgotPasswordError(String body) {
    final forgotPasswordError = ForgotPasswordError.fromJson(body);
    final emailErr = forgotPasswordError.email ?? [];
    final otpError = forgotPasswordError.otp ?? [];
    final errMsg = emailErr.isNotEmpty ? emailErr : otpError;
    return errMsg[0];
  }

  String getTokenError(String body) {
    final tokenError = TokenError.fromJson(body);
    return tokenError.messages.first.message;
  }

  String getDeliveryError(String body) {
    final deliveryError = DeliveryError.fromJson(body);
    return deliveryError.errors.user!.first;
  }
}
