import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';
import 'package:smart_parcel/common/presentation/routing/router.gr.dart';
import 'package:smart_parcel/common/utils/constants.dart';
import 'package:smart_parcel/delivery/application/delivery_bloc/delivery_bloc.dart';
import 'package:smart_parcel/delivery/application/providers/delivery_view_model.dart';
import 'package:smart_parcel/delivery/presentation/self_storage_pages/terms_and_conditions.dart';
import 'package:smart_parcel/inject_conf.dart';

const hours = [6, 12, 24, 48, 72];

const demurrage =
    "Note: Your item will be charged with a demurrage after 36 hours and archived after 1 week";

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
    final hasAgreed = useState(false);
    final formKey = useState(GlobalKey<FormState>());
    final hour = useState(6);
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
                child: DropdownButtonFormField<int>(
                    validator: (v) {
                      if (v == null) {
                        return "Please select a duration";
                      }
                    },
                    onChanged: (v) => hour.value = v!,
                    hint: const Text("Select duration"),
                    items: hours.map((e) {
                      return DropdownMenuItem<int>(
                        value: e,
                        child: Text("Less than $e hours"),
                      );
                    }).toList()),
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
          child: TermsAndConditions(hasAgreed: hasAgreed),
        ),
        LayoutConstants.sizeBox(context, 21),
        LayoutConstants.padButton(ElevatedButton(
          onPressed: () async {
            if (formKey.value.currentState!.validate()) {
              if (hasAgreed.value) {
                context
                    .read<DeliveryViewModel>()
                    .setDuration(hour.value.toString());
                // context.router.push(const ChooseCardRoute());
                context.router.push(const ChooseSizeRoute());
                return;
              }
              deliveryBloc.deliveryUseCases.showErrorUseCase(
                  context: context, message: "Agree to terms & Conditions");
            }
          },
          child: const Text("Done"),
          key: doneButtonKey,
        )),
      ],
    );
  }
}
