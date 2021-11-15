import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:smart_parcel/auth/presentation/forgot_password_page/forgot_password_page.dart';
import 'package:smart_parcel/inject_conf.dart';

import '../../common/infrastructure/setup_tests.dart';
import '../../common/presentation/widget_test_setup.dart';
import '../infrastructure/auth_mock_data.dart';

void main() {
  setUp(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    await TestSetup.init();
  });

  tearDown(() async {
    getIt.reset();
  });
  testWidgets(
    "Validators should stop user from loging in if any fields are empty",
    (WidgetTester tester) async {
      TestSetup.setup(mockLoginResponse, 200);
      await tester.pumpWidget(
        WidgetHelper.testableWidget(child: const ForgotPasswordPage()),
      );

      await tester.tap(find.byType(ElevatedButton));
      await tester.pumpAndSettle();
      expect(find.text("Please Enter a valid Email"), findsOneWidget);
    },
  );
  testWidgets(
    "Page Shows Error SnackBar",
    (WidgetTester tester) async {
      TestSetup.setup(forgotPasswordFailureResponse, 400);
      await tester.pumpWidget(
        WidgetHelper.testableWidget(child: const ForgotPasswordPage()),
      );
      await tester.enterText(find.byType(TextFormField), "emem@emem");
      await tester.tap(find.byType(ElevatedButton));
      await tester.pump(const Duration(milliseconds: 450));
      expect(find.byKey(const Key('flushbar')), findsOneWidget);

      await tester.pumpAndSettle();
    },
  );
  testWidgets(
    "Page Shows prompt after request is sent to email",
    (WidgetTester tester) async {
      TestSetup.setup(forgotPasswordResponse, 200);
      await tester.pumpWidget(
        WidgetHelper.testableWidget(child: const ForgotPasswordPage()),
      );
      await tester.enterText(find.byType(TextFormField), "emem@emem");
      await tester.tap(find.byType(ElevatedButton));
      await tester.pump(const Duration(milliseconds: 450));
      expect(
        find.text("Your reset password request has been sent to your email"),
        findsOneWidget,
      );

      await tester.pumpAndSettle();
    },
  );
}
