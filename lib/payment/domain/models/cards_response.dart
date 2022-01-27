import 'dart:convert';

import 'package:smart_parcel/common/infrastructure/chopper/json_parser.dart';

import 'card_data.dart';

class CardResponse {
  final bool status;
  final String message;
  final CardData data;
  const CardResponse({
    required this.status,
    required this.message,
    required this.data,
  });

  CardResponse copyWith({
    bool? status,
    String? message,
    CardData? data,
  }) {
    return CardResponse(
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

  factory CardResponse.fromMap(Map<String, dynamic> map) {
    return CardResponse(
      status: map['status'] ?? false,
      message: map['message'] ?? '',
      data: CardData.fromMap(map['data']),
    );
  }

  String toJson() => json.encode(toMap());

  factory CardResponse.fromJson(String source) =>
      CardResponse.fromMap(json.decode(source));

  @override
  String toString() =>
      "CardResponse(status: $status, message: '$message', data: $data)";

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CardResponse &&
        other.status == status &&
        other.message == message &&
        other.data == data;
  }

  @override
  int get hashCode => status.hashCode ^ message.hashCode ^ data.hashCode;

  static JsonFactory get jsonFactory => (json) => CardResponse.fromMap(json);
}
