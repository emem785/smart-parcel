import 'dart:convert';

import 'validation_error.dart';

class AuthError {
  final bool status;
  final String message;
  final ValidationError error;
  AuthError({
    required this.status,
    required this.message,
    required this.error,
  });

  AuthError copyWith({
    bool? status,
    String? message,
    ValidationError? error,
  }) {
    return AuthError(
      status: status ?? this.status,
      message: message ?? this.message,
      error: error ?? this.error,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'status': status,
      'message': message,
      'error': error.toMap(),
    };
  }

  factory AuthError.fromMap(Map<String, dynamic> map) {
    return AuthError(
      status: map['status'],
      message: map['message'],
      error: ValidationError.fromMap(map['error']),
    );
  }

  String toJson() => json.encode(toMap());

  factory AuthError.fromJson(String source) =>
      AuthError.fromMap(json.decode(source));

  @override
  String toString() =>
      'AuthError(status: $status, message: $message, error: $error)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AuthError &&
        other.status == status &&
        other.message == message &&
        other.error == error;
  }

  @override
  int get hashCode => status.hashCode ^ message.hashCode ^ error.hashCode;
}
