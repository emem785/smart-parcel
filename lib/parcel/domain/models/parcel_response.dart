import 'dart:convert';

import 'package:smart_parcel/common/infrastructure/chopper/json_parser.dart';
import 'package:smart_parcel/parcel/domain/models/parcel_data.dart';

class ParcelResponse {
  final bool status;
  final String message;
  final ParcelData data;
  const ParcelResponse({
    required this.status,
    required this.message,
    required this.data,
  });

  ParcelResponse copyWith({
    bool? status,
    String? message,
    ParcelData? data,
  }) {
    return ParcelResponse(
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

  factory ParcelResponse.fromMap(Map<String, dynamic> map) {
    return ParcelResponse(
      status: map['status'],
      message: map['message'],
      data: ParcelData.fromMap(map['data']),
    );
  }

  String toJson() => json.encode(toMap());

  factory ParcelResponse.fromJson(String source) =>
      ParcelResponse.fromMap(json.decode(source));

  @override
  String toString() =>
      'ParcelResponse(status: $status, message: $message, data: $data)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ParcelResponse &&
        other.status == status &&
        other.message == message &&
        other.data == data;
  }

  @override
  int get hashCode => status.hashCode ^ message.hashCode ^ data.hashCode;

  static JsonFactory get jsonFactory => (json) => ParcelResponse.fromMap(json);
}
