import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smart_parcel/common/utils/constants.dart';

Widget buildQuickActions({required BuildContext context}) {
  return Column(
    children: [
      buildQuickAction(
        context: context,
        icon: "self_storage",
        title: "Self Storage",
        subtitle:
            "Keep an item at SmartParcel locker for\nyou to pickup at a later time.",
        onTap: () => context.router.pushNamed("/home/chooseDuration"),
      ),
      LayoutConstants.sizeBox(context, 32),
      buildQuickAction(
        context: context,
        icon: "send_parcel",
        title: "Send Parcel",
        subtitle: "Post an item using a courier service\nvia SmartParcel",
        onTap: () {},
      ),
      LayoutConstants.sizeBox(context, 32),
      buildQuickAction(
        context: context,
        icon: "customer_to_customer",
        title: "Customer to Customer",
        subtitle:
            "Drop off an item in SmartParcel locker\nfor someone else to pickup",
        onTap: () {},
      ),
    ],
  );
}

buildQuickAction({
  required BuildContext context,
  required String title,
  required String subtitle,
  required String icon,
  required Function() onTap,
}) {
  return InkWell(
    onTap: () => onTap(),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xFFF6F9EA),
      ),
      height: Constants.responsiveHeight(context, 114),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          LayoutConstants.sizeBoxH(context, 16),
          SvgPicture.asset(
            "assets/images/$icon.svg",
            width: 40,
            height: 40,
          ),
          LayoutConstants.sizeBoxH(context, 8),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w200,
                  color: Colors.black,
                ),
              ),
              LayoutConstants.sizeBox(context, 4),
              Text(
                subtitle,
                style: const TextStyle(
                  fontSize: 12,
                  height: 1.5,
                  fontWeight: FontWeight.w200,
                ),
              )
            ],
          )
        ],
      ),
    ),
  );
}
