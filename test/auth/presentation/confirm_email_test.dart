import 'package:flutter_test/flutter_test.dart';
import 'package:smart_parcel/auth/presentation/confirm_email/confirm_email.dart';

import '../../common/presentation/widget_test_setup.dart';

void main() {
  testWidgets(
    "Validators should stop user from confirming if fields are empty",
    (WidgetTester tester) async {
      await tester.pumpWidget(
        WidgetHelper.testableWidget(child: const ConfirmEmailPage()),
      );

      await tester.tap(find.byKey(ConfirmEmailPage.enterButtonKey));
      await tester.pumpAndSettle();
      expect(find.text("This field cannot be left blank"), findsOneWidget);
    },
  );
  testWidgets(
    "Validators should stop user if otp is less than 6 digits",
    (WidgetTester tester) async {
      await tester.pumpWidget(
        WidgetHelper.testableWidget(child: const ConfirmEmailPage()),
      );

      await tester.enterText(find.byKey(ConfirmEmailPage.otpKey), "333");

      await tester.tap(find.byKey(ConfirmEmailPage.enterButtonKey));
      await tester.pumpAndSettle();
      expect(find.text("Otp cannot be less than 6 digits"), findsOneWidget);
    },
  );
}
