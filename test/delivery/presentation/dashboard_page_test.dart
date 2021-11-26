import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:smart_parcel/common/utils/extensions/string_extension.dart';
import 'package:smart_parcel/delivery/presentation/dashboard/dashboard.dart';
import 'package:smart_parcel/inject_conf.dart';

import '../../auth/infrastructure/auth_mock_data.dart';
import '../../common/infrastructure/common_mock_data.dart';
import '../../common/infrastructure/setup_tests.dart';
import '../../common/presentation/widget_test_setup.dart';

void main() {
  setUp(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    await dotenv.load(fileName: ".env");
    await TestSetup.init();
  });

  tearDown(() async {
    getIt.reset();
  });
  testWidgets(
    "Page Shows Error SnackBar",
    (WidgetTester tester) async {
      TestSetup.setup(null, null);
      await tester.pumpWidget(
        WidgetHelper.testableWidgetScaffold(child: const DashboardPage()),
      );
      await tester.pump(const Duration(milliseconds: 450));
      expect(find.byKey(const Key('flushbar')), findsOneWidget);

      await tester.pumpAndSettle();
    },
  );
  testWidgets(
    "Page shows users username on page",
    (WidgetTester tester) async {
      TestSetup.setup(null, null, userStringResponse);
      await tester.pumpWidget(
        WidgetHelper.testableWidgetScaffold(child: const DashboardPage()),
      );
      await tester.pumpAndSettle();
      expect(find.text(mockUser.username.capitalize()), findsOneWidget);
    },
  );
}
