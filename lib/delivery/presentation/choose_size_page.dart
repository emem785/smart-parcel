import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:smart_parcel/delivery/application/delivery_bloc/delivery_bloc.dart';
import 'package:smart_parcel/delivery/domain/models/center.dart';
import 'package:smart_parcel/delivery/domain/models/sizes/box_size.dart';
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BlocBuilder<DeliveryBloc, DeliveryState>(
          builder: (context, state) {
            final loading = state.maybeMap(
              orElse: () => false,
              loading: (v) => true,
            );
            return Visibility(
              visible: loading,
              child: const LinearProgressIndicator(
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
          child: _SizesList(
            center: parcelCenter,
            visibility: visibility,
          ),
        ),
      ],
    );
  }
}

class _SizesList extends StatelessWidget {
  final ParcelCenter center;
  final ValueNotifier<double> visibility;
  const _SizesList({
    Key? key,
    required this.visibility,
    required this.center,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 300),
      opacity: 1.0,
      child: ListView(
        children: [
          SizeItem(
            boxSize: SmallSize(
                id: 0,
                name: "Small",
                price: 200,
                quantity: center.availableSmallSpace),
          ),
          SizeItem(
              boxSize: MediumSize(
                  id: 1,
                  name: "Medium",
                  price: 300,
                  quantity: center.availableMediumSpace)),
          SizeItem(
              boxSize: LargeSize(
            id: 2,
            name: "Large",
            price: 400,
            quantity: 3,
          )),
          SizeItem(
              boxSize: XLargeSize(
            id: 2,
            name: "Xlarge",
            price: 400,
            quantity: 3,
          )),
        ],
      ),
    );
  }
}
