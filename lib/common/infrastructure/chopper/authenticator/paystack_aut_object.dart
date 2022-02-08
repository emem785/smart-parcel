import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:smart_parcel/common/domain/models/exceptions.dart';
import 'package:smart_parcel/common/infrastructure/chopper/authenticator/authenticator_factory.dart';

class PaystackAuthObject implements AuthObject {
  final Request request;
  final Response response;

  PaystackAuthObject(this.request, this.response);
  @override
  FutureOr<Request?> authenticate() {
    if (!response.isSuccessful) {
      print(response.body);
      throw ApiException("Payment Gateway error encountered");
    }
  }
}
