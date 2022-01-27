import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class ShowOptionUseCase {
  static const confirm = Key('alert_confirm_button');
  Future<bool?> call({
    required String title,
    required String content,
    required String buttonText,
    required String alternativeButtonText,
    required BuildContext context,
  }) async {
    return showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(content),
        actions: [
          TextButton(
            onPressed: () => context.router.pop(false),
            child: Text(
              alternativeButtonText,
              style: const TextStyle(color: Colors.black),
            ),
          ),
          TextButton(
            onPressed: () => context.router.pop(true),
            child: Text(buttonText),
          ),
        ],
      ),
    );
  }
}
