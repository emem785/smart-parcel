import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:smart_parcel/common/presentation/widgets/common_widgets.dart';
import 'package:smart_parcel/common/utils/constants.dart';

class ChangePasswordPage extends HookWidget {
  static const oldPassword = Key("forgot_password_old_password");
  static const password = Key("forgot_password_password");
  static const confirmPassword = Key("forgot_password_confirmPassword");
  static const button = Key("forgot_password_btn");
  const ChangePasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final passwordController = useState(TextEditingController());
    final newPasswordController = useState(TextEditingController());
    final confirmPasswordController = useState(TextEditingController());
    final formKey = useState(GlobalKey<FormState>());
    return Column(
      children: [
        Form(
          key: formKey.value,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                CommonWidgets.buildPasswordTextField(
                  controller: passwordController.value,
                  labelText: "Old Password",
                  key: oldPassword,
                ),
                CommonWidgets.buildPasswordTextField(
                  controller: newPasswordController.value,
                  labelText: "New Password",
                  key: password,
                ),
                CommonWidgets.buildPasswordTextField(
                  controller: confirmPasswordController.value,
                  labelText: "Confirm Password",
                  key: confirmPassword,
                ),
              ],
            ),
          ),
        ),
        LayoutConstants.sizeBox(context, 54),
        LayoutConstants.padButton(ElevatedButton(
          onPressed: () {},
          child: const Text("Confirm"),
          key: button,
        )),
      ],
    );
  }
}
