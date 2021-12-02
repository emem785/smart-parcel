import 'dart:convert';

class CustomerToCustomer {
  final int id;
  final String userId;
  final String name;
  final String email;
  final String phone;
  final int locationId;
  final String status;
  final String dropOff;
  final String pickUp;
  final String address;
  final bool isActive;
  final String createdAt;
  const CustomerToCustomer({
    required this.id,
    required this.userId,
    required this.name,
    required this.email,
    required this.phone,
    required this.locationId,
    required this.status,
    required this.dropOff,
    required this.pickUp,
    required this.address,
    required this.isActive,
    required this.createdAt,
  });

  CustomerToCustomer copyWith({
    int? id,
    String? userId,
    String? name,
    String? email,
    String? phone,
    int? locationId,
    String? status,
    String? dropOff,
    String? pickUp,
    String? address,
    bool? isActive,
    String? createdAt,
  }) {
    return CustomerToCustomer(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      name: name ?? this.name,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      locationId: locationId ?? this.locationId,
      status: status ?? this.status,
      dropOff: dropOff ?? this.dropOff,
      pickUp: pickUp ?? this.pickUp,
      address: address ?? this.address,
      isActive: isActive ?? this.isActive,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'userId': userId,
      'name': name,
      'email': email,
      'phone': phone,
      'locationId': locationId,
      'status': status,
      'dropOff': dropOff,
      'pickUp': pickUp,
      'address': address,
      'isActive': isActive,
      'createdAt': createdAt,
    };
  }

  factory CustomerToCustomer.fromMap(Map<String, dynamic> map) {
    return CustomerToCustomer(
      id: map['id']?.toInt() ?? 0,
      userId: map['user_id'] ?? '',
      name: map['name'] ?? '',
      email: map['email'] ?? '',
      phone: map['phone'] ?? '',
      locationId: map['location_id']?.toInt() ?? 0,
      status: map['status'] ?? '',
      dropOff: map['drop_off'] ?? '',
      pickUp: map['pick_up'] ?? '',
      address: map['location__address'] ?? '',
      isActive: map['is_active'] ?? false,
      createdAt: map['created_at'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory CustomerToCustomer.fromJson(String source) =>
      CustomerToCustomer.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CustomerToCustomer(id: $id, userId: $userId, name: $name, email: $email, phone: $phone, locationId: $locationId, status: $status, address: $address, isActive: $isActive, createdAt: $createdAt, dropOff: $dropOff, pickUp: $pickUp)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CustomerToCustomer &&
        other.id == id &&
        other.userId == userId &&
        other.name == name &&
        other.email == email &&
        other.phone == phone &&
        other.locationId == locationId &&
        other.status == status &&
        other.dropOff == dropOff &&
        other.pickUp == pickUp &&
        other.address == address &&
        other.isActive == isActive &&
        other.createdAt == createdAt;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        userId.hashCode ^
        name.hashCode ^
        email.hashCode ^
        phone.hashCode ^
        locationId.hashCode ^
        status.hashCode ^
        dropOff.hashCode ^
        pickUp.hashCode ^
        address.hashCode ^
        isActive.hashCode ^
        createdAt.hashCode;
  }
}
