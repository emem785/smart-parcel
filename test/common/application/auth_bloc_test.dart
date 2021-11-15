import 'package:bloc_test/bloc_test.dart';
import 'package:chopper/chopper.dart';
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
      wait: const Duration(milliseconds: 300),
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
    blocTest<AuthBloc, AuthState>(
      'refreshes token  if get user request fails ',
      setUp: () => TestSetup.setup(tokenErrorResponse, 400, mockAuthTokenJson),
      build: () => getIt<AuthBloc>(),
      act: (bloc) => bloc.add(const AuthEvent.authenticate()),
      wait: const Duration(milliseconds: 300),
      verify: (_) => verify(
        () => getIt<ChopperClient>().httpClient.send(any()),
      ).called(2),
    );
  });
}
