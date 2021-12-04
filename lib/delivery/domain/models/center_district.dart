import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:smart_parcel/common/infrastructure/chopper/json_parser.dart';

import 'center.dart';

class CenterDistrict {
  final String name;
  final List<ParcelCenter> centers;
  const CenterDistrict({
    required this.name,
    required this.centers,
  });

  CenterDistrict copyWith({
    String? name,
    List<ParcelCenter>? centers,
  }) {
    return CenterDistrict(
      name: name ?? this.name,
      centers: centers ?? this.centers,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'centers': centers.map((x) => x.toMap()).toList(),
    };
  }

  factory CenterDistrict.fromMap(Map<String, dynamic> map) {
    return CenterDistrict(
      name: map['name'],
      centers: List<ParcelCenter>.from(
        map['centers']?.map((x) => ParcelCenter.fromMap(x)),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory CenterDistrict.fromJson(String source) =>
      CenterDistrict.fromMap(json.decode(source));

  @override
  String toString() => "CenterDistrict(name: '$name', centers: $centers)";

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CenterDistrict &&
        other.name == name &&
        listEquals(other.centers, centers);
  }

  @override
  int get hashCode => name.hashCode ^ centers.hashCode;
  static JsonFactory get jsonFactory => (json) => CenterDistrict.fromMap(json);
}
