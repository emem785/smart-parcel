import 'dart:convert';

import 'package:smart_parcel/common/infrastructure/chopper/json_parser.dart';

class ForgotPasswordResponse {
  final String status;

  const ForgotPasswordResponse({
    required this.status,
  });

  ForgotPasswordResponse copyWith({
    String? status,
  }) {
    return ForgotPasswordResponse(
      status: status ?? this.status,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'status': status,
    };
  }

  factory ForgotPasswordResponse.fromMap(Map<String, dynamic> map) {
    return ForgotPasswordResponse(
      status: map['status'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ForgotPasswordResponse.fromJson(String source) =>
      ForgotPasswordResponse.fromMap(json.decode(source));

  @override
  String toString() => 'ForgotPasswordResponse(status: $status)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ForgotPasswordResponse && other.status == status;
  }

  @override
  int get hashCode => status.hashCode;
  static JsonFactory get jsonFactory =>
      (json) => ForgotPasswordResponse.fromMap(json);
}
