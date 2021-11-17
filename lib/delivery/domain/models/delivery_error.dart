import 'dart:convert';

import 'nested_errors.dart';

class DeliveryError {
  final String message;
  final NestedErrors errors;
  const DeliveryError({
    required this.message,
    required this.errors,
  });

  DeliveryError copyWith({
    String? message,
    NestedErrors? errors,
  }) {
    return DeliveryError(
      message: message ?? this.message,
      errors: errors ?? this.errors,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'message': message,
      'errors': errors.toMap(),
    };
  }

  factory DeliveryError.fromMap(Map<String, dynamic> map) {
    return DeliveryError(
      message: map['message'],
      errors: NestedErrors.fromMap(map['errors']),
    );
  }

  String toJson() => json.encode(toMap());

  factory DeliveryError.fromJson(String source) =>
      DeliveryError.fromMap(json.decode(source));

  @override
  String toString() => 'DeliveryError(message: $message, errors: $errors)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is DeliveryError &&
        other.message == message &&
        other.errors == errors;
  }

  @override
  int get hashCode => message.hashCode ^ errors.hashCode;
}
