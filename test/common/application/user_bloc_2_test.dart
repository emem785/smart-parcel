import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:smart_parcel/common/application/user_bloc/user_bloc.dart';
import 'package:smart_parcel/inject_conf.dart';

import '../infrastructure/setup_auth_tests.dart';

void main() {
  setUp(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    await dotenv.load(fileName: ".env");
    await AuthTestSetup.init();
  });

  tearDown(() {
    getIt.reset();
  });
  group('On Deactivate Account Event', () {
    blocTest<UserBloc, UserState>(
      'emit account deactivated state',
      setUp: () => AuthTestSetup.setup(null, 204),
      build: () => getIt<UserBloc>(),
      act: (bloc) => bloc.add(const UserEvent.deactivateAccount()),
      wait: const Duration(milliseconds: 500),
      expect: () => const [
        UserState.loading(),
        UserState.accountDeactivated(),
      ],
    );
  });
}
