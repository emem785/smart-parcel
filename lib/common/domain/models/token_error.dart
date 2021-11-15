import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'message.dart';

class TokenError {
  final String detail;
  final String code;
  final List<TokenErrorMessage> messages;
  TokenError({
    required this.detail,
    required this.code,
    required this.messages,
  });

  TokenError copyWith({
    String? detail,
    String? code,
    List<TokenErrorMessage>? messages,
  }) {
    return TokenError(
      detail: detail ?? this.detail,
      code: code ?? this.code,
      messages: messages ?? this.messages,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'detail': detail,
      'code': code,
      'messages': messages.map((x) => x.toMap()).toList(),
    };
  }

  factory TokenError.fromMap(Map<String, dynamic> map) {
    return TokenError(
      detail: map['detail'],
      code: map['code'],
      messages: List<TokenErrorMessage>.from(
          map['messages']?.map((x) => TokenErrorMessage.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory TokenError.fromJson(String source) =>
      TokenError.fromMap(json.decode(source));

  @override
  String toString() =>
      'TokenError(detail: $detail, code: $code, messages: $messages)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is TokenError &&
        other.detail == detail &&
        other.code == code &&
        listEquals(other.messages, messages);
  }

  @override
  int get hashCode => detail.hashCode ^ code.hashCode ^ messages.hashCode;
}
