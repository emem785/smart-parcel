import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:smart_parcel/delivery/application/delivery_bloc/delivery_bloc.dart';
import 'package:smart_parcel/delivery/domain/models/center.dart';
import 'package:smart_parcel/delivery/domain/models/sizes/box_size.dart';
import 'package:smart_parcel/delivery/domain/models/sizes_response.dart';
import 'package:smart_parcel/inject_conf.dart';
import 'package:smart_parcel/payment/presentation/size_tile.dart';

class ChooseSizePage extends StatelessWidget {
  final ParcelCenter parcelCenter;

  const ChooseSizePage({Key? key, required this.parcelCenter})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<DeliveryBloc>(),
      child: ChooseSizeBody(parcelCenter: parcelCenter),
    );
  }
}

class ChooseSizeBody extends HookWidget {
  final ParcelCenter parcelCenter;
  const ChooseSizeBody({
    required this.parcelCenter,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final visibility = useState(0.0);
    final deliveryBloc = context.read<DeliveryBloc>();

    useEffect(() {
      deliveryBloc.add(const DeliveryEvent.getSizes());
    });

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
        const Padding(
          padding: EdgeInsets.all(16),
          child: Text("Select preferred SmartParcel Box size"),
        ),
        Expanded(
          child: BlocConsumer<DeliveryBloc, DeliveryState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () => const SizedBox(),
                sizesRetreived: (sizesResponse) => _SizesList(
                  visibility: visibility,
                  center: parcelCenter,
                  sizesResponse: sizesResponse,
                ),
              );
            },
            listener: (context, state) {
              state.maybeMap(
                orElse: () => 1,
                error: (value) =>
                    deliveryBloc.deliveryUseCases.showErrorUseCase(
                  context: context,
                  message: value.failure.message,
                ),
                sizesRetreived: (v) async {
                  await Future.delayed(const Duration(milliseconds: 50));
                  visibility.value = 1.0;
                },
              );
            },
          ),
        ),
      ],
    );
  }
}

class _SizesList extends StatelessWidget {
  final ParcelCenter center;
  final SizesResponse sizesResponse;
  final ValueNotifier<double> visibility;
  const _SizesList({
    Key? key,
    required this.visibility,
    required this.center,
    required this.sizesResponse,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInQuint,
      opacity: visibility.value,
      child: sizesResponse.data.isNotEmpty
          ? ListView(
              children: [
                SizeItem(
                  boxSize: SmallSize.fromSizeData(
                    sizesResponse.data[0],
                    center.availableSmallSpace,
                  ),
                ),
                SizeItem(
                    boxSize: MediumSize.fromSizeData(
                  sizesResponse.data[1],
                  center.availableMediumSpace,
                )),
                SizeItem(
                    boxSize: LargeSize.fromSizeData(
                  sizesResponse.data[2],
                  center.availableLargeSpace,
                )),
                // SizeItem(
                //     boxSize: LargeSize.fromSizeData(
                //   sizesResponse.data[2],
                //   center.availableLargeSpace,
                // )),
              ],
            )
          : const Center(
              child: Text(
                "There are currently no available sizes for this parcel center",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
            ),
    );
  }
}
