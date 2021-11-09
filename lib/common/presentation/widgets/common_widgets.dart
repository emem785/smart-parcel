import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:smart_parcel/common/utils/validator_util.dart';

class CommonWidgets {
  static TextFormField buildPasswordTextField({
    required TextEditingController controller,
    required String labelText,
  }) {
    final obscureText = useState(true);

    return TextFormField(
      controller: controller,
      validator: ValidatorUtil.normalValidator,
      obscureText: obscureText.value,
      decoration: InputDecoration(
        labelText: labelText,
        suffixIcon: IconButton(
          icon: obscureText.value
              ? const Icon(Icons.visibility)
              : const Icon(Icons.visibility_off),
          onPressed: () {
            obscureText.value = !obscureText.value;
          },
        ),
      ),
    );
  }
}
