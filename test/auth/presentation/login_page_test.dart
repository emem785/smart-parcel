import 'package:flutter_test/flutter_test.dart';
import 'package:smart_parcel/auth/presentation/login_page/login_page.dart';
import 'package:smart_parcel/auth/presentation/login_page/widgets/login_page_body.dart';

import '../../common/infrastructure/setup_auth_tests.dart';
import '../../common/presentation/widget_test_setup.dart';
import '../infrastructure/auth_mock_data.dart';

void main() {
  setUp(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    await TestSetup.init();
  });
  testWidgets(
    "Validators should stop user from loging in if any fields are empty",
    (WidgetTester tester) async {
      TestSetup.setup(mockLoginResponse, 200);
      await tester.pumpWidget(
        WidgetHelper.testableWidget(child: const LoginPage()),
      );

      await tester.tap(find.byKey(LoginPageBody.loginButtonKey));
      await tester.pumpAndSettle();
      expect(find.text("This field cannot be left blank"), findsNWidgets(2));
    },
  );
}
