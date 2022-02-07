import 'dart:convert';

class ParcelCenter {
  final int id;
  final String location;
  final String centerName;
  final String address;
  final int availableSmallSpace;
  final int availableMediumSpace;
  final int availableLargeSpace;
  final int availableXlargeSpace;
  final bool isActive;
  final String createdAt;
  const ParcelCenter({
    required this.id,
    required this.location,
    required this.centerName,
    required this.address,
    required this.availableSmallSpace,
    required this.availableMediumSpace,
    required this.availableLargeSpace,
    required this.availableXlargeSpace,
    required this.isActive,
    required this.createdAt,
  });

  int get availableSpaces =>
      availableLargeSpace +
      availableXlargeSpace +
      availableMediumSpace +
      availableSmallSpace;

  ParcelCenter.empty()
      : id = 0,
        location = '',
        centerName = '',
        address = '',
        availableSmallSpace = 0,
        availableMediumSpace = 0,
        availableLargeSpace = 0,
        availableXlargeSpace = 0,
        isActive = false,
        createdAt = '';

  ParcelCenter copyWith({
    int? id,
    String? location,
    String? centerName,
    String? address,
    int? availableSmallSpace,
    int? availableMediumSpace,
    int? availableLargeSpace,
    int? availableXlargeSpace,
    bool? isActive,
    String? createdAt,
  }) {
    return ParcelCenter(
      id: id ?? this.id,
      location: location ?? this.location,
      centerName: centerName ?? this.centerName,
      address: address ?? this.address,
      availableSmallSpace: availableSmallSpace ?? this.availableSmallSpace,
      availableMediumSpace: availableMediumSpace ?? this.availableMediumSpace,
      availableLargeSpace: availableLargeSpace ?? this.availableLargeSpace,
      availableXlargeSpace: availableXlargeSpace ?? this.availableXlargeSpace,
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
      'available_small_space': availableSmallSpace,
      'available_medium_space': availableMediumSpace,
      'available_large_space': availableLargeSpace,
      'available_xlarge_space': availableXlargeSpace,
      'is_active': isActive,
      'created_at': createdAt,
    };
  }

  factory ParcelCenter.fromMap(Map<String, dynamic> map) {
    return ParcelCenter(
      id: map['id']?.toInt() ?? 0,
      location: map['location'] ?? '',
      centerName: map['center_name'] ?? '',
      address: map['address'] ?? '',
      availableSmallSpace: map['available_small_space']?.toInt() ?? 0,
      availableMediumSpace: map['available_medium_space']?.toInt() ?? 0,
      availableLargeSpace: map['available_large_space']?.toInt() ?? 0,
      availableXlargeSpace: map['available_xlarge_space']?.toInt() ?? 0,
      isActive: map['is_active'] ?? false,
      createdAt: map['created_at'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ParcelCenter.fromJson(String source) =>
      ParcelCenter.fromMap(json.decode(source));

  @override
  String toString() {
    return "ParcelCenter(id: $id,  location: '$location', centerName: '$centerName', address: '$address',  availableSmallSpace: $availableSmallSpace, availableMediumSpace: $availableMediumSpace, availableLargeSpace: $availableLargeSpace, availableXlargeSpace: $availableXlargeSpace, isActive: $isActive, createdAt: '$createdAt')";
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ParcelCenter &&
        other.id == id &&
        other.location == location &&
        other.centerName == centerName &&
        other.address == address &&
        other.availableSmallSpace == availableSmallSpace &&
        other.availableMediumSpace == availableMediumSpace &&
        other.availableLargeSpace == availableLargeSpace &&
        other.availableXlargeSpace == availableXlargeSpace &&
        other.isActive == isActive &&
        other.createdAt == createdAt;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        location.hashCode ^
        centerName.hashCode ^
        address.hashCode ^
        availableSmallSpace.hashCode ^
        availableMediumSpace.hashCode ^
        availableLargeSpace.hashCode ^
        availableXlargeSpace.hashCode ^
        isActive.hashCode ^
        createdAt.hashCode;
  }
}
