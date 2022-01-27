import 'dart:convert';

class Payment_history {
  final int id;
  final String user_id;
  final int amount;
  final String payment_for;
  final String reference;
  final String currency;
  final String transaction_date;
  final bool is_active;
  final String created_at;
  Payment_history({
    required this.id,
    required this.user_id,
    required this.amount,
    required this.payment_for,
    required this.reference,
    required this.currency,
    required this.transaction_date,
    required this.is_active,
    required this.created_at,
  });

  Payment_history copyWith({
    int? id,
    String? user_id,
    int? amount,
    String? payment_for,
    String? reference,
    String? currency,
    String? transaction_date,
    bool? is_active,
    String? created_at,
  }) {
    return Payment_history(
      id: id ?? this.id,
      user_id: user_id ?? this.user_id,
      amount: amount ?? this.amount,
      payment_for: payment_for ?? this.payment_for,
      reference: reference ?? this.reference,
      currency: currency ?? this.currency,
      transaction_date: transaction_date ?? this.transaction_date,
      is_active: is_active ?? this.is_active,
      created_at: created_at ?? this.created_at,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'user_id': user_id,
      'amount': amount,
      'payment_for': payment_for,
      'reference': reference,
      'currency': currency,
      'transaction_date': transaction_date,
      'is_active': is_active,
      'created_at': created_at,
    };
  }

  factory Payment_history.fromMap(Map<String, dynamic> map) {
    return Payment_history(
      id: map['id']?.toInt() ?? 0,
      user_id: map['user_id'] ?? '',
      amount: map['amount']?.toInt() ?? 0,
      payment_for: map['payment_for'] ?? '',
      reference: map['reference'] ?? '',
      currency: map['currency'] ?? '',
      transaction_date: map['transaction_date'] ?? '',
      is_active: map['is_active'] ?? false,
      created_at: map['created_at'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Payment_history.fromJson(String source) => Payment_history.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Payment_history(id: $id, user_id: $user_id, amount: $amount, payment_for: $payment_for, reference: $reference, currency: $currency, transaction_date: $transaction_date, is_active: $is_active, created_at: $created_at)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Payment_history &&
      other.id == id &&
      other.user_id == user_id &&
      other.amount == amount &&
      other.payment_for == payment_for &&
      other.reference == reference &&
      other.currency == currency &&
      other.transaction_date == transaction_date &&
      other.is_active == is_active &&
      other.created_at == created_at;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      user_id.hashCode ^
      amount.hashCode ^
      payment_for.hashCode ^
      reference.hashCode ^
      currency.hashCode ^
      transaction_date.hashCode ^
      is_active.hashCode ^
      created_at.hashCode;
  }
}