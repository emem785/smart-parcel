import 'dart:convert';

import 'package:smart_parcel/common/infrastructure/chopper/json_parser.dart';

import 'charge_data.dart';

class ChargeResponse {
  final bool status;
  final String message;
  final ChargeData data;
  const ChargeResponse({
    required this.status,
    required this.message,
    required this.data,
  });

  ChargeResponse copyWith({
    bool? status,
    String? message,
    ChargeData? data,
  }) {
    return ChargeResponse(
      status: status ?? this.status,
      message: message ?? this.message,
      data: data ?? this.data,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'status': status,
      'message': message,
      'data': data.toMap(),
    };
  }

  factory ChargeResponse.fromMap(Map<String, dynamic> map) {
    return ChargeResponse(
      status: map['status'] ?? false,
      message: map['message'] ?? '',
      data: ChargeData.fromMap(map['data']),
    );
  }

  String toJson() => json.encode(toMap());

  factory ChargeResponse.fromJson(String source) =>
      ChargeResponse.fromMap(json.decode(source));

  @override
  String toString() =>
      "ChargeResponse(status: $status, message: '$message', data: $data)";

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ChargeResponse &&
        other.status == status &&
        other.message == message &&
        other.data == data;
  }

  @override
  int get hashCode => status.hashCode ^ message.hashCode ^ data.hashCode;

  static JsonFactory get jsonFactory => (json) => ChargeResponse.fromMap(json);
}
