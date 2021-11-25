import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:smart_parcel/auth/presentation/confirm_password_page/confirm_password_page.dart';
import 'package:smart_parcel/inject_conf.dart';

import '../../auth/infrastructure/auth_mock_data.dart';
import '../../common/infrastructure/setup_auth_tests.dart';
import '../../common/presentation/widget_test_setup.dart';

void main() {
  setUp(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    await AuthTestSetup.init();
  });
  tearDown(() {
    getIt.reset();
  });
  testWidgets(
    "Validation should take place",
    (WidgetTester tester) async {
      AuthTestSetup.setup(forgotPasswordJson, 200);
      await tester.pumpWidget(
        WidgetHelper.testableWidgetScaffold(
            child: const ConfirmPasswordPage(email: '')),
      );

      await tester.tap(find.byType(ElevatedButton));
      await tester.pumpAndSettle();
      expect(find.text("This field cannot be left blank"), findsNWidgets(2));
    },
  );

  testWidgets(
    "Page Shows Error SnackBar",
    (WidgetTester tester) async {
      AuthTestSetup.setup(forgotPasswordFailureResponse, 400);
      await tester.pumpWidget(
        WidgetHelper.testableWidgetScaffold(
            child: const ConfirmPasswordPage(email: '')),
      );

      await tester.enterText(find.byKey(ConfirmPasswordBody.password), "emem");
      await tester.enterText(
          find.byKey(ConfirmPasswordBody.confirmPassword), "emem");

      await tester.tap(find.byType(ElevatedButton));

      await tester.pump(const Duration(milliseconds: 450));
      expect(find.byKey(const Key('flushbar')), findsOneWidget);

      await tester.pumpAndSettle();
    },
  );
}
