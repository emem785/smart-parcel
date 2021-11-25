import 'dart:convert';

import 'package:flutter/foundation.dart';

class ForgotPasswordError {
  final List<String>? email;
  final List<String>? otp;
  ForgotPasswordError({
    required this.email,
    required this.otp,
  });

  ForgotPasswordError copyWith({
    List<String>? email,
  }) {
    return ForgotPasswordError(
      email: email ?? this.email,
      otp: otp ?? otp,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'otp': otp,
    };
  }

  factory ForgotPasswordError.fromMap(Map<String, dynamic> map) {
    return ForgotPasswordError(
      email: map["email"] != null ? List<String>.from(map['email']) : [],
      otp: map["otp"] != null ? List<String>.from(map['otp']) : [],
    );
  }

  String toJson() => json.encode(toMap());

  factory ForgotPasswordError.fromJson(String source) =>
      ForgotPasswordError.fromMap(json.decode(source));

  @override
  String toString() => 'ForgotPasswordError(email: $email, otp: $otp)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ForgotPasswordError && listEquals(other.email, email);
  }

  @override
  int get hashCode => email.hashCode ^ otp.hashCode;
}
