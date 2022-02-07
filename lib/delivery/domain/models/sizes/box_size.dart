import 'package:smart_parcel/delivery/domain/models/size_data.dart';

abstract class BoxSize {
  final int id;
  final String name;
  final int price;
  final int quantity;
  final int length;
  final int breadth;

  String get sizeName;

  BoxSize({
    required this.id,
    required this.name,
    required this.price,
    required this.quantity,
    required this.breadth,
    required this.length,
  });
}

class SmallSize implements BoxSize {
  @override
  final int id;
  @override
  final String name;
  @override
  final int price;
  @override
  final int quantity;
  @override
  final int breadth;
  @override
  final int length;

  @override
  String get sizeName => "Small (S)";

  SmallSize({
    required this.id,
    required this.name,
    required this.price,
    required this.quantity,
    required this.breadth,
    required this.length,
  });

  factory SmallSize.fromSizeData(SizeData sizeData, int quantity) {
    return SmallSize(
      id: sizeData.id,
      name: sizeData.name,
      price: sizeData.price,
      quantity: quantity,
      breadth: sizeData.breadth,
      length: sizeData.length,
    );
  }
}

class MediumSize implements BoxSize {
  @override
  final int id;
  @override
  final String name;
  @override
  final int price;
  @override
  final int quantity;
  @override
  final int breadth;
  @override
  final int length;

  @override
  String get sizeName => "Medium (M)";
  MediumSize({
    required this.id,
    required this.name,
    required this.price,
    required this.quantity,
    required this.breadth,
    required this.length,
  });
  factory MediumSize.fromSizeData(SizeData sizeData, int quantity) {
    return MediumSize(
      id: sizeData.id,
      name: sizeData.name,
      price: sizeData.price,
      quantity: quantity,
      breadth: sizeData.breadth,
      length: sizeData.length,
    );
  }
}

class LargeSize implements BoxSize {
  @override
  final int id;
  @override
  final String name;
  @override
  final int price;
  @override
  final int quantity;
  @override
  final int breadth;
  @override
  final int length;

  @override
  String get sizeName => "Large (L)";
  LargeSize({
    required this.id,
    required this.name,
    required this.price,
    required this.quantity,
    required this.breadth,
    required this.length,
  });

  factory LargeSize.fromSizeData(SizeData sizeData, int quantity) {
    return LargeSize(
      id: sizeData.id,
      name: sizeData.name,
      price: sizeData.price,
      quantity: quantity,
      breadth: sizeData.breadth,
      length: sizeData.length,
    );
  }
}

class XLargeSize implements BoxSize {
  @override
  final int id;
  @override
  final String name;
  @override
  final int price;
  @override
  final int quantity;
  @override
  final int breadth;
  @override
  final int length;

  @override
  String get sizeName => "Extra-Large (XL)";
  XLargeSize({
    required this.id,
    required this.name,
    required this.price,
    required this.quantity,
    required this.breadth,
    required this.length,
  });

  factory XLargeSize.fromSizeData(SizeData sizeData, int quantity) {
    return XLargeSize(
      id: sizeData.id,
      name: sizeData.name,
      price: sizeData.price,
      quantity: quantity,
      breadth: sizeData.breadth,
      length: sizeData.length,
    );
  }
}

class NullBoxSize implements BoxSize {
  @override
  int get id => 0;

  @override
  String get name => "";

  @override
  int get price => 0;

  @override
  String get sizeName => "";

  @override
  int get quantity => 0;

  @override
  int get breadth => 0;

  @override
  int get length => 0;
}
