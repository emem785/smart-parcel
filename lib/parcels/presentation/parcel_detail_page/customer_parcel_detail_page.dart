import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl/intl.dart';
import 'package:smart_parcel/parcel/domain/models/customer_to_customer.dart';

class CustomerParcelDetailsPage extends HookWidget {
  final CustomerToCustomer customerToCustomer;
  final DateFormat dateFormat = DateFormat(DateFormat.YEAR_ABBR_MONTH_DAY);
  CustomerParcelDetailsPage({required this.customerToCustomer, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(customerToCustomer.status),
        ListTile(
          title: Text(getDate(customerToCustomer.createdAt)),
          subtitle: const Text("Date of Deposit"),
        ),
        ListTile(
          title: Text(customerToCustomer.name),
          subtitle: const Text("Name"),
        ),
        ListTile(
          title: Text(customerToCustomer.email),
          subtitle: const Text("Email"),
        ),
        ListTile(
          title: Text(customerToCustomer.phone),
          subtitle: const Text("Phone"),
        ),
        ListTile(
          title: Text(getDate(customerToCustomer.createdAt)),
          subtitle: const Text("Date Of Deposit"),
        ),
      ],
    );
  }

  String getDate(String date) {
    return dateFormat.format(DateTime.parse(date));
  }
}
