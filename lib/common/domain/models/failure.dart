class Failure {
  final String message;
  const Failure(this.message);

  Failure copyWith({
    String? message,
  }) {
    return Failure(message ?? this.message);
  }

  Map<String, dynamic> toMap() {
    return {
      'message': message,
    };
  }

  @override
  String toString() => 'Failure(message: $message)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Failure && other.message == message;
  }

  @override
  int get hashCode => message.hashCode;
}
