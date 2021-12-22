import 'dart:async';
import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:injectable/injectable.dart';

@injectable
class PaystackInterceptor extends RequestInterceptor {
  final String paystackSecretKey;

  PaystackInterceptor({
    @Named("paystackSecretkey") required this.paystackSecretKey,
  });

  @override
  FutureOr<Request> onRequest(Request request) async {
    if (request.headers["refresh"]!.contains("paystack")) {
      final newRequest = request.copyWith(
        baseUrl: "https://api.paystack.co/transaction",
        headers: {
          HttpHeaders.contentTypeHeader: "application/json",
          HttpHeaders.authorizationHeader: "Bearer $paystackSecretKey",
          "refresh": request.headers["refresh"]!,
        },
      );
      return newRequest;
    }
    return request;
  }
}
