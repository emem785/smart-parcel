import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smart_parcel/account/presentation/settings_page/settings_page.dart';
import 'package:smart_parcel/auth/presentation/login_page/login_page.dart';
import 'package:smart_parcel/auth/presentation/login_page/widgets/login_page_body.dart';
import 'package:smart_parcel/common/domain/usecases/show_alert_usecase.dart';
import 'package:smart_parcel/inject_conf.dart';

import '../../auth/infrastructure/auth_mock_data.dart';
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
  group('Logout Tile', () {
    testWidgets(
      "Alert dialogue shows when tapped",
      (WidgetTester tester) async {
        TestSetup.setup(null, null);
        await tester.pumpWidget(
          WidgetHelper.testableWidgetScaffold(child: const SettingsPage()),
        );

        await tester.tap(find.byKey(SettingsBody.logout));
        await tester.pumpAndSettle();
        expect(find.byType(AlertDialog), findsOneWidget);
      },
    );
    testWidgets(
      "Tapping alert dialogue button causes app to logout",
      (WidgetTester tester) async {
        TestSetup.setup(null, null);
        await tester.pumpWidget(
          WidgetHelper.testableWidgetScaffold(child: const SettingsPage()),
        );

        await tester.tap(find.byKey(SettingsBody.logout));
        await tester.pumpAndSettle();
        await tester.tap(find.byKey(ShowAlertUseCase.confirm));
        verify(() => getIt<SharedPreferences>().remove(any()));
      },
    );
  });

  testWidgets(
    "Page Shows Error SnackBar",
    (WidgetTester tester) async {
      TestSetup.setup(mockLoginFailureRespone, 400);
      await tester.pumpWidget(
        WidgetHelper.testableWidget(child: const LoginPage()),
      );
      await tester.enterText(find.byKey(LoginPageBody.emailKey), "emem@emem");
      await tester.enterText(find.byKey(LoginPageBody.passwordKey), "emem");
      await tester.tap(find.byType(ElevatedButton));
      await tester.pump(const Duration(milliseconds: 450));
      expect(find.byKey(const Key('flushbar')), findsOneWidget);

      await tester.pumpAndSettle();
    },
  );
}
