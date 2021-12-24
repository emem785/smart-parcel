import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl/intl.dart';
import 'package:smart_parcel/common/theme.dart';
import 'package:smart_parcel/common/utils/constants.dart';
import 'package:smart_parcel/common/utils/extensions/string_extension.dart';
import 'package:smart_parcel/parcels/domain/models/cutomer_to_courier.dart';

class CourierParcelDetailsPage extends HookWidget {
  final CustomerToCourier customerToCourier;
  final DateFormat dateFormat = DateFormat(DateFormat.YEAR_ABBR_MONTH_DAY);
  CourierParcelDetailsPage({required this.customerToCourier, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            customerToCourier.status.capitalize(),
            style: Theme.of(context).textTheme.headline6?.copyWith(
                color: LayoutConstants.getStatusColor(
                    customerToCourier.statusStrict)),
          ),
          LayoutConstants.sizeBox(context, 8),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              border: Border.all(
                  color: LayoutConstants.getStatusColor(
                      customerToCourier.statusStrict)),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Theme(
              data: GlobalTheme.getGlobalTheme().copyWith(
                textTheme: GlobalTheme.getTextTheme().copyWith(
                  subtitle1: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ),
              child: Column(
                children: [
                  ListTile(
                    title: Text(customerToCourier.name.capitalize()),
                    subtitle: const Text("Name"),
                  ),
                  ListTile(
                    title: Text(customerToCourier.email),
                    subtitle: const Text("Email"),
                  ),
                  ListTile(
                    title: Text(customerToCourier.phone),
                    subtitle: const Text("Phone"),
                  ),
                  ListTile(
                    title: Text(getDate(customerToCourier.createdAt)),
                    subtitle: const Text("Date Of Deposit"),
                  ),
                  ListTile(
                    title: Text(customerToCourier.locationAddress),
                    subtitle: const Text("Location Of Locker"),
                  ),
                  ListTile(
                    title: Text(customerToCourier.pickUp),
                    subtitle: const Text("Pick Up Code"),
                  ),
                  ListTile(
                    title: Text(customerToCourier.dropOff),
                    subtitle: const Text("Drop Off Code"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  String getDate(String date) {
    return dateFormat.format(DateTime.parse(date));
  }
}
