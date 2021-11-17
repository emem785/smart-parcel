import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_parcel/common/presentation/widgets/common_widgets.dart';

class ShowErrorUseCase {
  void call({
    required String message,
    required BuildContext context,
    Function()? onTap,
    String? buttonText,
  }) {
    CommonWidgets.showFlushbar(
            message: message,
            duration: const Duration(milliseconds: 950),
            onTap: onTap,
            buttonText: buttonText)
        .show(context);
  }
}
