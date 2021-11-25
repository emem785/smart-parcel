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
import 'package:smart_parcel/delivery/domain/models/center_district.dart';
import 'package:smart_parcel/inject_conf.dart';

class SelectLocationDistrictPage extends StatelessWidget {
  const SelectLocationDistrictPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => getIt<DeliveryBloc>(),
      child: const SelectLocationDistrictBody(),
    );
  }
}

class SelectLocationDistrictBody extends HookWidget {
  const SelectLocationDistrictBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deliveryBloc = context.read<DeliveryBloc>();
    final visibility = useState(0.0);

    useEffect(() {
      deliveryBloc.add(const DeliveryEvent.getParcelCenters());
    }, []);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BlocBuilder<DeliveryBloc, DeliveryState>(
          builder: (context, state) {
            return state.maybeMap(
              orElse: () => const SizedBox(height: 5),
              loading: (_) => const LinearProgressIndicator(
                backgroundColor: Color(0xFFFAFAFA),
              ),
            );
          },
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Select preferred location to book a box."),
                LayoutConstants.sizeBox(context, 24),
                Expanded(
                  child: BlocConsumer<DeliveryBloc, DeliveryState>(
                    builder: (context, state) {
                      return state.maybeMap(
                        orElse: () => const SizedBox(),
                        centersRetreived: (v) =>
                            buildDistrictList(context, v.districts, visibility),
                      );
                    },
                    listener: (context, state) {
                      state.maybeMap(
                        orElse: () => 1,
                        error: (v) => deliveryBloc.deliveryUseCases
                            .showErrorUseCase(
                                context: context, message: v.failure.message),
                        centersRetreived: (v) async {
                          await Future.delayed(
                              const Duration(milliseconds: 50));
                          visibility.value = 1.0;
                        },
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget buildDistrictList(
    BuildContext context,
    List<CenterDistrict> centers,
    ValueNotifier<double> visibility,
  ) {
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 300),
      opacity: visibility.value,
      child: ListView.builder(
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
                  centerDistrict: center,
                ),
              );
            },
            trailing: const Icon(Icons.chevron_right),
          );
        },
      ),
    );
  }
}

Widget buildDistrictShimmer(BuildContext context) {
  return Shimmer.fromColors(
    baseColor: const Color(0xD29e9e9e),
    highlightColor: const Color(0xFA9e9e9e),
    child: ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        return ListTile(
          leading: const Icon(
            Icons.location_on,
            color: Color(0xD29e9e9e),
          ),
          contentPadding: const EdgeInsets.all(0),
          title: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Container(
              height: Constants.height(context) * 0.03,
              color: const Color(0xD29e9e9e),
            ),
          ),
          trailing: const Icon(Icons.chevron_right),
        );
      },
    ),
  );
}
