import 'package:flutter/material.dart';
import 'package:smart_parcel/common/utils/transitions/slide_transition_builder.dart';

class ShowFullScreenDialogue {
  Future<void> call({
    required Widget child,
    required BuildContext context,
  }) async {
    showGeneralDialog(
      context: context,
      transitionDuration: const Duration(milliseconds: 400),
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        return SlideTransitionBuilder(child: child, animation: animation);
      },
      pageBuilder: (context, animation, secondaryAnimation) {
        return child;
      },
    );
  }
}
