import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShowAlertUseCase {
  static const confirm = Key('alert_confirm_button');
  Future<void> call({
    required String title,
    required String content,
    required String buttonText,
    Function()? onConfirm,
    required BuildContext context,
  }) async {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(content),
        actions: [
          TextButton(
            onPressed: () => context.router.pop(),
            child: const Text('Cancel', style: TextStyle(color: Colors.black)),
          ),
          if (onConfirm != null)
            TextButton(
              key: confirm,
              onPressed: () => onConfirm(),
              child: Text(buttonText),
            ),
        ],
      ),
    );
  }
}
