import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:smart_parcel/common/utils/constants.dart';
import 'package:smart_parcel/parcels/domain/models/cutomer_to_courier.dart';
import 'package:smart_parcel/parcels/domain/models/parcel_stats.dart';

import 'customer_to_customer.dart';
import 'self_storage.dart';

class ParcelData {
  final List<SelfStorage> selfStorages;
  final List<CustomerToCustomer> customerToCustomer;
  final List<CustomerToCourier> customerToCourier;
  final ParcelStats parcelStats;
  const ParcelData({
    required this.selfStorages,
    required this.customerToCustomer,
    required this.customerToCourier,
    required this.parcelStats,
  });

  ParcelData copyWith({
    List<SelfStorage>? selfStorages,
    List<CustomerToCustomer>? customerToCustomer,
    List<CustomerToCourier>? customerToCourier,
    ParcelStats? parcelStats,
  }) {
    return ParcelData(
      selfStorages: selfStorages ?? this.selfStorages,
      customerToCustomer: customerToCustomer ?? this.customerToCustomer,
      customerToCourier: customerToCourier ?? this.customerToCourier,
      parcelStats: parcelStats ?? this.parcelStats,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'selfStorages': selfStorages.map((x) => x.toMap()).toList(),
      'customerToCustomer': customerToCustomer.map((x) => x.toMap()).toList(),
      'customerToCourier': customerToCourier.map((x) => x.toMap()).toList(),
      'parcelStats': parcelStats.toMap(),
    };
  }

  factory ParcelData.fromMap(Map<String, dynamic> map) {
    return ParcelData(
      selfStorages: List<SelfStorage>.from(
          map['self_storages']?.map((x) => SelfStorage.fromMap(x))),
      customerToCustomer: List<CustomerToCustomer>.from(
          map['customer_to_customer']
              ?.map((x) => CustomerToCustomer.fromMap(x))),
      customerToCourier: List<CustomerToCourier>.from(
          map['customer_to_courier']?.map((x) => CustomerToCourier.fromMap(x))),
      parcelStats: ParcelStats.fromMap(map['parcel_stats']),
    );
  }

  String toJson() => json.encode(toMap());

  factory ParcelData.fromJson(String source) =>
      ParcelData.fromMap(json.decode(source));

  @override
  String toString() =>
      'ParcelData(selfStorages: $selfStorages, customerToCustomer: $customerToCustomer, customerToCourier: $customerToCourier, parcelStats: $parcelStats)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ParcelData &&
        listEquals(other.selfStorages, selfStorages) &&
        listEquals(other.customerToCustomer, customerToCustomer) &&
        listEquals(other.customerToCourier, customerToCourier) &&
        other.parcelStats == parcelStats;
  }

  @override
  int get hashCode =>
      selfStorages.hashCode ^
      customerToCustomer.hashCode ^
      customerToCourier.hashCode ^
      parcelStats.hashCode;
}

abstract class DeliveryDetail {
  final String status;

  const DeliveryDetail(this.status);
}

mixin StatusMixin on DeliveryDetail {
  Status get statusStrict {
    switch (status) {
      case "assigned":
        return Status.assigned;
      case "dropped":
        return Status.dropped;
      case "completed":
        return Status.completed;
      default:
        return Status.pending;
    }
  }
}
