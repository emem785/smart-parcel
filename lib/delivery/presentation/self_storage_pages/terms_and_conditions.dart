import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_parcel/common/presentation/widgets/common_widgets.dart';
import 'package:smart_parcel/common/utils/constants.dart';
import 'package:smart_parcel/delivery/application/delivery_bloc/delivery_bloc.dart';

class TermsAndConditions extends StatelessWidget {
  final ValueNotifier<bool> hasAgreed;
  const TermsAndConditions({Key? key, required this.hasAgreed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Checkbox(
          value: hasAgreed.value,
          onChanged: (value) {
            hasAgreed.value = value!;
          },
        ),
        Flexible(
          child: InkWell(
            onTap: () => context
                .read<DeliveryBloc>()
                .add(OpenUrl(Constants.termsAndConditionsUrl)),
            child: CommonWidgets.termsAnConditions(),
          ),
        ),
      ],
    );
  }
}
