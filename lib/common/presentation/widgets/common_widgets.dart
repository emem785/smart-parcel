import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:smart_parcel/common/theme.dart';
import 'package:smart_parcel/common/utils/constants.dart';
import 'package:smart_parcel/common/utils/validator_util.dart';

class CommonWidgets {
  static TextFormField buildPasswordTextField({
    required TextEditingController controller,
    required String labelText,
    required Key key,
  }) {
    final obscureText = useState(true);

    return TextFormField(
      key: key,
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

  static Flushbar showFlushbar({
    required String message,
    required Duration duration,
    Function()? onTap,
    String? buttonText,
  }) {
    return Flushbar(
      key: const Key('flushbar'),
      message: message,
      duration: duration,
      borderRadius: BorderRadius.circular(8),
      backgroundColor: GlobalTheme.lightGrey,
      margin: const EdgeInsets.all(8),
      mainButton: onTap != null
          ? TextButton(
              onPressed: () => onTap(),
              child: Text(
                buttonText ?? "",
                style: TextStyle(
                  color: Colors.greenAccent[200],
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          : null,
    );
  }

  static Padding loading() {
    return LayoutConstants.padButton(ElevatedButton(
      onPressed: () {},
      child: const SpinKitPianoWave(
        color: Colors.white,
        size: 20,
      ),
    ));
  }

  static Text termsAnConditions() {
    return const Text.rich(
      TextSpan(children: [
        TextSpan(text: "By clicking on this box, you have agreed to the "),
        TextSpan(
          text: "Terms and Conditions",
          style: TextStyle(
            color: GlobalTheme.primaryColor,
            decoration: TextDecoration.underline,
          ),
        ),
        TextSpan(text: " that guides the booking of a box on Smart Parcel App"),
      ]),
      style: TextStyle(fontSize: 11),
    );
  }
}
