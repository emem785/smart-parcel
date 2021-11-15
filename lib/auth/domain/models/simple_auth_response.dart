import 'dart:convert';

import 'package:smart_parcel/common/infrastructure/chopper/json_parser.dart';

class SimpleAuthResponse {
  final String message;
  const SimpleAuthResponse({
    required this.message,
  });

  SimpleAuthResponse copyWith({
    String? message,
  }) {
    return SimpleAuthResponse(
      message: message ?? this.message,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'message': message,
    };
  }

  factory SimpleAuthResponse.fromMap(Map<String, dynamic> map) {
    return SimpleAuthResponse(
      message: map['message'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory SimpleAuthResponse.fromJson(String source) =>
      SimpleAuthResponse.fromMap(json.decode(source));

  @override
  String toString() => 'SimpleAuthResponse(message: $message)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SimpleAuthResponse && other.message == message;
  }

  @override
  int get hashCode => message.hashCode;

  static JsonFactory get jsonFactory =>
      (json) => SimpleAuthResponse.fromMap(json);
}
