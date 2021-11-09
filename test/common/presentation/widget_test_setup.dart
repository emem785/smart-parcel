import 'package:flutter/material.dart';

class WidgetHelper {
  static Widget testableWidget({required Widget child}) {
    return MaterialApp(
      home: child,
    );
  }

  static Widget testableWidgetScaffold({required Widget child}) {
    return MaterialApp(
      home: Scaffold(
        body: child,
      ),
    );
  }

  static Widget testableNavigatableWidget({
    required Widget child,
    required NavigatorObserver navigatorObserver,
  }) {
    return MaterialApp(
      navigatorObservers: [navigatorObserver],
      home: child,
    );
  }
}
