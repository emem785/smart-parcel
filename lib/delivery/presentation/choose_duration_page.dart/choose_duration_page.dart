import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';
import 'package:smart_parcel/common/utils/constants.dart';
import 'package:smart_parcel/common/utils/validator_util.dart';
import 'package:smart_parcel/delivery/domain/usecases/delivery_usecases.dart';
import 'package:smart_parcel/inject_conf.dart';

const termsAndConditions =
    "By clicking on this box, you have agreed to the Terms\nand Conditions that guides the booking of a box\non Smart Parcel App";
const demurrage =
    "Note: You will need to pay demurrage after 72hours if\npickup does not occur and your item will be archived after 1 week.";

class ChooseDurationPage extends StatelessWidget {
  const ChooseDurationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => getIt<DeliveryUseCases>(),
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
    final chooseDuration =
        context.read<DeliveryUseCases>().chooseDurationUseCase;

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
                    chooseDuration(context: context, controller: controller);
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
          onPressed: () {
            if (formKey.value.currentState!.validate()) {
              print("e");
            }
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
      Text(
        agreement,
        style: const TextStyle(fontSize: 11),
      ),
    ],
  );
}
