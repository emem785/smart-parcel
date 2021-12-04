import 'dart:convert';

class ParcelCenter {
  final int id;
  final int noOfCompartments;
  final int availableSpaces;
  final String location;
  final String address;
  final bool is_active;
  final String created_at;
  const ParcelCenter({
    required this.id,
    required this.noOfCompartments,
    required this.availableSpaces,
    required this.location,
    required this.address,
    required this.is_active,
    required this.created_at,
  });

  ParcelCenter.empty()
      : id = 0,
        noOfCompartments = 0,
        availableSpaces = 0,
        location = '',
        address = '',
        is_active = false,
        created_at = '';

  ParcelCenter copyWith({
    int? id,
    int? noOfCompartments,
    int? availableSpaces,
    String? location,
    String? address,
    bool? is_active,
    String? created_at,
  }) {
    return ParcelCenter(
      id: id ?? this.id,
      noOfCompartments: noOfCompartments ?? this.noOfCompartments,
      availableSpaces: availableSpaces ?? this.availableSpaces,
      location: location ?? this.location,
      address: address ?? this.address,
      is_active: is_active ?? this.is_active,
      created_at: created_at ?? this.created_at,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'noOfCompartments': noOfCompartments,
      'availableSpaces': availableSpaces,
      'location': location,
      'address': address,
      'is_active': is_active,
      'created_at': created_at,
    };
  }

  factory ParcelCenter.fromMap(Map<String, dynamic> map) {
    return ParcelCenter(
      id: map['id']?.toInt(),
      noOfCompartments: map['no_of_compartment']?.toInt(),
      availableSpaces: map['available_space']?.toInt(),
      location: map['location'],
      address: map['address'],
      is_active: map['is_active'],
      created_at: map['created_at'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ParcelCenter.fromJson(String source) =>
      ParcelCenter.fromMap(json.decode(source));

  @override
  String toString() {
    return "ParcelCenter(id: $id, noOfCompartments: $noOfCompartments, availableSpaces: $availableSpaces, location: '$location', address: '$address', is_active: $is_active, created_at: '$created_at')";
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ParcelCenter &&
        other.id == id &&
        other.noOfCompartments == noOfCompartments &&
        other.availableSpaces == availableSpaces &&
        other.location == location &&
        other.address == address &&
        other.is_active == is_active &&
        other.created_at == created_at;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        noOfCompartments.hashCode ^
        availableSpaces.hashCode ^
        location.hashCode ^
        address.hashCode ^
        is_active.hashCode ^
        created_at.hashCode;
  }
}
