import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:injectable/injectable.dart';
import 'package:smart_parcel/common/domain/repositories/auth_repository.dart';

@injectable
class JwtInterceptor extends RequestInterceptor {
  final AuthRepository authRepository;

  JwtInterceptor(this.authRepository);

  @override
  FutureOr<Request> onRequest(Request request) async {
    return request;
  }
}
