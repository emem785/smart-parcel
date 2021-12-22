import 'dart:convert';

import 'package:smart_parcel/common/domain/models/user.dart';
import 'package:smart_parcel/payment/domain/models/location.dart';

class PaymentData {
  final String name;
  final String phone;
  final String email;
  final String duration;
  final String address;
  final String city;
  final String pickUp;
  final String dropOff;
  final String parcelType;
  final User user;
  final Location location;
  const PaymentData({
    required this.name,
    required this.phone,
    required this.email,
    required this.duration,
    required this.address,
    required this.city,
    required this.pickUp,
    required this.dropOff,
    required this.parcelType,
    required this.user,
    required this.location,
  });

  PaymentData copyWith({
    String? name,
    String? phone,
    String? email,
    String? duration,
    String? address,
    String? city,
    String? pickUp,
    String? dropOff,
    String? parcelType,
    User? user,
    Location? location,
  }) {
    return PaymentData(
      name: name ?? this.name,
      phone: phone ?? this.phone,
      email: email ?? this.email,
      duration: duration ?? this.duration,
      address: address ?? this.address,
      city: city ?? this.city,
      pickUp: pickUp ?? this.pickUp,
      dropOff: dropOff ?? this.dropOff,
      parcelType: parcelType ?? this.parcelType,
      user: user ?? this.user,
      location: location ?? this.location,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'phone': phone,
      'email': email,
      'duration': duration,
      'address': address,
      'city': city,
      'pick_up': pickUp,
      'drop_off': dropOff,
      'parcel_type': parcelType,
      'user': user.toMap(),
      'location': location.toMap(),
    };
  }

  factory PaymentData.fromMap(Map<String, dynamic> map) {
    return PaymentData(
      name: map['name'] ?? '',
      phone: map['phone'] ?? '',
      email: map['email'] ?? '',
      duration: map['duration'] ?? '',
      address: map['address'] ?? '',
      city: map['city'] ?? '',
      pickUp: map['pick_up'] ?? '',
      dropOff: map['drop_off'] ?? '',
      parcelType: map['parcel_type'] ?? '',
      user: User.fromMap(map['user']),
      location: Location.fromMap(map['location']),
    );
  }
  String toJson() => json.encode(toMap());

  factory PaymentData.fromJson(String source) =>
      PaymentData.fromMap(json.decode(source));

  @override
  String toString() {
    return "PaymentData(name: '$name', phone: '$phone', email: '$email', duration: '$duration', address: '$address', city: '$city', pickUp: '$pickUp', dropOff: '$dropOff', parcelType: '$parcelType', user: $user, location: $location)";
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PaymentData &&
        other.name == name &&
        other.phone == phone &&
        other.email == email &&
        other.duration == duration &&
        other.address == address &&
        other.city == city &&
        other.pickUp == pickUp &&
        other.dropOff == dropOff &&
        other.parcelType == parcelType &&
        other.user == user &&
        other.location == location;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        phone.hashCode ^
        email.hashCode ^
        duration.hashCode ^
        address.hashCode ^
        city.hashCode ^
        pickUp.hashCode ^
        dropOff.hashCode ^
        parcelType.hashCode ^
        user.hashCode ^
        location.hashCode;
  }
}
