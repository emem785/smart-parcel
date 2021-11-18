import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:smart_parcel/common/presentation/routing/router.gr.dart';
import 'package:smart_parcel/common/theme.dart';
import 'package:smart_parcel/common/utils/constants.dart';
import 'package:smart_parcel/delivery/domain/models/center.dart';
import 'package:smart_parcel/delivery/domain/models/center_district.dart';

class SelectLocationPage extends StatelessWidget {
  final Function(ParcelCenter) onSelected;
  final CenterDistrict centerDistrict;

  const SelectLocationPage({
    Key? key,
    required this.onSelected,
    required this.centerDistrict,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LayoutConstants.sizeBox(context, 16),
          const Text('Select preferred Smart Parcel Box location.'),
          LayoutConstants.sizeBox(context, 54),
          Hero(
            tag: "title",
            child: Text(
              centerDistrict.name,
              style: GlobalTheme.textTheme(context).headline5,
            ),
          ),
          LayoutConstants.sizeBox(context, 18),
          Expanded(
            child: ListView.builder(
              itemCount: centerDistrict.centers.length,
              itemBuilder: (context, index) {
                final center = centerDistrict.centers[index];
                return ListTile(
                  onTap: () {
                    onSelected(center);
                    context.router
                        .popUntilRouteWithName(ChooseDurationRoute.name);
                  },
                  leading: const Icon(
                    Icons.location_searching,
                    color: GlobalTheme.primaryColor,
                  ),
                  contentPadding: const EdgeInsets.all(0),
                  title: Text(
                    center.address,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
