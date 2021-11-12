import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:smart_parcel/common/theme.dart';
import 'package:smart_parcel/common/utils/constants.dart';
import 'package:smart_parcel/delivery/presentation/dashboard/widgets/quick_actions.dart';
import 'package:smart_parcel/delivery/presentation/dashboard/widgets/status_tiles.dart';

class DashboardPage extends HookWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final headline6 =
        GlobalTheme.textTheme(context).headline6?.copyWith(fontSize: 16);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LayoutConstants.sizeBox(context, 32),
          Text(
            "Hello, Joseph",
            style: headline6,
          ),
          LayoutConstants.sizeBox(context, 4),
          const Text("Schedule a delivery by selecting from the list below."),
          LayoutConstants.sizeBox(context, 24),
          buildStatusTiles(context: context),
          LayoutConstants.sizeBox(context, 44),
          const Text("Click the buttons below  for quick actions"),
          LayoutConstants.sizeBox(context, 16),
          buildQuickActions(context: context),
        ],
      ),
    );
  }
}
