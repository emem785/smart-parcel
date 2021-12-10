import 'dart:convert';

import 'package:smart_parcel/common/infrastructure/chopper/json_parser.dart';

class User {
  final String? id;
  final String firstName;
  final String lastName;
  final String email;
  final String? profilePicUrl;
  final String phone;

  const User({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.profilePicUrl,
    required this.phone,
  });

  User.empty()
      : id = null,
        firstName = '',
        lastName = '',
        email = '',
        profilePicUrl = '',
        phone = '';

  User copyWith({
    String? id,
    String? firstName,
    String? lastName,
    String? email,
    String? profilePicUrl,
    String? phone,
  }) {
    return User(
      id: id ?? this.id,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      email: email ?? this.email,
      profilePicUrl: profilePicUrl ?? this.profilePicUrl,
      phone: phone ?? this.phone,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'first_name': firstName,
      'last_name': lastName,
      'email': email,
      'profile_pics_url': profilePicUrl,
      'phone': phone,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'] ?? '',
      firstName: map['first_name'],
      lastName: map['last_name'],
      email: map['email'],
      profilePicUrl: map['profile_pics_url'] ?? "",
      phone: map['phone'],
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));

  @override
  String toString() {
    return 'User(id:$id , firstName: $firstName, lastName: $lastName, email: $email, profilePicUrl:$profilePicUrl , phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is User &&
        other.id == id &&
        other.firstName == firstName &&
        other.lastName == lastName &&
        other.email == email &&
        other.profilePicUrl == profilePicUrl &&
        other.phone == phone;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        firstName.hashCode ^
        lastName.hashCode ^
        email.hashCode ^
        profilePicUrl.hashCode ^
        phone.hashCode;
  }

  static JsonFactory get userFactory => (json) => User.fromMap(json);
}
