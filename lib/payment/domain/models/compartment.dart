import 'dart:convert';

class Compartment {
  final int id;
  final String number;
  final bool isAvailable;
  final bool isActive;
  final String createdAt;
  final int size;
  final int category;
  const Compartment({
    required this.id,
    required this.number,
    required this.isAvailable,
    required this.isActive,
    required this.createdAt,
    required this.size,
    required this.category,
  });

  Compartment copyWith({
    int? id,
    String? number,
    bool? isAvailable,
    bool? isActive,
    String? createdAt,
    int? size,
    int? category,
  }) {
    return Compartment(
      id: id ?? this.id,
      number: number ?? this.number,
      isAvailable: isAvailable ?? this.isAvailable,
      isActive: isActive ?? this.isActive,
      createdAt: createdAt ?? this.createdAt,
      size: size ?? this.size,
      category: category ?? this.category,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'number': number,
      'isAvailable': isAvailable,
      'isActive': isActive,
      'created_at': createdAt,
      'size': size,
      'category': category,
    };
  }

  factory Compartment.fromMap(Map<String, dynamic> map) {
    return Compartment(
      id: map['id']?.toInt() ?? 0,
      number: map['number'] ?? '',
      isAvailable: map['is_available'] ?? false,
      isActive: map['is_active'] ?? false,
      createdAt: map['created_at'] ?? '',
      size: map['size']?.toInt() ?? 0,
      category: map['category']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Compartment.fromJson(String source) =>
      Compartment.fromMap(json.decode(source));

  @override
  String toString() {
    return "Compartment(id: $id, number: '$number', isAvailable: $isAvailable, isActive: $isActive, createdAt: '$createdAt', size: $size, category: $category)";
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Compartment &&
        other.id == id &&
        other.number == number &&
        other.isAvailable == isAvailable &&
        other.isActive == isActive &&
        other.createdAt == createdAt &&
        other.size == size &&
        other.category == category;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        number.hashCode ^
        isAvailable.hashCode ^
        isActive.hashCode ^
        createdAt.hashCode ^
        size.hashCode ^
        category.hashCode;
  }
}
