import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:connectivity/connectivity.dart';
import 'package:injectable/injectable.dart';
import 'package:smart_parcel/common/domain/models/exceptions.dart';

@injectable
class ConnectivityInterceptor extends RequestInterceptor {
  final Connectivity connectivity;

  ConnectivityInterceptor({required this.connectivity});
  @override
  FutureOr<Request> onRequest(Request request) async {
    print(request.headers);
    return request;
  }
}
