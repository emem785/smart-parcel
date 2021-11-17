import 'dart:convert';

import 'package:smart_parcel/common/infrastructure/chopper/json_parser.dart';

import 'booking_data.dart';

class BookingResponse {
  final String message;
  final BookingData data;
  const BookingResponse({
    required this.message,
    required this.data,
  });

  BookingResponse copyWith({
    String? message,
    BookingData? data,
  }) {
    return BookingResponse(
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

  factory BookingResponse.fromMap(Map<String, dynamic> map) {
    return BookingResponse(
      message: map['message'],
      data: BookingData.fromMap(map['data']),
    );
  }

  String toJson() => json.encode(toMap());

  factory BookingResponse.fromJson(String source) =>
      BookingResponse.fromMap(json.decode(source));

  @override
  String toString() => 'BookingResponse(message: $message, data: $data)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is BookingResponse &&
        other.message == message &&
        other.data == data;
  }

  @override
  int get hashCode => message.hashCode ^ data.hashCode;

  static JsonFactory get jsonFactory => (json) => BookingResponse.fromMap(json);
}
