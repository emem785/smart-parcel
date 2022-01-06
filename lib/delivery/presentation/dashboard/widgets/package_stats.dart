import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:smart_parcel/delivery/presentation/dashboard/widgets/dashboard_skeletons.dart';
import 'package:smart_parcel/delivery/presentation/dashboard/widgets/status_tiles.dart';
import 'package:smart_parcel/parcels/application/parcels_bloc/parcel_bloc.dart';

class PackageStats extends HookWidget {
  const PackageStats({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final parcelBloc = context.read<ParcelBloc>();

    useEffect(() {
      parcelBloc.add(const ParcelEvent.getHistory());
    });

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: BlocBuilder<ParcelBloc, ParcelState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => const StatusSkeleton(),
            historyRetreived: (parcelResponse) => Row(
              children: [
                buildStatusTile(
                  context: context,
                  count: parcelResponse.data.parcelStats.pending.toString(),
                  title: "Pending Pickup",
                ),
                const Spacer(),
                buildStatusTile(
                  context: context,
                  count: parcelResponse.data.parcelStats.dropped.toString(),
                  title: "Item In Locker",
                ),
                const Spacer(),
                buildStatusTile(
                  context: context,
                  count: parcelResponse.data.parcelStats.completed.toString(),
                  title: "Delivered Parcel",
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
