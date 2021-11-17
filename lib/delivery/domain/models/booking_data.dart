import 'dart:convert';

class BookingData {
  final int id;
  final String? name;
  final String? email;
  final String? phone;
  final String status;
  final bool isActive;
  final String createdAt;
  final String user;
  final int location;
  const BookingData({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.status,
    required this.isActive,
    required this.createdAt,
    required this.user,
    required this.location,
  });

  BookingData copyWith({
    int? id,
    String? name,
    String? email,
    String? phone,
    String? status,
    bool? isActive,
    String? createdAt,
    String? user,
    int? location,
  }) {
    return BookingData(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      status: status ?? this.status,
      isActive: isActive ?? this.isActive,
      createdAt: createdAt ?? this.createdAt,
      user: user ?? this.user,
      location: location ?? this.location,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'phone': phone,
      'status': status,
      'is_active': isActive,
      'created_at': createdAt,
      'user': user,
      'location': location,
    };
  }

  factory BookingData.fromMap(Map<String, dynamic> map) {
    return BookingData(
      id: map['id']?.toInt(),
      name: map['name'] ?? '',
      email: map['email'] ?? '',
      phone: map['phone'] ?? '',
      status: map['status'],
      isActive: map['is_active'],
      createdAt: map['created_at'],
      user: map['user'],
      location: map['location']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory BookingData.fromJson(String source) =>
      BookingData.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Bookingdata(id: $id, name: $name, email: $email, phone: $phone, status: $status, isActive: $isActive, createdAt: $createdAt, user: $user, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is BookingData &&
        other.id == id &&
        other.name == name &&
        other.email == email &&
        other.phone == phone &&
        other.status == status &&
        other.isActive == isActive &&
        other.createdAt == createdAt &&
        other.user == user &&
        other.location == location;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        email.hashCode ^
        phone.hashCode ^
        status.hashCode ^
        isActive.hashCode ^
        createdAt.hashCode ^
        user.hashCode ^
        location.hashCode;
  }
}
