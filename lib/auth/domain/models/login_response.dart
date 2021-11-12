import 'dart:convert';

import 'package:smart_parcel/common/infrastructure/chopper/json_parser.dart';

import 'auth_tokens.dart';

class LoginResponse {
  final bool status;
  final String message;
  final AuthToken data;
  const LoginResponse({
    required this.status,
    required this.message,
    required this.data,
  });

  LoginResponse copyWith({
    bool? status,
    String? message,
    AuthToken? data,
  }) {
    return LoginResponse(
      status: status ?? this.status,
      message: message ?? this.message,
      data: data ?? this.data,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'status': status,
      'message': message,
      'data': data.toMap(),
    };
  }

  factory LoginResponse.fromMap(Map<String, dynamic> map) {
    return LoginResponse(
      status: map['status'],
      message: map['message'],
      data: AuthToken.fromMap(map['data']),
    );
  }

  String toJson() => json.encode(toMap());

  factory LoginResponse.fromJson(String source) =>
      LoginResponse.fromMap(json.decode(source));

  @override
  String toString() =>
      'LoginResponse(status: $status, message: $message, data: $data)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is LoginResponse &&
        other.status == status &&
        other.message == message &&
        other.data == data;
  }

  @override
  int get hashCode => status.hashCode ^ message.hashCode ^ data.hashCode;
  static JsonFactory get jsonFactory => (json) => LoginResponse.fromMap(json);
}
