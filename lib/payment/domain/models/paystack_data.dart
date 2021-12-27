import 'dart:convert';

class PaystackData {
  final String authorizationUrl;
  final String accessCode;
  final String reference;
  const PaystackData({
    required this.authorizationUrl,
    required this.accessCode,
    required this.reference,
  });

  PaystackData copyWith({
    String? authorizationUrl,
    String? accessCode,
    String? reference,
  }) {
    return PaystackData(
      authorizationUrl: authorizationUrl ?? this.authorizationUrl,
      accessCode: accessCode ?? this.accessCode,
      reference: reference ?? this.reference,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'authorizationUrl': authorizationUrl,
      'accessCode': accessCode,
      'reference': reference,
    };
  }

  factory PaystackData.fromMap(Map<String, dynamic> map) {
    return PaystackData(
      authorizationUrl: map['authorization_url'],
      accessCode: map['access_code'],
      reference: map['reference'],
    );
  }

  String toJson() => json.encode(toMap());

  factory PaystackData.fromJson(String source) =>
      PaystackData.fromMap(json.decode(source));

  @override
  String toString() =>
      "PaystackData(authorizationUrl: '$authorizationUrl', accessCode: '$accessCode', reference: '$reference')";

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PaystackData &&
        other.authorizationUrl == authorizationUrl &&
        other.accessCode == accessCode &&
        other.reference == reference;
  }

  @override
  int get hashCode =>
      authorizationUrl.hashCode ^ accessCode.hashCode ^ reference.hashCode;
}
