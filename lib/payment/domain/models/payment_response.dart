import 'dart:convert';

import 'package:smart_parcel/common/infrastructure/chopper/json_parser.dart';

import 'payment_data.dart';

class PaymentResponse {
  final String message;
  final PaymentData data;
  const PaymentResponse({
    required this.message,
    required this.data,
  });

  PaymentResponse copyWith({
    String? message,
    PaymentData? data,
  }) {
    return PaymentResponse(
      message: message ?? this.message,
      data: data ?? this.data,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'message': message,
      'data': data.toMap(),
    };
  }

  factory PaymentResponse.fromMap(Map<String, dynamic> map) {
    return PaymentResponse(
      message: map['message'],
      data: PaymentData.fromMap(map['data']),
    );
  }

  String toJson() => json.encode(toMap());

  factory PaymentResponse.fromJson(String source) =>
      PaymentResponse.fromMap(json.decode(source));

  @override
  String toString() => "PaymentResponse(message: '$message', data: $data)";

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PaymentResponse &&
        other.message == message &&
        other.data == data;
  }

  @override
  int get hashCode => message.hashCode ^ data.hashCode;
  static JsonFactory get jsonFactory => (json) => PaymentResponse.fromMap(json);
}
