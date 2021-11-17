import 'package:flutter_test/flutter_test.dart';
import 'package:smart_parcel/inject_conf.dart';

import '../../common/infrastructure/setup_tests.dart';

void main() {
  setUp(() async {
    await TestSetup.init();
  });

  tearDown(() {
    getIt.reset();
  });
  group('Delivery Bloc getLocation event', () {
    // blocTest<AuthBloc, AuthState>(
    //   '',
    //   setUp: () => TestSetup.setup(null, null, mockAuthTokenJson),
    //   build: () => getIt<AuthBloc>(),
    //   act: (bloc) => bloc.add(const AuthEvent.authenticate()),
    //   wait: const Duration(milliseconds: 300),
    //   verify: (_) => verify(() => getIt<SharedPreferences>().getString(any())),
    // );
  });
}
