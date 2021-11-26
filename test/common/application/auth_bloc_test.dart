import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smart_parcel/common/application/auth_bloc/auth_bloc.dart';
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
  group('Auth Bloc authenticate event', () {
    blocTest<AuthBloc, AuthState>(
      'calls auth storage interface get auth token function',
      setUp: () => TestSetup.setup(null, null, mockAuthTokenJson),
      build: () => getIt<AuthBloc>(),
      act: (bloc) => bloc.add(const AuthEvent.authenticate()),
      wait: const Duration(milliseconds: 300),
      verify: (_) => verify(() => getIt<SharedPreferences>().getString(any())),
    );
    blocTest<AuthBloc, AuthState>(
      'emit error state if there is no user in storage',
      setUp: () => TestSetup.setup(null, null),
      build: () => getIt<AuthBloc>(),
      act: (bloc) => bloc.add(const AuthEvent.authenticate()),
      wait: const Duration(milliseconds: 1200),
      expect: () => const [
        AuthState.loading(),
        AuthState.error(mockAuthStorageFailure),
      ],
    );
    blocTest<AuthBloc, AuthState>(
      'calls Auth Repository store user function',
      setUp: () => TestSetup.setup(getUserResponse, 200, mockAuthTokenJson),
      build: () => getIt<AuthBloc>(),
      act: (bloc) => bloc.add(const AuthEvent.authenticate()),
      wait: const Duration(milliseconds: 300),
      verify: (_) => verify(
        () => getIt<SharedPreferences>().setString(any(), mockUser.toJson()),
      ),
    );
  });
  group('Auth Bloc logout event', () {
    blocTest<AuthBloc, AuthState>(
      'shared preferences remove string on user key is called',
      setUp: () => TestSetup.setup(null, null),
      build: () => getIt<AuthBloc>(),
      act: (bloc) => bloc.add(const AuthEvent.logout()),
      wait: const Duration(milliseconds: 300),
      verify: (_) => verify(
        () => getIt<SharedPreferences>().remove('user'),
      ),
    );
    blocTest<AuthBloc, AuthState>(
      'shared preferences remove string is called on token key',
      setUp: () => TestSetup.setup(null, null, mockAuthTokenJson),
      build: () => getIt<AuthBloc>(),
      act: (bloc) => bloc.add(const AuthEvent.logout()),
      wait: const Duration(milliseconds: 300),
      verify: (_) => verify(
        () => getIt<SharedPreferences>().remove('token'),
      ),
    );
  });
}
