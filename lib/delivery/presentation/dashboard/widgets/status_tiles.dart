import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shimmer/shimmer.dart';
import 'package:smart_parcel/common/domain/models/user.dart';
import 'package:smart_parcel/common/theme.dart';
import 'package:smart_parcel/common/utils/constants.dart';
import 'package:smart_parcel/common/utils/extensions/string_extension.dart';

class StatusTiles extends StatefulWidget {
  final Stream<User> stream;

  const StatusTiles({Key? key, required this.stream}) : super(key: key);

  @override
  State<StatusTiles> createState() => _StatusTilesState();
}

class _StatusTilesState extends State<StatusTiles> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
            child: StreamBuilder<User>(
              stream: widget.stream,
              initialData: User.empty(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  final user = snapshot.data!;
                  return ListTile(
                    leading: user.profilePicUrl == ""
                        ? const CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/Avatar.png"),
                          )
                        : CircleAvatar(
                            backgroundImage:
                                FileImage(File(user.profilePicFilePath!)),
                            backgroundColor: Colors.grey,
                          ),
                    title: user.firstName.isNotEmpty
                        ? Text(
                            "${user.firstName.capitalize()} ${user.lastName.capitalize()}",
                            style: const TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          )
                        : const Text(
                            "",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                    subtitle: const Text(
                      "Verified SmartParceler",
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      ),
                    ),
                  );
                }
                return const SizedBox();
              },
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
}

Widget buildStatusTile({
  required BuildContext context,
  required String count,
  required String title,
}) {
  return SizedBox(
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
                ?.copyWith(fontSize: 32, color: Colors.white),
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

Widget statusTilesWithShimmers(BuildContext context) {
  return Shimmer.fromColors(
    baseColor: Colors.grey[300]!,
    highlightColor: const Color(0xFFDEDEDE),
    child: Container(
      height: Constants.responsiveHeight(context, 190),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.grey[300]!,
      ),
    ),
  );
}
