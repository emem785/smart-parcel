import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl/intl.dart';
import 'package:smart_parcel/common/theme.dart';
import 'package:smart_parcel/common/utils/constants.dart';
import 'package:smart_parcel/common/utils/extensions/string_extension.dart';
import 'package:smart_parcel/parcels/domain/models/self_storage.dart';

class SelfParcelDetailsPage extends HookWidget {
  final SelfStorage selfStorage;
  final DateFormat dateFormat = DateFormat(DateFormat.YEAR_ABBR_MONTH_DAY);
  SelfParcelDetailsPage({required this.selfStorage, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(selfStorage.status.capitalize(),
              style: Theme.of(context).textTheme.headline6!.copyWith(
                    color: LayoutConstants.getStatusColor(
                        selfStorage.statusStrict),
                  )),
          LayoutConstants.sizeBox(context, 8),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              border: Border.all(
                color: LayoutConstants.getStatusColor(selfStorage.statusStrict),
              ),
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
                    title: Text(getDate(selfStorage.createdAt)),
                    subtitle: const Text("Date of Deposit"),
                  ),
                  ListTile(
                    title: Text(selfStorage.duration),
                    subtitle: const Text("Duration of Deposit"),
                  ),
                  ListTile(
                    title: Text(selfStorage.address),
                    subtitle: const Text("Location Of Locker"),
                  ),
                  ListTile(
                    title: Text(selfStorage.pickUp),
                    subtitle: const Text("Pick Up Code"),
                  ),
                  ListTile(
                    title: Text(selfStorage.dropOff),
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
