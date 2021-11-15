import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smart_parcel/auth/application/bloc/sign_up_bloc/signup_bloc.dart';
import 'package:smart_parcel/inject_conf.dart';

import '../../common/infrastructure/setup_tests.dart';
import '../infrastructure/auth_mock_data.dart';

void main() {
  setUp(() async {
    await TestSetup.init();
  });

  tearDown(() {
    getIt.reset();
  });
  group('SignUp Bloc', () {
    blocTest<SignUpBloc, SignUpState>(
      'calls sign in repository sign up function',
      setUp: () => TestSetup.setup(registerResponse, 200),
      build: () => getIt<SignUpBloc>(),
      act: (bloc) => bloc.add(const SignUpEvent.signUp(
          user: mockUser,
          password: mockPassword,
          confirmPassword: mockPassword)),
      wait: const Duration(milliseconds: 500),
      expect: () => const [
        SignUpState.loading(),
        SignUpState.registered(mockUser),
      ],
    );
    blocTest<SignUpBloc, SignUpState>(
      'calls sign in repository cacheUser function',
      setUp: () => TestSetup.setup(registerResponse, 200),
      build: () => getIt<SignUpBloc>(),
      act: (bloc) => bloc.add(const SignUpEvent.signUp(
          user: mockUser,
          password: mockPassword,
          confirmPassword: mockPassword)),
      wait: const Duration(milliseconds: 300),
      verify: (bloc) {
        final prefs = getIt<SharedPreferences>();
        verify(() => prefs.setString(any(), any()));
      },
    );
    blocTest<SignUpBloc, SignUpState>(
      "emits failure when passwords don't match",
      setUp: () => TestSetup.setup(registerResponse, 200),
      build: () => getIt<SignUpBloc>(),
      act: (bloc) => bloc.add(const SignUpEvent.signUp(
          user: mockUser, password: mockPassword, confirmPassword: "hello")),
      wait: const Duration(milliseconds: 300),
      expect: () => [
        const SignUpState.loading(),
        const SignUpState.error(mockFailure),
      ],
    );
  });
  blocTest<SignUpBloc, SignUpState>('emits otp request sent state',
      setUp: () => TestSetup.setup(mockOtpResponse, 200),
      build: () => getIt<SignUpBloc>(),
      act: (bloc) => bloc.add(const SignUpEvent.requestOtp(email: mockEmail)),
      wait: const Duration(milliseconds: 300),
      expect: () =>
          const [SignUpState.loading(), SignUpState.requestSent(mockOtp)]);
  blocTest<SignUpBloc, SignUpState>(
    'check bloc stores auth token',
    setUp: () => TestSetup.setup(mockLoginResponse, 200),
    build: () => getIt<SignUpBloc>(),
    act: (bloc) => bloc
        .add(const SignUpEvent.submitOtp(otp: "000", email: "", password: "")),
    wait: const Duration(milliseconds: 300),
    verify: (_) =>
        verify(() => getIt<SharedPreferences>().setString(any(), any())),
  );
  blocTest<SignUpBloc, SignUpState>(
    'emits otp submitted state',
    setUp: () => TestSetup.setup(mockLoginResponse, 200),
    build: () => getIt<SignUpBloc>(),
    act: (bloc) => bloc
        .add(const SignUpEvent.submitOtp(otp: "000", email: "", password: "")),
    wait: const Duration(milliseconds: 300),
    expect: () => const [
      SignUpState.loading(),
      SignUpState.otpSubmitted(mockLoginR),
    ],
  );
}
