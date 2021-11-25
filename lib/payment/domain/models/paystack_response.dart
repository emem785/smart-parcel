import 'dart:convert';

import 'package:smart_parcel/common/infrastructure/chopper/json_parser.dart';

import 'paystack_data.dart';

class PaystackResponse {
  final bool status;
  final String message;
  final PaystackData data;
  const PaystackResponse({
    required this.status,
    required this.message,
    required this.data,
  });

  PaystackResponse copyWith({
    bool? status,
    String? message,
    PaystackData? data,
  }) {
    return PaystackResponse(
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

  factory PaystackResponse.fromMap(Map<String, dynamic> map) {
    return PaystackResponse(
      status: map['status'],
      message: map['message'],
      data: PaystackData.fromMap(map['data']),
    );
  }

  String toJson() => json.encode(toMap());

  factory PaystackResponse.fromJson(String source) =>
      PaystackResponse.fromMap(json.decode(source));

  @override
  String toString() =>
      'PaystackResponse(status: $status, message: $message, data: $data)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PaystackResponse &&
        other.status == status &&
        other.message == message &&
        other.data == data;
  }

  @override
  int get hashCode => status.hashCode ^ message.hashCode ^ data.hashCode;

  static JsonFactory get jsonFactory =>
      (json) => PaystackResponse.fromMap(json);
}
