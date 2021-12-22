import 'dart:convert';

class CustomerForm {
  final String name;
  final String email;
  final String phone;
  final String? address;
  final String? description;
  final String? city;
  const CustomerForm({
    required this.name,
    required this.email,
    required this.phone,
    required this.address,
    required this.description,
    required this.city,
  });

  const CustomerForm.empty()
      : email = '',
        name = '',
        phone = '',
        address = '',
        description = '',
        city = '';

  CustomerForm copyWith({
    String? name,
    String? email,
    String? phone,
    String? address,
    String? description,
    String? city,
  }) {
    return CustomerForm(
      name: name ?? this.name,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      address: address ?? this.address,
      description: description ?? this.description,
      city: city ?? this.city,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'phone': phone,
      'address': address,
      'description': description,
      'city': city,
    };
  }

  factory CustomerForm.fromMap(Map<String, dynamic> map) {
    return CustomerForm(
      name: map['name'],
      email: map['email'],
      phone: map['phone'],
      address: map['address'],
      description: map['description'],
      city: map['city'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CustomerForm.fromJson(String source) =>
      CustomerForm.fromMap(json.decode(source));

  @override
  String toString() =>
      'CustomerForm(name: $name, email: $email, phone: $phone, address:$address, description: $description, city: $city)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CustomerForm &&
        other.name == name &&
        other.address == address &&
        other.description == description &&
        other.city == city &&
        other.email == email &&
        other.phone == phone;
  }

  @override
  int get hashCode =>
      name.hashCode ^
      email.hashCode ^
      phone.hashCode ^
      address.hashCode ^
      description.hashCode ^
      city.hashCode;
}
