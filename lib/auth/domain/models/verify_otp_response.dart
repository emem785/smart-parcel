import 'dart:convert';

import 'package:smart_parcel/common/infrastructure/chopper/json_parser.dart';

import '../../../common/domain/models/user.dart';

class VerifyOtpResponse {
  final String message;
  final User user;

  const VerifyOtpResponse({
    required this.message,
    required this.user,
  });

  VerifyOtpResponse copyWith({
    bool? status,
    String? message,
    User? user,
  }) {
    return VerifyOtpResponse(
      message: message ?? this.message,
      user: user ?? this.user,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'message': message,
      'user': user.toMap(),
    };
  }

  factory VerifyOtpResponse.fromMap(Map<String, dynamic> map) {
    return VerifyOtpResponse(
      message: map['message'],
      user: User.fromMap(map['data']),
    );
  }

  String toJson() => json.encode(toMap());

  factory VerifyOtpResponse.fromJson(String source) =>
      VerifyOtpResponse.fromMap(json.decode(source));

  @override
  String toString() => 'VerifyOtpResponse( message: $message, user: $user)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is VerifyOtpResponse &&
        other.message == message &&
        other.user == user;
  }

  @override
  int get hashCode => message.hashCode ^ user.hashCode;

  static JsonFactory get jsonFactory =>
      (json) => VerifyOtpResponse.fromMap(json);
}
