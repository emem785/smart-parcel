import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';
import 'package:smart_parcel/common/presentation/routing/router.gr.dart';
import 'package:smart_parcel/common/utils/constants.dart';
import 'package:smart_parcel/common/utils/validator_util.dart';
import 'package:smart_parcel/delivery/application/delivery_bloc/delivery_bloc.dart';
import 'package:smart_parcel/inject_conf.dart';

const termsAndConditions =
    "By clicking on this box, you have agreed to the Terms and Conditions that guides the booking of a box on Smart Parcel App";
const demurrage =
    "Note: You will need to pay demurrage after 72hours if pickup does not occur and your item will be archived after 1 week.";

class ChooseDurationPage extends StatelessWidget {
  const ChooseDurationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => getIt<DeliveryBloc>(),
      child: const ChooseDuration(),
    );
  }
}

class ChooseDuration extends HookWidget {
  const ChooseDuration({Key? key}) : super(key: key);

  static const doneButtonKey = Key("done_button");

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();
    final hasAgreed = useState(false);
    final formKey = useState(GlobalKey<FormState>());
    final deliveryBloc = context.read<DeliveryBloc>();

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Enter booking duration"),
              LayoutConstants.sizeBox(context, 24),
              Form(
                key: formKey.value,
                child: TextFormField(
                  controller: controller,
                  validator: ValidatorUtil.normalValidator,
                  readOnly: true,
                  decoration:
                      const InputDecoration(labelText: "Duration of Item"),
                  onTap: () {
                    deliveryBloc.deliveryUseCases.chooseDurationUseCase(
                      context: context,
                      controller: controller,
                    );
                  },
                ),
              ),
              const Text(
                demurrage,
                style: TextStyle(color: Colors.red, fontSize: 12),
              ),
              LayoutConstants.sizeBox(context, 62),
            ],
          ),
        ),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: buildTermsAndConditions(
              context: context,
              hasAgreed: hasAgreed,
              agreement: termsAndConditions,
            )),
        LayoutConstants.sizeBox(context, 21),
        LayoutConstants.padButton(ElevatedButton(
          onPressed: () async {
            if (formKey.value.currentState!.validate() && hasAgreed.value) {
              deliveryBloc.add(DeliveryEvent.selectLocation(
                context,
                (center) =>
                    context.router.push(const SelfStoragePaymentRoute()),
              ));
              return;
            }
            deliveryBloc.deliveryUseCases.showErrorUseCase(
                context: context, message: "Agree to terms & Conditions");
          },
          child: const Text("Done"),
          key: doneButtonKey,
        )),
      ],
    );
  }
}

buildTermsAndConditions({
  required BuildContext context,
  required String agreement,
  required ValueNotifier<bool> hasAgreed,
}) {
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
        child: Text(
          agreement,
          maxLines: 3,
          style: const TextStyle(fontSize: 11),
        ),
      ),
    ],
  );
}
