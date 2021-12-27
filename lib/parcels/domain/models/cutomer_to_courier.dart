import 'dart:convert';

import 'package:smart_parcel/parcels/domain/models/parcel_data.dart';

class CustomerToCourier extends DeliveryDetail with StatusMixin{
  final int id;
  final String name;
  final String email;
  final String phone;
  final String locationAddress;
  final String city;
  final String status;
  final String dropOff;
  final String pickUp;
  final String createdAt;
  const CustomerToCourier({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.locationAddress,
    required this.city,
    required this.status,
    required this.dropOff,
    required this.pickUp,
    required this.createdAt,
  }) : super(status);

  CustomerToCourier copyWith({
    int? id,
    String? name,
    String? email,
    String? phone,
    String? locationAddress,
    String? city,
    String? status,
    String? dropOff,
    String? pickUp,
    String? createdAt,
  }) {
    return CustomerToCourier(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      locationAddress: locationAddress ?? this.locationAddress,
      city: city ?? this.city,
      status: status ?? this.status,
      dropOff: dropOff ?? this.dropOff,
      pickUp: pickUp ?? this.pickUp,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'phone': phone,
      'location__address': locationAddress,
      'city': city,
      'status': status,
      'drop_off': dropOff,
      'pick_up': pickUp,
      'created_at': createdAt,
    };
  }

  factory CustomerToCourier.fromMap(Map<String, dynamic> map) {
    return CustomerToCourier(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      email: map['email'] ?? '',
      phone: map['phone'] ?? '',
      locationAddress: map['location__address'] ?? '',
      city: map['city'] ?? '',
      status: map['status'] ?? '',
      dropOff: map['drop_off'] ?? '',
      pickUp: map['pick_up'] ?? '',
      createdAt: map['created_at'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory CustomerToCourier.fromJson(String source) =>
      CustomerToCourier.fromMap(json.decode(source));

  @override
  String toString() {
    return "CustomerToCourier(id: $id, name: '$name', email: '$email', phone: '$phone', locationAddress: '$locationAddress', city: '$city', status: '$status', dropOff: '$dropOff', pickUp: '$pickUp', createdAt: '$createdAt')";
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CustomerToCourier &&
        other.id == id &&
        other.name == name &&
        other.email == email &&
        other.phone == phone &&
        other.locationAddress == locationAddress &&
        other.city == city &&
        other.status == status &&
        other.dropOff == dropOff &&
        other.pickUp == pickUp &&
        other.createdAt == createdAt;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        email.hashCode ^
        phone.hashCode ^
        locationAddress.hashCode ^
        city.hashCode ^
        status.hashCode ^
        dropOff.hashCode ^
        pickUp.hashCode ^
        createdAt.hashCode;
  }
}
