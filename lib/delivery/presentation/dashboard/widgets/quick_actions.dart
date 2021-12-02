import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smart_parcel/common/presentation/routing/router.gr.dart';
import 'package:smart_parcel/common/theme.dart';
import 'package:smart_parcel/common/utils/constants.dart';

// typedef ListResponse<T> = Future<Either<Failure, List<T>>>;

Widget buildQuickActions({required BuildContext context}) {
  return Column(
    children: [
      buildQuickAction(
        context: context,
        icon: "self_package",
        title: "Self Storage",
        subtitle:
            "Keep an item at SmartParcel locker for\nyou to pickup at a later time.",
        onTap: () => context.router.push(const ChooseDurationRoute()),
      ),
      LayoutConstants.sizeBox(context, 16),
      buildQuickAction(
        context: context,
        icon: "send_package",
        title: "Send Parcel",
        subtitle: "Post an item using a courier service\nvia SmartParcel",
        onTap: () => context.router.push(const CustomerToCourierRoute()),
      ),
      LayoutConstants.sizeBox(context, 16),
      buildQuickAction(
        context: context,
        icon: "customer_package",
        title: "Customer to Customer",
        subtitle:
            "Drop off an item in SmartParcel locker\nfor someone else to pickup",
        onTap: () => context.router.push(const CustomerToCustomerRoute()),
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
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(1, 24, 95, 57),
            blurRadius: 8,
            spreadRadius: 7,
            offset: Offset(2, 4),
          ),
        ],
      ),
      height: Constants.responsiveHeight(context, 134),
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
                  fontWeight: FontWeight.bold,
                  color: GlobalTheme.primaryColor,
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
