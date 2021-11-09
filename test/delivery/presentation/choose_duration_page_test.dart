import 'package:flutter_test/flutter_test.dart';
import 'package:smart_parcel/delivery/presentation/choose_duration_page.dart/choose_duration_page.dart';
import 'package:smart_parcel/inject_conf.dart';

import '../../common/presentation/widget_test_setup.dart';

void main() {
  setUp(() {
    configureDependencies();
  });
  testWidgets(
    "Validators should stop user, if duration is empty",
    (WidgetTester tester) async {
      await tester.pumpWidget(
        WidgetHelper.testableWidgetScaffold(child: const ChooseDurationPage()),
      );

      await tester.tap(find.byKey(ChooseDuration.doneButtonKey));
      await tester.pumpAndSettle();
      expect(find.text("This field cannot be left blank"), findsOneWidget);
    },
  );
}
