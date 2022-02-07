abstract class BoxSize {
  final int id;
  final String name;
  final int price;
  final int quantity;
  BoxSize({
    required this.id,
    required this.name,
    required this.price,
    required this.quantity,
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

  SmallSize({
    required this.id,
    required this.name,
    required this.price,
    required this.quantity,
  });
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

  MediumSize({
    required this.id,
    required this.name,
    required this.price,
    required this.quantity,
  });
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

  LargeSize({
    required this.id,
    required this.name,
    required this.price,
    required this.quantity,
  });
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

  XLargeSize({
    required this.id,
    required this.name,
    required this.price,
    required this.quantity,
  });
}

class NullBoxSize implements BoxSize {
  @override
  int get id => 0;

  @override
  String get name => "";

  @override
  int get price => 0;

  @override
  int get quantity => 0;
}
