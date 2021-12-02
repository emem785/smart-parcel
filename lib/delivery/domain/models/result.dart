import 'dart:convert';

class LocationResult {
  final String businessStatus;
  final String formattedAddress;

  const LocationResult({
    required this.businessStatus,
    required this.formattedAddress,
  });

  LocationResult copyWith({
    String? businessStatus,
    String? formattedAddress,
  }) {
    return LocationResult(
      businessStatus: businessStatus ?? this.businessStatus,
      formattedAddress: formattedAddress ?? this.formattedAddress,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'businessStatus': businessStatus,
      'formattedAddress': formattedAddress,
    };
  }

  factory LocationResult.fromMap(Map<String, dynamic> map) {
    return LocationResult(
      businessStatus: map['business_status'],
      formattedAddress: map['formatted_address'],
    );
  }

  String toJson() => json.encode(toMap());

  factory LocationResult.fromJson(String source) =>
      LocationResult.fromMap(json.decode(source));

  @override
  String toString() =>
      'LocationResult(businessStatus: $businessStatus, formattedAddress: $formattedAddress)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is LocationResult &&
        other.businessStatus == businessStatus &&
        other.formattedAddress == formattedAddress;
  }

  @override
  int get hashCode => businessStatus.hashCode ^ formattedAddress.hashCode;
}
