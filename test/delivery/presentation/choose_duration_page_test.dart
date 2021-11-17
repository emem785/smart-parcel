import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:smart_parcel/delivery/presentation/choose_duration_page.dart/choose_duration_page.dart';
import 'package:smart_parcel/inject_conf.dart';

import '../../common/infrastructure/setup_tests.dart';
import '../../common/presentation/widget_test_setup.dart';

void main() {
  setUp(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    await TestSetup.init();
  });

  tearDown(() async {
    getIt.reset();
  });
  group('Tapping textform', () {
    testWidgets(
      "Causes Time Picker to Appear",
      (WidgetTester tester) async {
        TestSetup.setup(null, null);
        await tester.pumpWidget(
          WidgetHelper.testableWidgetScaffold(
            child: const ChooseDurationPage(),
          ),
        );
        await tester.tap(find.byType(TextFormField));
        await tester.pumpAndSettle();

        expect(find.byType(TimePickerDialog), findsOneWidget);
      },
    );
  });
}
