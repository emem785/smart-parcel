import 'dart:convert';

class PaymentData {
  final int id;
  final String? duration;
  final String pickUp;
  final String dropOff;
  final String status;
  final String address;
  final bool isActive;
  final String createdAt;
  final String user;
  final int location;
  const PaymentData({
    required this.id,
    required this.duration,
    required this.pickUp,
    required this.dropOff,
    required this.status,
    required this.isActive,
    required this.createdAt,
    required this.user,
    required this.location,
    required this.address,
  });

  PaymentData copyWith({
    int? id,
    String? duration,
    String? pickUp,
    String? dropOff,
    String? status,
    String? address,
    bool? isActive,
    String? createdAt,
    String? user,
    int? location,
  }) {
    return PaymentData(
      id: id ?? this.id,
      duration: duration ?? this.duration,
      pickUp: pickUp ?? this.pickUp,
      dropOff: dropOff ?? this.dropOff,
      status: status ?? this.status,
      isActive: isActive ?? this.isActive,
      createdAt: createdAt ?? this.createdAt,
      user: user ?? this.user,
      address: address ?? this.address,
      location: location ?? this.location,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'duration': duration,
      'pickUp': pickUp,
      'dropOff': dropOff,
      'status': status,
      'isActive': isActive,
      'createdAt': createdAt,
      'user': user,
      'location': location,
    };
  }

  factory PaymentData.fromMap(Map<String, dynamic> map) {
    return PaymentData(
      id: map['id']?.toInt(),
      duration: map['duration'] ?? "",
      pickUp: map['pick_up'],
      dropOff: map['drop_off'],
      status: map['status'],
      isActive: map['is_active'],
      address: map['address'],
      createdAt: map['created_at'],
      user: map['user'],
      location: map['location']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory PaymentData.fromJson(String source) =>
      PaymentData.fromMap(json.decode(source));

  @override
  String toString() {
    return 'PaymentData(id: $id, duration: $duration, pickUp: $pickUp, dropOff: $dropOff, status: $status, isActive: $isActive, createdAt: $createdAt, user: $user, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PaymentData &&
        other.id == id &&
        other.duration == duration &&
        other.pickUp == pickUp &&
        other.dropOff == dropOff &&
        other.status == status &&
        other.isActive == isActive &&
        other.createdAt == createdAt &&
        other.address == address &&
        other.user == user &&
        other.location == location;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        duration.hashCode ^
        pickUp.hashCode ^
        dropOff.hashCode ^
        status.hashCode ^
        isActive.hashCode ^
        address.hashCode ^
        createdAt.hashCode ^
        user.hashCode ^
        location.hashCode;
  }
}
