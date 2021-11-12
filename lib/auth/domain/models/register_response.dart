import 'dart:convert';

import 'package:smart_parcel/common/infrastructure/chopper/json_parser.dart';

import '../../../common/domain/models/user.dart';

class RegisterResponse {
  final bool status;
  final String message;
  final User user;

  RegisterResponse({
    required this.status,
    required this.message,
    required this.user,
  });

  RegisterResponse copyWith({
    bool? status,
    String? message,
    User? user,
  }) {
    return RegisterResponse(
      status: status ?? this.status,
      message: message ?? this.message,
      user: user ?? this.user,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'status': status,
      'message': message,
      'user': user.toMap(),
    };
  }

  factory RegisterResponse.fromMap(Map<String, dynamic> map) {
    return RegisterResponse(
      status: map['status'],
      message: map['message'],
      user: User.fromMap(map['data']),
    );
  }

  String toJson() => json.encode(toMap());

  factory RegisterResponse.fromJson(String source) =>
      RegisterResponse.fromMap(json.decode(source));

  @override
  String toString() =>
      'RegisterResponse(status: $status, message: $message, user: $user)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is RegisterResponse &&
        other.status == status &&
        other.message == message &&
        other.user == user;
  }

  @override
  int get hashCode => status.hashCode ^ message.hashCode ^ user.hashCode;

  static JsonFactory get jsonFactory =>
      (json) => RegisterResponse.fromMap(json);
}
