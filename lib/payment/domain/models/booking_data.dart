import 'dart:convert';

import 'package:smart_parcel/common/domain/models/user.dart';
import 'package:smart_parcel/payment/domain/models/compartment.dart';
import 'package:smart_parcel/payment/domain/models/location.dart';

class BookingData {
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
  final Compartment compartment;
  final Location location;
  const BookingData({
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
    required this.compartment,
    required this.location,
  });

  BookingData copyWith({
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
    Compartment? compartment,
    Location? location,
  }) {
    return BookingData(
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
      compartment: compartment ?? this.compartment,
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
      'compartment': user.toMap(),
      'location': location.toMap(),
    };
  }

  factory BookingData.fromMap(Map<String, dynamic> map) {
    return BookingData(
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
      compartment: Compartment.fromMap(map['compartment']),
      location: Location.fromMap(map['location']),
    );
  }
  String toJson() => json.encode(toMap());

  factory BookingData.fromJson(String source) =>
      BookingData.fromMap(json.decode(source));

  @override
  String toString() {
    return "BookingData(name: '$name', phone: '$phone', email: '$email', duration: '$duration', address: '$address', city: '$city', pickUp: '$pickUp', dropOff: '$dropOff', parcelType: '$parcelType', user: $user, location: $location, compartment: $compartment)";
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is BookingData &&
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
        other.compartment == compartment &&
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
        compartment.hashCode ^
        location.hashCode;
  }
}
