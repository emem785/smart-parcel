import 'dart:convert';

class SizeData {
  final int id;
  final String name;
  final int length;
  final int breadth;
  final int price;

  const SizeData({
    required this.id,
    required this.name,
    required this.length,
    required this.breadth,
    required this.price,
  });

  SizeData copyWith({
    int? id,
    String? name,
    int? length,
    int? breadth,
    int? price,
  }) {
    return SizeData(
      id: id ?? this.id,
      name: name ?? this.name,
      length: length ?? this.length,
      breadth: breadth ?? this.breadth,
      price: price ?? this.price,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'length': length,
      'breadth': breadth,
      'price': price,
    };
  }

  factory SizeData.fromMap(Map<String, dynamic> map) {
    return SizeData(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      length: map['length']?.toInt() ?? 0,
      breadth: map['breadth']?.toInt() ?? 0,
      price: map['price']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory SizeData.fromJson(String source) =>
      SizeData.fromMap(json.decode(source));

  @override
  String toString() {
    return "SizeData(id: $id, name: '$name', length: $length, breadth: $breadth, price: $price  )";
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SizeData &&
        other.id == id &&
        other.name == name &&
        other.length == length &&
        other.breadth == breadth &&
        other.price == price;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        length.hashCode ^
        breadth.hashCode ^
        price.hashCode;
  }
}
