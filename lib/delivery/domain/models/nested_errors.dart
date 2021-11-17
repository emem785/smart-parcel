import 'dart:convert';

import 'package:flutter/foundation.dart';

class NestedErrors {
  final List<String>? user;
  NestedErrors({
    required this.user,
  });

  NestedErrors copyWith({
    List<String>? user,
  }) {
    return NestedErrors(
      user: user ?? this.user,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'user': user,
    };
  }

  factory NestedErrors.fromMap(Map<String, dynamic> map) {
    return NestedErrors(
      user: map['user'] != null ? ["Unexpected Server Error"] : [],
    );
  }

  String toJson() => json.encode(toMap());

  factory NestedErrors.fromJson(String source) =>
      NestedErrors.fromMap(json.decode(source));

  @override
  String toString() => 'NestedErrors(user: $user)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is NestedErrors && listEquals(other.user, user);
  }

  @override
  int get hashCode => user.hashCode;
}
