import 'dart:convert';

import 'package:flutter/foundation.dart';

class ValidationError {
  List<String>? username;
  List<String>? email;

  ValidationError({
    this.username,
    this.email,
  });

  ValidationError copyWith({
    List<String>? username,
    List<String>? email,
  }) {
    return ValidationError(
      username: username ?? this.username,
      email: email ?? this.email,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'username': username,
      'email': email,
    };
  }

  factory ValidationError.fromMap(Map<String, dynamic> map) {
    return ValidationError(
      username:
          map['username'] != null ? List<String>.from(map['username']) : [],
      email: map['email'] != null ? List<String>.from(map['email']) : [],
    );
  }

  String toJson() => json.encode(toMap());

  factory ValidationError.fromJson(String source) =>
      ValidationError.fromMap(json.decode(source));

  @override
  String toString() => 'ValidationError(username: $username, email: $email)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ValidationError &&
        listEquals(other.username, username) &&
        listEquals(other.email, email);
  }

  @override
  int get hashCode => username.hashCode ^ email.hashCode;
}
