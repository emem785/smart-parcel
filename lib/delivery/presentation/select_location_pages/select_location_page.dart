import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:smart_parcel/common/theme.dart';
import 'package:smart_parcel/common/utils/constants.dart';
import 'package:smart_parcel/delivery/application/delivery_bloc/delivery_bloc.dart';
import 'package:smart_parcel/delivery/application/providers/delivery_view_model.dart';
import 'package:smart_parcel/delivery/domain/models/center_district.dart';
import 'package:smart_parcel/inject_conf.dart';

class SelectLocationPage extends StatelessWidget {
  final CenterDistrict centerDistrict;
  const SelectLocationPage({
    Key? key,
    required this.centerDistrict,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<DeliveryBloc>(),
      child: SelectLocationBody(
        centerDistrict: centerDistrict,
      ),
    );
  }
}

class SelectLocationBody extends HookWidget {
  final CenterDistrict centerDistrict;

  const SelectLocationBody({
    Key? key,
    required this.centerDistrict,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deliveryBloc = context.read<DeliveryBloc>();

    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LayoutConstants.sizeBox(context, 16),
                const Text('Select preferred Smart Parcel Box location.'),
                LayoutConstants.sizeBox(context, 54),
                Text(
                  centerDistrict.name,
                  style: GlobalTheme.textTheme(context).headline5,
                ),
                LayoutConstants.sizeBox(context, 18),
                BlocListener<DeliveryBloc, DeliveryState>(
                  listener: (context, state) {
                    state.maybeMap(
                      orElse: () => 1,
                      bookingFinished: (v) => context.router.push(v.routeInfo),
                      error: (v) => deliveryBloc.deliveryUseCases
                          .showErrorUseCase(
                              context: context, message: v.failure.message),
                    );
                  },
                  child: Expanded(
                    child: ListView.builder(
                      itemCount: centerDistrict.centers.length,
                      itemBuilder: (context, index) {
                        final center = centerDistrict.centers[index];
                        return ListTile(
                          onTap: () {
                            final route =
                                context.read<DeliveryViewModel>().routeInfo;
                            context.router.push(route);
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
                  ),
                ),
              ],
            ),
          ),
        ),
        BlocBuilder<DeliveryBloc, DeliveryState>(
          builder: (context, state) {
            return state.maybeMap(
              orElse: () => const SizedBox(),
              loading: (_) => const LinearProgressIndicator(
                backgroundColor: Color(0xFFFAFAFA),
              ),
            );
          },
        )
      ],
    );
  }
}
