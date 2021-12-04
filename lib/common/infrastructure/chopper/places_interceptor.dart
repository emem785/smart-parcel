import 'dart:async';
import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:injectable/injectable.dart';

@injectable
class PlacesInterceptor extends RequestInterceptor {
  final String apiKey;

  PlacesInterceptor({
    @Named("googleCloudApiKey") required this.apiKey,
  });

  @override
  FutureOr<Request> onRequest(Request request) async {
    if (request.headers["refresh"]!.contains("places")) {
      final newRequest = request.copyWith(
        baseUrl: "https://maps.googleapis.com/maps/api/place",
        headers: {
          HttpHeaders.contentTypeHeader: "application/json",
        },
        parameters: {
          "key": apiKey,
          "query": request.parameters["query"],
        },
      );
      return newRequest;
    }
    return request;
  }
}
