import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smart_parcel/account/application/account_bloc/account_bloc.dart';
import 'package:smart_parcel/inject_conf.dart';

import '../../auth/infrastructure/auth_mock_data.dart';
import '../../common/infrastructure/setup_auth_tests.dart';

void main() {
  setUp(() async {
    await AuthTestSetup.init();
  });

  tearDown(() {
    getIt.reset();
  });
  group('Account Bloc Edit User Event', () {
    blocTest<AccountBloc, AccountState>(
      'stores user in cache',
      setUp: () => AuthTestSetup.setup(mockLoginResponse, 200),
      build: () => getIt<AccountBloc>(),
      act: (bloc) => bloc.add(const AccountEvent.editUser(mockUser)),
      wait: const Duration(milliseconds: 300),
      verify: (_) =>
          verify(() => getIt<SharedPreferences>().setString(any(), any())),
    );
    blocTest<AccountBloc, AccountState>(
      'emits user successfully modified state',
      setUp: () => AuthTestSetup.setup(mockLoginResponse, 200),
      build: () => getIt<AccountBloc>(),
      act: (bloc) => bloc.add(const AccountEvent.editUser(mockUser)),
      wait: const Duration(milliseconds: 300),
      expect: () => const [
        AccountState.loading(),
        AccountState.userModified(mockUser),
      ],
    );
    blocTest<AccountBloc, AccountState>(
      'emits failure state on 4xx response',
      setUp: () => AuthTestSetup.setup(mockLoginFailureRespone, 400),
      build: () => getIt<AccountBloc>(),
      act: (bloc) => bloc.add(const AccountEvent.editUser(mockUser)),
      wait: const Duration(milliseconds: 300),
      expect: () => const [
        AccountState.loading(),
        AccountState.error(mockLoginFailure),
      ],
    );
  });
  group('Account Bloc Reset Password Event', () {
    blocTest<AccountBloc, AccountState>(
      'emits error if passwords do not match',
      setUp: () => AuthTestSetup.setup(mockLoginResponse, 200),
      build: () => getIt<AccountBloc>(),
      act: (bloc) => bloc.add(const AccountEvent.resetPassword(
        confirmPassword: "emem44",
        newPassword: "emem",
        oldPassword: "emem2",
      )),
      wait: const Duration(milliseconds: 300),
      expect: () => const [
        AccountState.loading(),
        AccountState.error(mockFailure),
      ],
    );
    blocTest<AccountBloc, AccountState>(
      'emits password changed state',
      setUp: () => AuthTestSetup.setup(mockLoginResponse, 200),
      build: () => getIt<AccountBloc>(),
      act: (bloc) => bloc.add(const AccountEvent.resetPassword(
        confirmPassword: "emem",
        newPassword: "emem",
        oldPassword: "emem2",
      )),
      wait: const Duration(milliseconds: 300),
      expect: () => const [
        AccountState.loading(),
        AccountState.passwordChanged(),
      ],
    );

    blocTest<AccountBloc, AccountState>(
      'emits failure state on 4xx response',
      setUp: () => AuthTestSetup.setup(mockLoginFailureRespone, 400),
      build: () => getIt<AccountBloc>(),
      act: (bloc) => bloc.add(const AccountEvent.editUser(mockUser)),
      wait: const Duration(milliseconds: 300),
      expect: () => const [
        AccountState.loading(),
        AccountState.error(mockLoginFailure),
      ],
    );
  });
}
