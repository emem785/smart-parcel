import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:smart_parcel/common/infrastructure/chopper/json_parser.dart';

import 'size_data.dart';

class SizesResponse {
  final String message;
  final List<SizeData> data;

  const SizesResponse({
    required this.message,
    required this.data,
  });

  SizesResponse copyWith({
    String? message,
    List<SizeData>? data,
  }) {
    return SizesResponse(
      message: message ?? this.message,
      data: data ?? this.data,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'message': message,
      'data': data.map((x) => x.toMap()).toList(),
    };
  }

  factory SizesResponse.fromMap(Map<String, dynamic> map) {
    return SizesResponse(
      message: map['message'] ?? '',
      data: List<SizeData>.from(map['data']?.map((x) => SizeData.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory SizesResponse.fromJson(String source) =>
      SizesResponse.fromMap(json.decode(source));

  @override
  String toString() => "SizesResponse(message: '$message', data: $data)";

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SizesResponse &&
        other.message == message &&
        listEquals(other.data, data);
  }

  @override
  int get hashCode => message.hashCode ^ data.hashCode;

  static JsonFactory get jsonFactory => (json) => SizesResponse.fromMap(json);
}
