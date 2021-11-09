import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:smart_parcel/common/theme.dart';
import 'package:smart_parcel/common/utils/constants.dart';
import 'package:smart_parcel/common/utils/validator_util.dart';

class ConfirmEmailPage extends HookWidget {
  const ConfirmEmailPage({Key? key}) : super(key: key);

  static const enterButtonKey = Key("enter_button");
  static const otpKey = Key("otp_text_Field");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: LayoutConstants.appBar(
        title: "Verify your Account",
        context: context,
      ),
      body: buildConfirmEmailPage(context: context),
    );
  }
}

Widget buildConfirmEmailPage({required BuildContext context}) {
  final otpController = useTextEditingController();
  final formKey = useState(GlobalKey<FormState>());

  return SingleChildScrollView(
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LayoutConstants.sizeBox(context, 24),
              const Text(
                "Enter the 6-digit OTP we sent to josephjones@gmail.com",
                style: TextStyle(
                  fontSize: 11,
                ),
              ),
              LayoutConstants.sizeBox(context, 24),
              buildConfirmEmailForm(
                context: context,
                controller: otpController,
                formKey: formKey.value,
              ),
              LayoutConstants.sizeBox(context, 72),
              LayoutConstants.padButton(ElevatedButton(
                key: ConfirmEmailPage.enterButtonKey,
                onPressed: () {
                  if (formKey.value.currentState!.validate()) {
                    print("d");
                  }
                },
                child: const Text("Complete"),
              )),
              Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  child: const Text(
                    "Resend Code",
                    style: TextStyle(color: GlobalTheme.primary400),
                  ),
                  onTap: () {},
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget buildConfirmEmailForm({
  required BuildContext context,
  required TextEditingController controller,
  required GlobalKey<FormState> formKey,
}) {
  return Form(
    key: formKey,
    child: TextFormField(
      keyboardType: TextInputType.number,
      maxLength: 6,
      validator: ValidatorUtil.otpValidator,
      decoration: const InputDecoration(labelText: "OTP"),
      key: ConfirmEmailPage.otpKey,
    ),
  );
}
