import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:smart_parcel/common/presentation/routing/router.gr.dart';
import 'package:smart_parcel/common/presentation/widgets/common_widgets.dart';
import 'package:smart_parcel/common/utils/constants.dart';
import 'package:smart_parcel/common/utils/validator_util.dart';
import 'package:smart_parcel/delivery/application/delivery_bloc/delivery_bloc.dart';
import 'package:smart_parcel/delivery/application/providers/delivery_view_model.dart';
import 'package:smart_parcel/delivery/domain/models/customer_form.dart';
import 'package:smart_parcel/delivery/presentation/customer_to_courier_pages/widgets/address_search_delegate.dart';
import 'package:smart_parcel/delivery/presentation/self_storage_pages/terms_and_conditions.dart';

const cities = ["lagos"];

const demurrage =
    "Note: Your item will be archived if left in the locker for over 12 weeks.";

class CustomerToCourierBody extends HookWidget {
  const CustomerToCourierBody({Key? key}) : super(key: key);
  static const nameKey = Key("courier_name_text_Field");
  static const emailKey = Key("courier_email_text_Field");
  static const phoneKey = Key("courier_phone_text_Field");
  static const addressKey = Key("courier_address_text_Field");

  @override
  Widget build(BuildContext context) {
    final nameController = useTextEditingController();
    final emailController = useTextEditingController();
    final phoneController = useTextEditingController();
    final addressController = useTextEditingController();
    final descController = useTextEditingController();
    final city = useState("");
    final formKey = useState(GlobalKey<FormState>());
    final hasAgreed = useState(false);
    final deliveryBloc = context.read<DeliveryBloc>();

    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Enter details of recipient"),
                LayoutConstants.sizeBox(context, 24),
                buildCustomerForm(
                  context: context,
                  emailController: emailController,
                  nameController: nameController,
                  phoneController: phoneController,
                  addressController: addressController,
                  city: city,
                  formKey: formKey.value,
                ),
                const Text(
                  demurrage,
                  style: TextStyle(color: Colors.red, fontSize: 12),
                ),
                TextFormField(
                  controller: descController,
                  validator: ValidatorUtil.normalValidator,
                  decoration:
                      const InputDecoration(labelText: "Item Description"),
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
          BlocBuilder<DeliveryBloc, DeliveryState>(
            builder: (context, state) {
              return state.maybeMap(
                orElse: () => LayoutConstants.padButton(ElevatedButton(
                  onPressed: () {
                    if (formKey.value.currentState!.validate()) {
                      if (hasAgreed.value) {
                        final form = CustomerForm(
                          description: descController.text,
                          city: city.value,
                          email: emailController.text,
                          name: nameController.text,
                          phone: phoneController.text,
                          address: addressController.text,
                        );
                        context.read<DeliveryViewModel>().setCustomerForm(form);
                        context.read<DeliveryViewModel>().setRouteInfo(
                            const CustomerToCourierPaymentRoute());
                        context.router
                            .push(const SelectLocationDistrictRoute());
                        return;
                      }
                      deliveryBloc.deliveryUseCases.showErrorUseCase(
                          context: context,
                          message: "Agree to terms & Conditions");
                    }
                  },
                  child: const Text("Done"),
                )),
                loading: (v) => CommonWidgets.loading(),
              );
            },
          ),
        ],
      ),
    );
  }
}

Widget buildCustomerForm({
  required BuildContext context,
  required TextEditingController nameController,
  required TextEditingController emailController,
  required TextEditingController phoneController,
  required TextEditingController addressController,
  required ValueNotifier<String> city,
  required GlobalKey<FormState> formKey,
}) {
  return Form(
    key: formKey,
    child: Column(
      children: [
        TextFormField(
          controller: nameController,
          validator: ValidatorUtil.normalValidator,
          decoration: const InputDecoration(labelText: "Name of Recipient"),
          key: CustomerToCourierBody.nameKey,
        ),
        TextFormField(
          controller: emailController,
          validator: ValidatorUtil.emailValidator,
          decoration: const InputDecoration(labelText: "Email of Recipient"),
          key: CustomerToCourierBody.emailKey,
        ),
        TextFormField(
          controller: phoneController,
          validator: ValidatorUtil.phoneValidator,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            labelText: "Phone number of Recipient",
            prefixText: "+234 ",
          ),
          key: CustomerToCourierBody.phoneKey,
        ),
        TextFormField(
          controller: addressController,
          readOnly: true,
          onTap: () => getAddressResult(context, addressController),
          validator: ValidatorUtil.normalValidator,
          decoration: const InputDecoration(labelText: "Address of Recipient"),
          key: CustomerToCourierBody.addressKey,
        ),
        DropdownButtonFormField<String>(
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 16),
            ),
            validator: (v) {
              if (v == null) {
                return "Please select a city";
              }
            },
            onChanged: (v) => city.value = v!,
            hint: const Text("Select a city"),
            items: cities.map((e) {
              return DropdownMenuItem<String>(
                value: e,
                child: Text(e),
              );
            }).toList()),
      ],
    ),
  );
}

Future<void> getAddressResult(
  BuildContext context,
  TextEditingController addressController,
) async {
  final address = await showSearch(
    context: context,
    delegate: AddressSearchDelegate(context.read<DeliveryBloc>()),
  );
  addressController.text = address;
}
