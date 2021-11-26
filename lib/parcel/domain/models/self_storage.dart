import 'dart:convert';

class SelfStorage {
  final int id;
  final String userId;
  final String duration;
  final int locationId;
  final String status;
  final String address;
  final bool isActive;
  final String createdAt;
  const SelfStorage({
    required this.id,
    required this.userId,
    required this.duration,
    required this.locationId,
    required this.status,
    required this.address,
    required this.isActive,
    required this.createdAt,
  });

  SelfStorage copyWith({
    int? id,
    String? userId,
    String? duration,
    int? locationId,
    String? status,
    String? address,
    bool? isActive,
    String? createdAt,
  }) {
    return SelfStorage(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      duration: duration ?? this.duration,
      locationId: locationId ?? this.locationId,
      status: status ?? this.status,
      address: address ?? this.address,
      isActive: isActive ?? this.isActive,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'userId': userId,
      'duration': duration,
      'locationId': locationId,
      'status': status,
      'address': address,
      'isActive': isActive,
      'createdAt': createdAt,
    };
  }

  factory SelfStorage.fromMap(Map<String, dynamic> map) {
    return SelfStorage(
      id: map['id']?.toInt(),
      userId: map['user_id'] ?? '',
      duration: map['duration'] ?? '',
      locationId: map['location_id']?.toInt() ?? 0,
      status: map['status'] ?? '',
      address: map['location__address'] ?? '',
      isActive: map['is_active'] ?? false,
      createdAt: map['created_at'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory SelfStorage.fromJson(String source) =>
      SelfStorage.fromMap(json.decode(source));

  @override
  String toString() {
    return 'SelfStorage(id: $id, userId: $userId, duration: $duration, locationId: $locationId, status: $status,status: $status, isActive: $isActive, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SelfStorage &&
        other.id == id &&
        other.userId == userId &&
        other.duration == duration &&
        other.locationId == locationId &&
        other.status == status &&
        other.address == address &&
        other.isActive == isActive &&
        other.createdAt == createdAt;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        userId.hashCode ^
        duration.hashCode ^
        locationId.hashCode ^
        status.hashCode ^
        address.hashCode ^
        isActive.hashCode ^
        createdAt.hashCode;
  }
}
