import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:smart_parcel/common/infrastructure/chopper/json_parser.dart';

import 'result.dart';

class LocationResultResponse {
  final List<dynamic> htmlAttributions;
  final String nextPageToken;
  final List<LocationResult> results;
  final String status;
  const LocationResultResponse({
    required this.htmlAttributions,
    required this.nextPageToken,
    required this.results,
    required this.status,
  });

  LocationResultResponse copyWith({
    List<dynamic>? htmlAttributions,
    String? nextPageToken,
    List<LocationResult>? results,
    String? status,
  }) {
    return LocationResultResponse(
      htmlAttributions: htmlAttributions ?? this.htmlAttributions,
      nextPageToken: nextPageToken ?? this.nextPageToken,
      results: results ?? this.results,
      status: status ?? this.status,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'htmlAttributions': htmlAttributions,
      'nextPageToken': nextPageToken,
      'results': results.map((x) => x.toMap()).toList(),
      'status': status,
    };
  }

  factory LocationResultResponse.fromMap(Map<String, dynamic> map) {
    return LocationResultResponse(
      htmlAttributions: List<dynamic>.from(map['html_attributions']),
      nextPageToken: map['next_page_token'],
      results: List<LocationResult>.from(
          map['results']?.map((x) => LocationResult.fromMap(x))),
      status: map['status'],
    );
  }

  String toJson() => json.encode(toMap());

  factory LocationResultResponse.fromJson(String source) =>
      LocationResultResponse.fromMap(json.decode(source));

  @override
  String toString() {
    return 'LocationResultResponse(htmlAttributions: $htmlAttributions, nextPageToken: $nextPageToken, results: $results, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is LocationResultResponse &&
        listEquals(other.htmlAttributions, htmlAttributions) &&
        other.nextPageToken == nextPageToken &&
        listEquals(other.results, results) &&
        other.status == status;
  }

  @override
  int get hashCode {
    return htmlAttributions.hashCode ^
        nextPageToken.hashCode ^
        results.hashCode ^
        status.hashCode;
  }

  static JsonFactory get jsonFactory =>
      (json) => LocationResultResponse.fromMap(json);
}
