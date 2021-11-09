import 'package:flutter_test/flutter_test.dart';
import 'package:smart_parcel/auth/presentation/sign_up_page/sign_up_page.dart';

import '../../common/presentation/widget_test_setup.dart';

void main() {
  testWidgets(
    "Validators should stop user from registration if fields are empty",
    (WidgetTester tester) async {
      await tester.pumpWidget(
        WidgetHelper.testableWidget(child: const SignUpPage()),
      );

      await tester.tap(find.byKey(signUpButtonKey));
      await tester.pumpAndSettle();
      expect(find.text("This field cannot be left blank"), findsNWidgets(7));
    },
  );
}
