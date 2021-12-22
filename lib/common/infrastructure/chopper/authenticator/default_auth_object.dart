import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:smart_parcel/common/infrastructure/chopper/authenticator/authenticator_factory.dart';

class DefaultAuthObject implements AuthObject {
  final Request request;
  final Response response;

  DefaultAuthObject(this.request, this.response);
  @override
  FutureOr<Request?> authenticate() {}
}
