import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:smart_parcel/common/presentation/routing/router.gr.dart';
import 'package:smart_parcel/inject_conf.dart';
import 'package:smart_parcel/main.dart';

import '../../common/infrastructure/setup_tests.dart';
import '../../common/presentation/widget_test_setup.dart';

class MockNavigatorObserver extends Mock implements NavigatorObserver {}

class RouteFake extends Fake implements Route {}

// const route = MaterialPageRoute<dynamic>();

void main() {
  late MockNavigatorObserver mockNavigatorObserver;
  setUp(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    mockNavigatorObserver = MockNavigatorObserver();
    registerFallbackValue(RouteFake());
    await TestSetup.init();
  });
  tearDown(() {
    getIt.reset();
  });
  testWidgets(
    "Splash page navigates to  welcome page if there is no token in storage ",
    (WidgetTester tester) async {
      TestSetup.setup(null, null);
      await tester.pumpWidget(
        WidgetHelper.testableNavigatableWidget(
          child: MyApp(appRouter: AppRouter()),
          navigatorObserver: mockNavigatorObserver,
        ),
      );

      await tester.pumpAndSettle();
      verify(() => mockNavigatorObserver.didPush(any(), any())).called(2);
    },
  );
}
