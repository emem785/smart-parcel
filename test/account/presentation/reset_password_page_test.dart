import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:smart_parcel/account/presentation/reset_password_page/reset_password_page.dart';
import 'package:smart_parcel/inject_conf.dart';

import '../../auth/infrastructure/auth_mock_data.dart';
import '../../common/infrastructure/setup_auth_tests.dart';
import '../../common/presentation/widget_test_setup.dart';
import '../infrastructure/account_mock_data.dart';

void main() {
  setUp(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    await dotenv.load(fileName: ".env");
    await AuthTestSetup.init();
  });
  tearDown(() {
    getIt.reset();
  });
  testWidgets(
    "Validation should take place",
    (WidgetTester tester) async {
      AuthTestSetup.setup(mockLoginResponse, 200);
      await tester.pumpWidget(
        WidgetHelper.testableWidgetScaffold(child: const ResetPasswordPage()),
      );

      await tester.tap(find.byType(ElevatedButton));
      await tester.pumpAndSettle();
      expect(find.text("This field cannot be left blank"), findsNWidgets(3));
    },
  );

  testWidgets(
    "Page Shows Error SnackBar",
    (WidgetTester tester) async {
      AuthTestSetup.setup(mockLoginFailureRespone, 400);
      await tester.pumpWidget(
        WidgetHelper.testableWidgetScaffold(child: const ResetPasswordPage()),
      );

      await tester.enterText(find.byKey(ResetPasswordBody.oldPassword), "emem");
      await tester.enterText(find.byKey(ResetPasswordBody.newPassword), "emem");
      await tester.enterText(
          find.byKey(ResetPasswordBody.confirmPassword), "emem");

      await tester.tap(find.byType(ElevatedButton));

      await tester.pump(const Duration(milliseconds: 450));
      expect(find.byKey(const Key('flushbar')), findsOneWidget);

      await tester.pumpAndSettle();
    },
  );
  ;
  testWidgets(
    "Page Shows snackbar prompt when password is changed is saved",
    (WidgetTester tester) async {
      AuthTestSetup.setup(resetPasswordJson, 200);
      await tester.pumpWidget(
        WidgetHelper.testableWidgetScaffold(child: const ResetPasswordPage()),
      );

      await tester.enterText(find.byKey(ResetPasswordBody.oldPassword), "emem");
      await tester.enterText(find.byKey(ResetPasswordBody.newPassword), "emem");
      await tester.enterText(
          find.byKey(ResetPasswordBody.confirmPassword), "emem");

      await tester.tap(find.byType(ElevatedButton));

      await tester.pump(const Duration(milliseconds: 450));
      expect(find.byKey(const Key('flushbar')), findsOneWidget);

      await tester.pumpAndSettle();
    },
  );
}
