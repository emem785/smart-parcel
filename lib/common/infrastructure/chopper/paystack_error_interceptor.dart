import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:injectable/injectable.dart';

@injectable
class PaystackErrorInterceptor implements ResponseInterceptor {
  @override
  FutureOr<Response> onResponse(Response response) {
    // if (url == "https://api.paystack.co/transaction/initialize/") {
    //   if (!response.isSuccessful) {
    //     throw ApiException("Payment Gateway error encountered");
    //   }
    // }
    return response;
  }
}
