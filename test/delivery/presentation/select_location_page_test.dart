import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:smart_parcel/delivery/presentation/select_location_pages/select_location_district_page.dart';
import 'package:smart_parcel/inject_conf.dart';

import '../../common/infrastructure/setup_auth_tests.dart';
import '../../common/presentation/widget_test_setup.dart';
import '../infrastructure/delivery_mock_data.dart';

void main() {
  setUp(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    await dotenv.load(fileName: ".env");
    await AuthTestSetup.init();
  });

  tearDown(() async {
    getIt.reset();
  });
  group('On Entering Page', () {
    testWidgets(
      "Shows Error Snackbar on 4xx response",
      (WidgetTester tester) async {
        AuthTestSetup.setup(selfStorageError, 400);
        await tester.pumpWidget(
          WidgetHelper.testableWidgetScaffold(
            child: const SelectLocationDistrictPage(),
          ),
        );

        await tester.pump(const Duration(milliseconds: 450));
        expect(find.byKey(const Key('flushbar')), findsOneWidget);

        await tester.pumpAndSettle();
      },
    );
  });
}
