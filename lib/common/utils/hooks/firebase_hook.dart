import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

FirebaseMessaging useFirebaseMessagingHook(BuildContext context) =>
    use(_FirebaseMessagingHook(context: context));

class _FirebaseMessagingHook extends Hook<FirebaseMessaging> {
  final BuildContext context;

  const _FirebaseMessagingHook({required this.context});
  @override
  _FirebaseMessagingHookState createState() => _FirebaseMessagingHookState();
}

class _FirebaseMessagingHookState
    extends HookState<FirebaseMessaging, _FirebaseMessagingHook> {
  FirebaseMessaging firebaseMessaging = FirebaseMessaging.instance;

  static Future<void> myBackgroundMessageHandler(RemoteMessage message) async {
    if (message.data.containsKey('data')) {
      // Handle data message
      final dynamic data = message.data['data'];
    }

    if (message.data.containsKey('notification')) {
      // Handle notification message
      final dynamic notification = message.data['notification'];
    }
  }

  @override
  Future<void> initHook() async {
    FirebaseMessaging.onBackgroundMessage(myBackgroundMessageHandler);

    FirebaseMessaging.onMessage.listen((event) {
      print(event.data.toString());
    });
  }

  @override
  FirebaseMessaging build(BuildContext context) => firebaseMessaging;
}
