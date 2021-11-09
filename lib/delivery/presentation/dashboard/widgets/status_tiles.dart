import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smart_parcel/common/theme.dart';
import 'package:smart_parcel/common/utils/constants.dart';

Widget buildStatusTiles({required BuildContext context}) {
  return Row(
    children: [
      buildStatusTile(context: context, count: "0", title: "Pending Pickup"),
      const Spacer(),
      buildStatusTile(context: context, count: "0", title: "Item In Locker"),
      const Spacer(),
      buildStatusTile(context: context, count: "0", title: "Delivered Parcel"),
    ],
  );
}

Widget buildStatusTile({
  required BuildContext context,
  required String count,
  required String title,
}) {
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
    height: Constants.responsiveHeight(context, 118),
    width: Constants.responsiveWidth(context, 118),
    child: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
