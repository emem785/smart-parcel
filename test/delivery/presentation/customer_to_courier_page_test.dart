import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:smart_parcel/delivery/presentation/customer_to_courier_pages/customer_to_courier.dart';
import 'package:smart_parcel/inject_conf.dart';

import '../../common/infrastructure/setup_auth_tests.dart';
import '../../common/infrastructure/setup_tests.dart';
import '../../common/presentation/widget_test_setup.dart';
import '../infrastructure/delivery_mock_data.dart';

void main() {
  setUp(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    await dotenv.load(fileName: ".env");
    await TestSetup.init();
  });

  tearDown(() async {
    getIt.reset();
  });
  group('On Submiting form', () {
    testWidgets(
      "Validation should take place",
      (WidgetTester tester) async {
        AuthTestSetup.setup(selfStorageJson, 200);
        await tester.pumpWidget(
          WidgetHelper.testableWidgetScaffold(
              child: const CustomerToCourierPage()),
        );

        await tester.pumpAndSettle();
        await tester.tap(find.byType(ElevatedButton));
        await tester.pumpAndSettle();
        expect(find.text("This field cannot be left blank"), findsNWidgets(3));
        expect(find.text("Please Enter a valid Email"), findsOneWidget);
      },
    );
  });
}
