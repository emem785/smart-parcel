import 'dart:convert';

import 'package:flutter/foundation.dart';

class ForgotPasswordError {
  final List<String> email;
  ForgotPasswordError({
    required this.email,
  });

  ForgotPasswordError copyWith({
    List<String>? email,
  }) {
    return ForgotPasswordError(
      email: email ?? this.email,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'email': email,
    };
  }

  factory ForgotPasswordError.fromMap(Map<String, dynamic> map) {
    return ForgotPasswordError(
      email: List<String>.from(map['email']),
    );
  }

  String toJson() => json.encode(toMap());

  factory ForgotPasswordError.fromJson(String source) =>
      ForgotPasswordError.fromMap(json.decode(source));

  @override
  String toString() => 'ForgotPasswordError(email: $email)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ForgotPasswordError && listEquals(other.email, email);
  }

  @override
  int get hashCode => email.hashCode;
}
