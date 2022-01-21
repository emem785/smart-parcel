import 'dart:convert';

import 'package:flutter/foundation.dart';

class ValidationError {
  List<String>? username;
  List<String>? email;
  List<String>? phone;
  List<String>? password;

  ValidationError({this.username, this.email, this.phone, this.password});

  ValidationError copyWith({
    List<String>? username,
    List<String>? email,
    List<String>? phone,
    List<String>? password,
  }) {
    return ValidationError(
      username: username ?? this.username,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      password: password ?? this.password,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'username': username,
      'email': email,
      'phone': phone,
      'password': password,
    };
  }

  factory ValidationError.fromMap(Map<String, dynamic> map) {
    return ValidationError(
      username:
          map['username'] != null ? List<String>.from(map['username']) : [],
      email: map['email'] != null ? List<String>.from(map['email']) : [],
      phone: map['phone'] != null ? List<String>.from(map['phone']) : [],
      password:
          map['password'] != null ? List<String>.from(map['password']) : [],
    );
  }

  String toJson() => json.encode(toMap());

  factory ValidationError.fromJson(String source) =>
      ValidationError.fromMap(json.decode(source));

  @override
  String toString() =>
      'ValidationError(username: $username, email: $email phone: $phone password: $password)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ValidationError &&
        listEquals(other.username, username) &&
        listEquals(other.phone, phone) &&
        listEquals(other.password, password) &&
        listEquals(other.email, email);
  }

  @override
  int get hashCode =>
      username.hashCode ^ email.hashCode ^ phone.hashCode ^ password.hashCode;
}
