import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smart_parcel/common/domain/models/user.dart';
import 'package:smart_parcel/common/theme.dart';
import 'package:smart_parcel/common/utils/constants.dart';
import 'package:smart_parcel/common/utils/extensions/string_extension.dart';

Widget buildStatusTiles({required BuildContext context, required User user}) {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: const LinearGradient(
          colors: [
            Color(0xFF27930C),
            Color(0xFF2B8551),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )),
    child: Column(
      children: [
        Theme(
          data: GlobalTheme.getGlobalTheme().copyWith(
              textTheme: GlobalTheme.textTheme(context).apply(
            bodyColor: Colors.white,
            displayColor: Colors.white,
          )),
          child: ListTile(
            leading: const CircleAvatar(
              backgroundImage: AssetImage("assets/images/delivery.png"),
            ),
            title: Text(
              "${user.firstName.capitalize()} ${user.lastName.capitalize()}",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            subtitle: const Text(
              "Verified SmartParceler",
              style: TextStyle(fontSize: 11, fontWeight: FontWeight.w300),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            children: [
              buildStatusTile(
                  context: context, count: "0", title: "Pending Pickup"),
              const Spacer(),
              buildStatusTile(
                  context: context, count: "0", title: "Item In Locker"),
              const Spacer(),
              buildStatusTile(
                  context: context, count: "0", title: "Delivered Parcel"),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget buildStatusTile({
  required BuildContext context,
  required String count,
  required String title,
}) {
  return Container(
    height: Constants.responsiveHeight(context, 118),
    width: Constants.responsiveWidth(context, 118),
    child: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            count,
            style: GlobalTheme.textTheme(context)
                .headline6
                ?.copyWith(fontSize: 34, color: Colors.white),
          ),
          LayoutConstants.sizeBox(context, 8),
          Text(
            title,
            style: GlobalTheme.textTheme(context)
                .bodyText1
                ?.copyWith(color: Colors.white, fontSize: 11),
          ),
        ],
      ),
    ),
  );
}
