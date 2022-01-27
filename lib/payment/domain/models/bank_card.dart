import 'dart:convert';

enum CardBrand { visa, mastercard }

class BankCard {
  final int id;
  final String userId;
  final String authorizationCode;
  final String bin;
  final String last4;
  final String expMonth;
  final String expYear;
  final String bank;
  final String cardType;
  final String countryCode;
  final String dateAdded;
  const BankCard({
    required this.id,
    required this.userId,
    required this.authorizationCode,
    required this.bin,
    required this.last4,
    required this.expMonth,
    required this.expYear,
    required this.bank,
    required this.cardType,
    required this.countryCode,
    required this.dateAdded,
  });

  CardBrand get cardBrand {
    return cardType.contains("visa") ? CardBrand.visa : CardBrand.mastercard;
  }

  BankCard.empty()
      : id = 0,
        userId = '',
        authorizationCode = '',
        bin = '',
        last4 = '',
        expMonth = '',
        expYear = '',
        bank = '',
        cardType = '',
        countryCode = '',
        dateAdded = '';

  BankCard copyWith({
    int? id,
    String? userId,
    String? authorizationCode,
    String? bin,
    String? last4,
    String? expMonth,
    String? expYear,
    String? bank,
    String? cardType,
    String? countryCode,
    String? dateAdded,
  }) {
    return BankCard(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      authorizationCode: authorizationCode ?? this.authorizationCode,
      bin: bin ?? this.bin,
      last4: last4 ?? this.last4,
      expMonth: expMonth ?? this.expMonth,
      expYear: expYear ?? this.expYear,
      bank: bank ?? this.bank,
      cardType: cardType ?? this.cardType,
      countryCode: countryCode ?? this.countryCode,
      dateAdded: dateAdded ?? this.dateAdded,
    );
  }

  bool isEmpty() {
    return userId.isEmpty &&
        authorizationCode.isEmpty &&
        bin.isEmpty &&
        last4.isEmpty &&
        expMonth.isEmpty &&
        expYear.isEmpty &&
        bank.isEmpty &&
        cardType.isEmpty &&
        countryCode.isEmpty &&
        dateAdded.isEmpty;
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'user_id': userId,
      'authorization_code': authorizationCode,
      'bin': bin,
      'last4': last4,
      'exp_month': expMonth,
      'exp_year': expYear,
      'bank': bank,
      'card_type': cardType,
      'country_code': countryCode,
      'date_added': dateAdded,
    };
  }

  factory BankCard.fromMap(Map<String, dynamic> map) {
    return BankCard(
      id: map['id']?.toInt() ?? 0,
      userId: map['user_id'] ?? '',
      authorizationCode: map['authorization_code'] ?? '',
      bin: map['bin'] ?? '',
      last4: map['last4'] ?? '',
      expMonth: map['exp_month'] ?? '',
      expYear: map['exp_year'] ?? '',
      bank: map['bank'] ?? '',
      cardType: map['card_type'] ?? '',
      countryCode: map['country_code'] ?? '',
      dateAdded: map['date_added'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory BankCard.fromJson(String source) =>
      BankCard.fromMap(json.decode(source));

  @override
  String toString() {
    return "BankCard(id: $id, userId: '$userId', authorizationCode: '$authorizationCode', bin: '$bin', last4: '$last4', expMonth: '$expMonth', expYear: '$expYear', bank: '$bank', cardType: '$cardType', countryCode: '$countryCode',  dateAdded: '$dateAdded')";
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is BankCard &&
        other.id == id &&
        other.userId == userId &&
        other.authorizationCode == authorizationCode &&
        other.bin == bin &&
        other.last4 == last4 &&
        other.expMonth == expMonth &&
        other.expYear == expYear &&
        other.bank == bank &&
        other.cardType == cardType &&
        other.countryCode == countryCode &&
        other.dateAdded == dateAdded;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        userId.hashCode ^
        authorizationCode.hashCode ^
        bin.hashCode ^
        last4.hashCode ^
        expMonth.hashCode ^
        expYear.hashCode ^
        bank.hashCode ^
        cardType.hashCode ^
        countryCode.hashCode ^
        dateAdded.hashCode;
  }
}
