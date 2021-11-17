import 'dart:convert';

import 'package:smart_parcel/common/infrastructure/chopper/json_parser.dart';

class User {
  final String? id;
  final String username;
  final String firstName;
  final String lastName;
  final String email;
  final String phone;

  const User({
    required this.id,
    required this.username,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phone,
  });

  User copyWith({
    String? id,
    String? username,
    String? firstName,
    String? lastName,
    String? email,
    String? phone,
  }) {
    return User(
      id: id ?? this.id,
      username: username ?? this.username,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      email: email ?? this.email,
      phone: phone ?? this.phone,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'username': username,
      'first_name': firstName,
      'last_name': lastName,
      'email': email,
      'phone': phone,
      'id': phone,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'],
      username: map['username'],
      firstName: map['first_name'],
      lastName: map['last_name'],
      email: map['email'],
      phone: map['phone'],
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));

  @override
  String toString() {
    return 'User(id:$id , username: $username, firstName: $firstName, lastName: $lastName, email: $email, phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is User &&
        other.id == id &&
        other.username == username &&
        other.firstName == firstName &&
        other.lastName == lastName &&
        other.email == email &&
        other.phone == phone;
  }

  @override
  int get hashCode {
    return username.hashCode ^
        id.hashCode ^
        firstName.hashCode ^
        lastName.hashCode ^
        email.hashCode ^
        phone.hashCode;
  }

  static JsonFactory get userFactory => (json) => User.fromMap(json);
}
