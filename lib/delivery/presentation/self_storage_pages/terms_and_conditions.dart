import 'package:flutter/material.dart';

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
      Flexible(
        child: Text(
          agreement,
          maxLines: 3,
          style: const TextStyle(fontSize: 11),
        ),
      ),
    ],
  );
}
