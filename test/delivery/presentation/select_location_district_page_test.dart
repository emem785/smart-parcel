import 'package:flutter_test/flutter_test.dart';
import 'package:smart_parcel/delivery/presentation/choose_duration_page.dart/select_location_district_page.dart';
import 'package:smart_parcel/inject_conf.dart';

import '../../common/infrastructure/setup_tests.dart';
import '../../common/presentation/widget_test_setup.dart';
import '../infrastructure/delivery_mock_data.dart';

void main() {
  setUp(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    await TestSetup.init();
  });

  tearDown(() async {
    getIt.reset();
  });
  group('On Entering Page', () {
    testWidgets(
      "ListTiles Of Districts Appears on Screen",
      (WidgetTester tester) async {
        TestSetup.setup(getParcelCentersJson, 200);
        await tester.pumpWidget(
          WidgetHelper.testableWidgetScaffold(
            child: SelectLocationDistrictPage(
              onSelected: (district) {},
            ),
          ),
        );
        await tester.pumpAndSettle();

        expect(find.text("Yaba"), findsOneWidget);
      },
    );
  });
}
