class ApiException implements Exception {
  final String message;

  @override
  String toString() {
    return message;
  }

  ApiException(this.message);
}

class ConnectivityException implements Exception {
  final String message;

  @override
  String toString() {
    return message;
  }

  ConnectivityException(this.message);
}
