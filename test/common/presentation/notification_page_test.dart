import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:smart_parcel/common/application/notification_bloc/notification_bloc.dart';
import 'package:smart_parcel/common/utils/extensions/string_extension.dart';
import 'package:smart_parcel/delivery/presentation/notification_page/notification_page.dart';
import 'package:smart_parcel/inject_conf.dart';

import '../../auth/infrastructure/auth_mock_data.dart';
import '../../common/infrastructure/common_mock_data.dart';
import '../../common/infrastructure/setup_tests.dart';
import '../../common/presentation/widget_test_setup.dart';

void main() {
  late NotificationBloc _notificationBloc;
  setUp(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    await dotenv.load(fileName: ".env");
    await TestSetup.init();
    TestSetup.setup(null, null);
    _notificationBloc = getIt<NotificationBloc>();
  });

  tearDown(() async {
    getIt.reset();
  });

  Widget widgetTestableBloc() {
    return MaterialApp(
      home: Scaffold(
          body: BlocProvider(
        create: (context) => _notificationBloc,
        child: const NotificationBody(),
      )),
    );
  }

  group('On Entering Page', () {
    testWidgets(
      "Notifications show",
      (WidgetTester tester) async {
        await tester.pumpWidget(widgetTestableBloc());

        _notificationBloc
            .add(const NotificationEvent.addnotification(fakeRmtMsg));

        await tester.pumpAndSettle();
        expect(
          find.byType(ListTile),
          findsOneWidget,
        );
      },
    );
  });
  group('When tapping remove notification', () {
    testWidgets(
      "Page shows users username on page",
      (WidgetTester tester) async {
        TestSetup.setup(null, null, userStringResponse);
        await tester.pumpWidget(
          WidgetHelper.testableWidgetScaffold(child: const NotificationPage()),
        );
        await tester.pumpAndSettle();
        expect(find.text(mockUser.firstName.capitalize()), findsOneWidget);
      },
    );
  });
}
