import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:smart_parcel/inject_conf.dart';

import '../../common/infrastructure/setup_tests.dart';

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
}
