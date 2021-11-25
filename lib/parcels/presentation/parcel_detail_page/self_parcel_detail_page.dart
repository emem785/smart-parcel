import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl/intl.dart';
import 'package:smart_parcel/parcel/domain/models/self_storage.dart';

class SelfParcelDetailsPage extends HookWidget {
  final SelfStorage selfStorage;
  final DateFormat dateFormat = DateFormat(DateFormat.YEAR_ABBR_MONTH_DAY);
  SelfParcelDetailsPage({required this.selfStorage, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(selfStorage.status),
        ListTile(
          title: Text(getDate(selfStorage.createdAt)),
          subtitle: const Text("Date of Deposit"),
        ),
        ListTile(
          title: Text(selfStorage.duration),
          subtitle: const Text("Duration of Deposit"),
        ),
      ],
    );
  }

  String getDate(String date) {
    return dateFormat.format(DateTime.parse(date));
  }
}
