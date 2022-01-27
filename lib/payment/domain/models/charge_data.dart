import 'dart:convert';

class ChargeData {
  final int amount;
  final String currency;
  final String transactionDate;
  final String status;
  final String reference;
  final String domain;
  final String metadata;
  final String gatewayResponse;
  final String channel;
  final int fees;
  const ChargeData({
    required this.amount,
    required this.currency,
    required this.transactionDate,
    required this.status,
    required this.reference,
    required this.domain,
    required this.metadata,
    required this.gatewayResponse,
    required this.channel,
    required this.fees,
  });

  ChargeData copyWith({
    int? amount,
    String? currency,
    String? transactionDate,
    String? status,
    String? reference,
    String? domain,
    String? metadata,
    String? gatewayResponse,
    String? channel,
    int? fees,
  }) {
    return ChargeData(
      amount: amount ?? this.amount,
      currency: currency ?? this.currency,
      transactionDate: transactionDate ?? this.transactionDate,
      status: status ?? this.status,
      reference: reference ?? this.reference,
      domain: domain ?? this.domain,
      metadata: metadata ?? this.metadata,
      gatewayResponse: gatewayResponse ?? this.gatewayResponse,
      channel: channel ?? this.channel,
      fees: fees ?? this.fees,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'amount': amount,
      'currency': currency,
      'transaction_date': transactionDate,
      'status': status,
      'reference': reference,
      'domain': domain,
      'metadata': metadata,
      'gateway_response': gatewayResponse,
      'channel': channel,
      'fees': fees,
    };
  }

  factory ChargeData.fromMap(Map<String, dynamic> map) {
    return ChargeData(
      amount: map['amount']?.toInt() ?? 0,
      currency: map['currency'] ?? '',
      transactionDate: map['transaction_date'] ?? '',
      status: map['status'] ?? '',
      reference: map['reference'] ?? '',
      domain: map['domain'] ?? '',
      metadata: map['metadata'] ?? '',
      gatewayResponse: map['gateway_response'] ?? '',
      channel: map['channel'] ?? '',
      fees: map['fees'] ?? '',
    );
  }
  String toJson() => json.encode(toMap());

  factory ChargeData.fromJson(String source) =>
      ChargeData.fromMap(json.decode(source));

  @override
  String toString() {
    return "ChargeData(amount: $amount, currency: '$currency', transactionDate: '$transactionDate', status: '$status', reference: '$reference', domain: '$domain', metadata: '$metadata', gatewayResponse: '$gatewayResponse',  channel: '$channel',   fees: $fees)";
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ChargeData &&
        other.amount == amount &&
        other.currency == currency &&
        other.transactionDate == transactionDate &&
        other.status == status &&
        other.reference == reference &&
        other.domain == domain &&
        other.metadata == metadata &&
        other.gatewayResponse == gatewayResponse &&
        other.channel == channel &&
        other.fees == fees;
  }

  @override
  int get hashCode {
    return amount.hashCode ^
        currency.hashCode ^
        transactionDate.hashCode ^
        status.hashCode ^
        reference.hashCode ^
        domain.hashCode ^
        metadata.hashCode ^
        gatewayResponse.hashCode ^
        channel.hashCode ^
        fees.hashCode;
  }
}
