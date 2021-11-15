import 'dart:convert';

class LoginError {
  final bool status;
  final String error;
  const LoginError({
    required this.status,
    required this.error,
  });

  LoginError copyWith({
    bool? status,
    String? error,
  }) {
    return LoginError(
      status: status ?? this.status,
      error: error ?? this.error,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'status': status,
      'error': error,
    };
  }

  factory LoginError.fromMap(Map<String, dynamic> map) {
    return LoginError(
      status: map['status'],
      error: map['error'],
    );
  }

  String toJson() => json.encode(toMap());

  factory LoginError.fromJson(String source) =>
      LoginError.fromMap(json.decode(source));

  @override
  String toString() => 'LoginError(status: $status, error: $error)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is LoginError &&
        other.status == status &&
        other.error == error;
  }

  @override
  int get hashCode => status.hashCode ^ error.hashCode;
}
