import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:smart_parcel/auth/presentation/login_page/login_page.dart';
import 'package:smart_parcel/auth/presentation/login_page/widgets/login_page_body.dart';
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
        WidgetHelper.testableWidget(child: const LoginPage()),
      );

      await tester.tap(find.byType(ElevatedButton));
      await tester.pumpAndSettle();
      expect(find.text("This field cannot be left blank"), findsOneWidget);
      expect(find.text("Please Enter a valid Email"), findsOneWidget);
    },
  );
  testWidgets(
    "Page Shows Error SnackBar",
    (WidgetTester tester) async {
      TestSetup.setup(mockLoginFailureRespone, 400);
      await tester.pumpWidget(
        WidgetHelper.testableWidget(child: const LoginPage()),
      );
      await tester.enterText(find.byKey(LoginPageBody.emailKey), "emem@emem");
      await tester.enterText(find.byKey(LoginPageBody.passwordKey), "emem");
      await tester.tap(find.byType(ElevatedButton));
      await tester.pump(const Duration(milliseconds: 450));
      expect(find.byKey(const Key('flushbar')), findsOneWidget);

      await tester.pumpAndSettle();
    },
  );
}
