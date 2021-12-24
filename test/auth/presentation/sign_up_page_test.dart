import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:smart_parcel/auth/presentation/sign_up_page/sign_up_page.dart';
import 'package:smart_parcel/auth/presentation/sign_up_page/widgets/sign_up_page_body.dart';
import 'package:smart_parcel/inject_conf.dart';

import '../../common/infrastructure/setup_tests.dart';
import '../../common/presentation/widget_test_setup.dart';
import '../infrastructure/auth_mock_data.dart';

void main() {
  setUp(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    await dotenv.load(fileName: ".env");
    await TestSetup.init();
  });
  tearDown(() {
    getIt.reset();
  });
  testWidgets(
    "Validators should stop user from registration if fields are empty",
    (WidgetTester tester) async {
      TestSetup.setup(registerResponse, 200);
      await tester.pumpWidget(
        WidgetHelper.testableWidget(child: const SignUpPage()),
      );

      await tester.tap(find.byKey(SignUpPageBody.signUpButtonKey));
      await tester.pumpAndSettle();
      expect(find.text("This field cannot be left blank"), findsNWidgets(4));
      expect(find.text("Invalid phone number format"), findsOneWidget);
      expect(find.text("Please Enter a valid Email"), findsOneWidget);
    },
  );
  testWidgets(
    "Page Shows Error SnackBar",
    (WidgetTester tester) async {
      TestSetup.setup(registerResponse, 200);
      await tester.pumpWidget(
        WidgetHelper.testableWidget(child: const SignUpPage()),
      );

      await tester.enterText(find.byKey(SignUpPageBody.firstName), "emem");
      await tester.enterText(find.byKey(SignUpPageBody.lastname), "emem");
      await tester.enterText(find.byKey(SignUpPageBody.email), "emem@emem");
      await tester.enterText(find.byKey(SignUpPageBody.phone), "09137801016");
      await tester.enterText(find.byKey(SignUpPageBody.password), "emem");
      await tester.enterText(
          find.byKey(SignUpPageBody.confirmPassword), "ddddd");

      await tester.tap(find.byType(ElevatedButton));
      await tester.pump(const Duration(milliseconds: 450));
      expect(find.byKey(const Key('flushbar')), findsOneWidget);

      await tester.pumpAndSettle();
    },
  );
  testWidgets(
    "Page Shows Error SnackBar with action",
    (WidgetTester tester) async {
      TestSetup.setup(mockFailureResponse, 400);
      await tester.pumpWidget(
        WidgetHelper.testableWidget(child: const SignUpPage()),
      );

      await tester.enterText(find.byKey(SignUpPageBody.firstName), "emem");
      await tester.enterText(find.byKey(SignUpPageBody.lastname), "emem");
      await tester.enterText(find.byKey(SignUpPageBody.email), "emem@emem.com");
      await tester.enterText(find.byKey(SignUpPageBody.phone), "09137802225");
      await tester.enterText(find.byKey(SignUpPageBody.password), "emem");
      await tester.enterText(
          find.byKey(SignUpPageBody.confirmPassword), "emem");

      await tester.tap(find.byType(ElevatedButton));
      await tester.pump(const Duration(milliseconds: 450));
      expect(find.byKey(const Key('flushbar')), findsOneWidget);
      await tester.pumpAndSettle();
    },
  );
}
