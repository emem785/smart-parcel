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
  }) {
    return Flushbar(
      key: const Key('flushbar'),
      message: message,
      duration: duration,
      borderRadius: BorderRadius.circular(8),
      backgroundColor: GlobalTheme.lightGrey,
      margin: const EdgeInsets.all(8),
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
}
