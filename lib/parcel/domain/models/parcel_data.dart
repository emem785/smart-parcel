import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'customer_to_customer.dart';
import 'self_storage.dart';

class ParcelData {
  final List<SelfStorage> selfStorages;
  final List<CustomerToCustomer> customerToCustomer;
  const ParcelData({
    required this.selfStorages,
    required this.customerToCustomer,
  });

  ParcelData copyWith({
    List<SelfStorage>? selfStorages,
    List<CustomerToCustomer>? customerToCustomer,
  }) {
    return ParcelData(
      selfStorages: selfStorages ?? this.selfStorages,
      customerToCustomer: customerToCustomer ?? this.customerToCustomer,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'selfStorages': selfStorages.map((x) => x.toMap()).toList(),
      'customerToCustomer': customerToCustomer.map((x) => x.toMap()).toList(),
    };
  }

  factory ParcelData.fromMap(Map<String, dynamic> map) {
    return ParcelData(
      selfStorages: List<SelfStorage>.from(
          map['self_storages']?.map((x) => SelfStorage.fromMap(x))),
      customerToCustomer: List<CustomerToCustomer>.from(
          map['customer_to_customer']
              ?.map((x) => CustomerToCustomer.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory ParcelData.fromJson(String source) =>
      ParcelData.fromMap(json.decode(source));

  @override
  String toString() =>
      'ParcelData(selfStorages: $selfStorages, customerToCustomer: $customerToCustomer)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ParcelData &&
        listEquals(other.selfStorages, selfStorages) &&
        listEquals(other.customerToCustomer, customerToCustomer);
  }

  @override
  int get hashCode => selfStorages.hashCode ^ customerToCustomer.hashCode;
}
