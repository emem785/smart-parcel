import 'dart:convert';

import 'package:smart_parcel/common/domain/models/user.dart';
import 'package:smart_parcel/common/infrastructure/chopper/json_parser.dart';

import 'auth_tokens.dart';

class LoginResponse {
  final bool? status;
  final String? message;
  final AuthToken? authToken;
  final User? user;
  const LoginResponse({
    required this.status,
    required this.message,
    required this.authToken,
    required this.user,
  });

  LoginResponse copyWith({
    bool? status,
    String? message,
    AuthToken? authToken,
    User? user,
  }) {
    return LoginResponse(
      status: status ?? this.status,
      message: message ?? this.message,
      authToken: authToken ?? this.authToken,
      user: user ?? this.user,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'status': status,
      'message': message,
      'authToken': authToken?.toMap(),
    };
  }

  factory LoginResponse.fromMap(Map<String, dynamic> map) {
    return LoginResponse(
      status: map['status'] ?? true,
      message: map['message'],
      authToken:
          map['data']['access'] != null ? AuthToken.fromMap(map['data']) : null,
      user: map['data'] != null ? User.fromMap(map['data']) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory LoginResponse.fromJson(String source) =>
      LoginResponse.fromMap(json.decode(source));

  @override
  String toString() =>
      'LoginResponse(status: $status, message: $message, authToken: $authToken, user: $user)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is LoginResponse &&
        other.status == status &&
        other.message == message &&
        other.authToken == authToken;
  }

  @override
  int get hashCode => status.hashCode ^ message.hashCode ^ authToken.hashCode;
  static JsonFactory get jsonFactory => (json) => LoginResponse.fromMap(json);
}
