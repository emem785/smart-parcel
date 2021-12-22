import 'dart:convert';

class Location {
  final int id;
  final String location;
  final String centerName;
  final String address;
  final int noOfCompartment;
  final int availableSpace;
  final bool isActive;
  final String createdAt;
  const Location({
    required this.id,
    required this.location,
    required this.centerName,
    required this.address,
    required this.noOfCompartment,
    required this.availableSpace,
    required this.isActive,
    required this.createdAt,
  });

  Location copyWith({
    int? id,
    String? location,
    String? centerName,
    String? address,
    int? noOfCompartment,
    int? availableSpace,
    bool? isActive,
    String? createdAt,
  }) {
    return Location(
      id: id ?? this.id,
      location: location ?? this.location,
      centerName: centerName ?? this.centerName,
      address: address ?? this.address,
      noOfCompartment: noOfCompartment ?? this.noOfCompartment,
      availableSpace: availableSpace ?? this.availableSpace,
      isActive: isActive ?? this.isActive,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'location': location,
      'center_name': centerName,
      'address': address,
      'no_of_compartment': noOfCompartment,
      'available_space': availableSpace,
      'is_active': isActive,
      'created_at': createdAt,
    };
  }

  factory Location.fromMap(Map<String, dynamic> map) {
    return Location(
      id: map['id']?.toInt() ?? 0,
      location: map['location'] ?? '',
      centerName: map['center_name'] ?? '',
      address: map['address'] ?? '',
      noOfCompartment: map['no_of_compartment']?.toInt() ?? 0,
      availableSpace: map['available_space']?.toInt() ?? 0,
      isActive: map['is_active'] ?? false,
      createdAt: map['created_at'] ?? '',
    );
  }
  String toJson() => json.encode(toMap());

  factory Location.fromJson(String source) =>
      Location.fromMap(json.decode(source));

  @override
  String toString() {
    return "Location(id: $id, location: '$location', centerName: '$centerName', address: '$address', noOfCompartment: $noOfCompartment, availableSpace: $availableSpace, isActive: $isActive, createdAt: '$createdAt')";
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Location &&
        other.id == id &&
        other.location == location &&
        other.centerName == centerName &&
        other.address == address &&
        other.noOfCompartment == noOfCompartment &&
        other.availableSpace == availableSpace &&
        other.isActive == isActive &&
        other.createdAt == createdAt;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        location.hashCode ^
        centerName.hashCode ^
        address.hashCode ^
        noOfCompartment.hashCode ^
        availableSpace.hashCode ^
        isActive.hashCode ^
        createdAt.hashCode;
  }
}
