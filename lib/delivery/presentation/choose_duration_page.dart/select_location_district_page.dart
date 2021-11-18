import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';
import 'package:smart_parcel/common/presentation/routing/router.gr.dart';
import 'package:smart_parcel/common/theme.dart';
import 'package:smart_parcel/common/utils/constants.dart';
import 'package:smart_parcel/delivery/application/delivery_bloc/delivery_bloc.dart';
import 'package:smart_parcel/delivery/domain/models/center.dart';
import 'package:smart_parcel/delivery/domain/models/center_district.dart';
import 'package:smart_parcel/inject_conf.dart';

class SelectLocationDistrictPage extends StatelessWidget {
  final Function(ParcelCenter) onSelected;
  const SelectLocationDistrictPage({
    Key? key,
    required this.onSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => getIt<DeliveryBloc>(),
      child: SelectLocationDistrictBody(onSelected: onSelected),
    );
  }
}

class SelectLocationDistrictBody extends HookWidget {
  final Function(ParcelCenter) onSelected;
  const SelectLocationDistrictBody({
    Key? key,
    required this.onSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      context.read<DeliveryBloc>().add(const DeliveryEvent.getParcelCenters());
    }, []);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Select preferred location to book a box."),
          LayoutConstants.sizeBox(context, 24),
          Expanded(
            child: BlocBuilder<DeliveryBloc, DeliveryState>(
              builder: (context, state) {
                return state.maybeMap(
                  orElse: () => const SizedBox(),
                  centersRetreived: (v) =>
                      buildDistrictList(context, v.districts, onSelected),
                  // centersRetreived: (v) => buildDistrictShimmer(context),
                  loading: (v) => buildDistrictShimmer(context),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  Widget buildDistrictList(
    BuildContext context,
    List<CenterDistrict> centers,
    Function(ParcelCenter) onSelected,
  ) {
    return ListView.builder(
      itemCount: centers.length,
      itemBuilder: (context, index) {
        final center = centers[index];
        return ListTile(
          contentPadding: const EdgeInsets.all(0),
          title: Hero(
            tag: "title",
            child: Text(center.name),
          ),
          leading: const Icon(
            Icons.location_on,
            color: GlobalTheme.primaryColor,
          ),
          onTap: () {
            context.router.push(
              SelectLocationRoute(
                onSelected: (chosenCenter) {
                  onSelected(chosenCenter);
                },
                centerDistrict: center,
              ),
            );
          },
          trailing: const Icon(Icons.chevron_right),
        );
      },
    );
  }
}

Widget buildDistrictShimmer(BuildContext context) {
  return Shimmer.fromColors(
    baseColor: Colors.grey[400]!,
    highlightColor: Colors.grey[200]!,
    child: ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        return ListTile(
          leading: const Icon(
            Icons.location_on,
            color: Colors.white,
          ),
          contentPadding: const EdgeInsets.all(0),
          title: Container(
            height: Constants.height(context) * 0.03,
            color: Colors.white,
          ),
          // title: Text("Surulere"),
          trailing: const Icon(Icons.chevron_right),
        );
      },
    ),
  );
}
