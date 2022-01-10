import 'dart:convert';

class ParcelStats {
  final int pending;
  final int dropped;
  final int assigned;
  final int completed;
  const ParcelStats({
    required this.pending,
    required this.dropped,
    required this.assigned,
    required this.completed,
  });

  ParcelStats copyWith({
    int? pending,
    int? dropped,
    int? assigned,
    int? completed,
  }) {
    return ParcelStats(
      pending: pending ?? this.pending,
      dropped: dropped ?? this.dropped,
      assigned: assigned ?? this.assigned,
      completed: completed ?? this.completed,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'pending': pending,
      'dropped': dropped,
      'assigned': assigned,
      'completed': completed,
    };
  }

  factory ParcelStats.fromMap(Map<String, dynamic> map) {
    return ParcelStats(
      pending: map['pending']?.toInt() ?? 0,
      dropped: map['dropped']?.toInt() ?? 0,
      assigned: map['assigned']?.toInt() ?? 0,
      completed: map['completed']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory ParcelStats.fromJson(String source) =>
      ParcelStats.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ParcelStats(pending: $pending, dropped: $dropped, assigned: $assigned, completed: $completed)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ParcelStats &&
        other.pending == pending &&
        other.dropped == dropped &&
        other.assigned == assigned &&
        other.completed == completed;
  }

  @override
  int get hashCode {
    return pending.hashCode ^
        dropped.hashCode ^
        assigned.hashCode ^
        completed.hashCode;
  }
}
