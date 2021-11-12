import 'dart:convert';

class AuthToken {
  final String access;
  final String refresh;
  const AuthToken({
    required this.access,
    required this.refresh,
  });

  AuthToken copyWith({
    String? access,
    String? refresh,
  }) {
    return AuthToken(
      access: access ?? this.access,
      refresh: refresh ?? this.refresh,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'access': access,
      'refresh': refresh,
    };
  }

  factory AuthToken.fromMap(Map<String, dynamic> map) {
    return AuthToken(
      access: map['access'],
      refresh: map['refresh'],
    );
  }

  String toJson() => json.encode(toMap());

  factory AuthToken.fromJson(String source) =>
      AuthToken.fromMap(json.decode(source));

  @override
  String toString() => 'AuthToken(access: $access, refresh: $refresh)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AuthToken &&
        other.access == access &&
        other.refresh == refresh;
  }

  @override
  int get hashCode => access.hashCode ^ refresh.hashCode;
}
