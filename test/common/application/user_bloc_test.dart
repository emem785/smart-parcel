import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:smart_parcel/common/application/user_bloc/user_bloc.dart';
import 'package:smart_parcel/inject_conf.dart';

import '../../auth/infrastructure/auth_mock_data.dart';
import '../../common/infrastructure/setup_tests.dart';
import '../infrastructure/common_mock_data.dart';

void main() {
  setUp(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    await dotenv.load(fileName: ".env");
    await TestSetup.init();
  });

  tearDown(() {
    getIt.reset();
  });
  group('Auth Bloc GetUser Event', () {
    blocTest<UserBloc, UserState>(
      'emits user retreived state',
      setUp: () => TestSetup.setup(null, null, userStringResponse),
      build: () => getIt<UserBloc>(),
      act: (bloc) => bloc.add(const UserEvent.getUserFromStorage()),
      wait: const Duration(milliseconds: 500),
      expect: () => const [
        UserState.loading(),
        UserState.userRetreived(mockUser),
      ],
    );
    blocTest<UserBloc, UserState>(
      'emit error state if there is no user in storage',
      setUp: () => TestSetup.setup(null, null),
      build: () => getIt<UserBloc>(),
      act: (bloc) => bloc.add(const UserEvent.getUserFromStorage()),
      wait: const Duration(milliseconds: 500),
      expect: () => const [
        UserState.loading(),
        UserState.error(mockStorageFailure),
      ],
    );
  });
}
