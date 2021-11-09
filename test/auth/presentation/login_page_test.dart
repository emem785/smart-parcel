import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:smart_parcel/auth/presentation/login_page/login_page.dart';

import '../../common/presentation/widget_test_setup.dart';

class MockNavigatorObserver extends Mock implements NavigatorObserver {}

class FakeRoute extends Fake implements Route<dynamic> {}

void main() {
  setUp(() {
    registerFallbackValue(FakeRoute());
  });
  testWidgets(
    "Validators should stop user from loging in if any fields are empty",
    (WidgetTester tester) async {
      await tester.pumpWidget(
        WidgetHelper.testableWidget(child: const LoginPage()),
      );

      await tester.tap(find.byKey(loginButtonKey));
      await tester.pumpAndSettle();
      expect(find.text("This field cannot be left blank"), findsNWidgets(2));
    },
  );
}
