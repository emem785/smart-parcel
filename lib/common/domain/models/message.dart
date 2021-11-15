import 'dart:convert';

class TokenErrorMessage {
  final String tokenClass;
  final String tokenType;
  final String message;
  TokenErrorMessage({
    required this.tokenClass,
    required this.tokenType,
    required this.message,
  });

  TokenErrorMessage copyWith({
    String? tokenClass,
    String? tokenType,
    String? message,
  }) {
    return TokenErrorMessage(
      tokenClass: tokenClass ?? this.tokenClass,
      tokenType: tokenType ?? this.tokenType,
      message: message ?? this.message,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'tokenClass': tokenClass,
      'tokenType': tokenType,
      'message': message,
    };
  }

  factory TokenErrorMessage.fromMap(Map<String, dynamic> map) {
    return TokenErrorMessage(
      tokenClass: map['token_class'],
      tokenType: map['token_type'],
      message: map['message'],
    );
  }

  String toJson() => json.encode(toMap());

  factory TokenErrorMessage.fromJson(String source) =>
      TokenErrorMessage.fromMap(json.decode(source));

  @override
  String toString() =>
      'TokenErrorMessage(tokenClass: $tokenClass, tokenType: $tokenType, message: $message)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is TokenErrorMessage &&
        other.tokenClass == tokenClass &&
        other.tokenType == tokenType &&
        other.message == message;
  }

  @override
  int get hashCode =>
      tokenClass.hashCode ^ tokenType.hashCode ^ message.hashCode;
}
