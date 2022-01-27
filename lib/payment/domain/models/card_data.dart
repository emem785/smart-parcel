import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:smart_parcel/parcels/domain/models/payment_history.dart';

import 'bank_card.dart';

class CardData {
  final List<PaymentHistory> paymentHistory;
  final List<BankCard> savedCards;
  const CardData({
    required this.paymentHistory,
    required this.savedCards,
  });

  CardData copyWith({
    List<PaymentHistory>? paymentHistory,
    List<BankCard>? savedCards,
  }) {
    return CardData(
      paymentHistory: paymentHistory ?? this.paymentHistory,
      savedCards: savedCards ?? this.savedCards,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'payment_history': paymentHistory.map((x) => x.toMap()).toList(),
      'saved_cards': savedCards.map((x) => x.toMap()).toList(),
    };
  }

  factory CardData.fromMap(Map<String, dynamic> map) {
    return CardData(
      paymentHistory: List<PaymentHistory>.from(
          map['payment_history']?.map((x) => PaymentHistory.fromMap(x))),
      savedCards: List<BankCard>.from(
          map['saved_cards']?.map((x) => BankCard.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory CardData.fromJson(String source) =>
      CardData.fromMap(json.decode(source));

  @override
  String toString() =>
      'CardData(paymentHistory: $paymentHistory, savedCards: $savedCards)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CardData &&
        listEquals(other.paymentHistory, paymentHistory) &&
        listEquals(other.savedCards, savedCards);
  }

  @override
  int get hashCode => paymentHistory.hashCode ^ savedCards.hashCode;
}
