import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:smart_parcel/account/presentation/profile_page/profiles_page.dart';
import 'package:smart_parcel/inject_conf.dart';

import '../../auth/infrastructure/auth_mock_data.dart';
import '../../common/infrastructure/common_mock_data.dart';
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
      AuthTestSetup.setup(mockLoginResponse, 200);
      await tester.pumpWidget(
        WidgetHelper.testableWidgetScaffold(child: const ProfilePage()),
      );

      await tester.pumpAndSettle();
      await tester.tap(find.byType(ElevatedButton));
      await tester.pumpAndSettle();
      expect(find.text("This field cannot be left blank"), findsNWidgets(3));
      expect(find.text("Please Enter a valid Email"), findsOneWidget);
    },
  );
  testWidgets(
    "Text Formfields are populated with user data on startup",
    (WidgetTester tester) async {
      AuthTestSetup.setup(null, null, userStringResponse);
      await tester.pumpWidget(
        WidgetHelper.testableWidgetScaffold(child: const ProfilePage()),
      );

      await tester.pumpAndSettle();

      expect(find.text("emem"), findsNWidgets(2));
      expect(find.text("emembest10@yahoo.com"), findsOneWidget);
      expect(find.text("08033333333"), findsOneWidget);
    },
  );
  testWidgets(
    "Page Shows Error SnackBar",
    (WidgetTester tester) async {
      AuthTestSetup.setup(null, null, null);
      await tester.pumpWidget(
        WidgetHelper.testableWidgetScaffold(child: const ProfilePage()),
      );

      await tester.pump(const Duration(milliseconds: 450));
      expect(find.byKey(const Key('flushbar')), findsOneWidget);

      await tester.pumpAndSettle();
    },
  );
  testWidgets(
    "Page Shows snackbar prompt when user profile is saved",
    (WidgetTester tester) async {
      AuthTestSetup.setup(getUserResponse, 200, userStringResponse);
      await tester.pumpWidget(
        WidgetHelper.testableWidgetScaffold(child: const ProfilePage()),
      );

      await tester.pumpAndSettle();

      await tester.tap(find.byType(ElevatedButton));

      await tester.pump(const Duration(milliseconds: 450));
      expect(find.byKey(const Key('flushbar')), findsOneWidget);

      await tester.pumpAndSettle();
    },
  );
}
