import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:smart_parcel/auth/presentation/confirm_email/confirm_email.dart';
import 'package:smart_parcel/inject_conf.dart';

import '../../common/infrastructure/setup_auth_tests.dart';
import '../../common/presentation/widget_test_setup.dart';
import '../infrastructure/auth_mock_data.dart';

void main() {
  setUp(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    await TestSetup.init();
  });
  tearDown(() {
    getIt.reset();
  });
  testWidgets(
    "Validators should stop user from confirming if fields are empty",
    (WidgetTester tester) async {
      TestSetup.setup(mockOtpVerifyResponse, 200);
      await tester.pumpWidget(
        WidgetHelper.testableWidget(
            child: const ConfirmEmailPage(
          email: mockEmail,
          password: "",
        )),
      );

      await tester.tap(find.byKey(ConfirmEmailPage.enterButtonKey));
      await tester.pumpAndSettle();
      expect(find.text("This field cannot be left blank"), findsOneWidget);
    },
  );
  testWidgets(
    "Validators should stop user if otp is less than 6 digits",
    (WidgetTester tester) async {
      TestSetup.setup(mockOtpVerifyResponse, 200);
      await tester.pumpWidget(
        WidgetHelper.testableWidget(
            child: const ConfirmEmailPage(
          email: mockEmail,
          password: "",
        )),
      );

      await tester.enterText(find.byKey(ConfirmEmailPage.otpKey), "333");

      await tester.tap(find.byKey(ConfirmEmailPage.enterButtonKey));
      await tester.pumpAndSettle();
      expect(find.text("Otp cannot be less than 6 digits"), findsOneWidget);
    },
  );
  testWidgets(
    "Page Shows Error SnackBar",
    (WidgetTester tester) async {
      TestSetup.setup(mockFailureResponse, 400);
      await tester.pumpWidget(
        WidgetHelper.testableWidget(
            child: const ConfirmEmailPage(
          email: mockEmail,
          password: "",
        )),
      );

      await tester.enterText(find.byKey(ConfirmEmailPage.otpKey), "888888");

      await tester.tap(find.byType(ElevatedButton));
      await tester.pump(const Duration(milliseconds: 450));
      expect(find.byKey(const Key('flushbar')), findsOneWidget);

      await tester.pumpAndSettle();
    },
  );
}
