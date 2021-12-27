import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:smart_parcel/common/utils/constants.dart';
import 'package:smart_parcel/parcels/domain/models/cutomer_to_courier.dart';

import 'customer_to_customer.dart';
import 'self_storage.dart';

class ParcelData {
  final List<SelfStorage> selfStorages;
  final List<CustomerToCustomer> customerToCustomer;
  final List<CustomerToCourier> customerToCourier;
  const ParcelData({
    required this.selfStorages,
    required this.customerToCustomer,
    required this.customerToCourier,
  });

  ParcelData copyWith({
    List<SelfStorage>? selfStorages,
    List<CustomerToCustomer>? customerToCustomer,
    List<CustomerToCourier>? customerToCourier,
  }) {
    return ParcelData(
      selfStorages: selfStorages ?? this.selfStorages,
      customerToCustomer: customerToCustomer ?? this.customerToCustomer,
      customerToCourier: customerToCourier ?? this.customerToCourier,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'selfStorages': selfStorages.map((x) => x.toMap()).toList(),
      'customerToCustomer': customerToCustomer.map((x) => x.toMap()).toList(),
      'customerToCourier': customerToCourier.map((x) => x.toMap()).toList(),
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
    );
  }

  String toJson() => json.encode(toMap());

  factory ParcelData.fromJson(String source) =>
      ParcelData.fromMap(json.decode(source));

  @override
  String toString() =>
      'ParcelData(selfStorages: $selfStorages, customerToCustomer: $customerToCustomer, customerToCourier: $customerToCourier)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ParcelData &&
        listEquals(other.selfStorages, selfStorages) &&
        listEquals(other.customerToCustomer, customerToCustomer) &&
        listEquals(other.customerToCourier, customerToCourier);
  }

  @override
  int get hashCode =>
      selfStorages.hashCode ^
      customerToCustomer.hashCode ^
      customerToCourier.hashCode;
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
      default:
        return Status.pending;
    }
  }
}
