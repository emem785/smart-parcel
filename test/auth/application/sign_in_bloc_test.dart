import 'dart:convert';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smart_parcel/auth/application/bloc/sign_in_bloc/signin_bloc.dart';
import 'package:smart_parcel/inject_conf.dart';

import '../../common/infrastructure/setup_tests.dart';
import '../../delivery/application/delivery_bloc_test.dart';
import '../infrastructure/auth_mock_data.dart';

void main() {
  setUp(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    await dotenv.load(fileName: ".env");
    await TestSetup.init();
  });

  tearDown(() {
    getIt.reset();
  });
  group('SignIn Bloc Login Event', () {
    blocTest<SignInBloc, SignInState>(
      'login event calls sign in repository sign in function',
      setUp: () => TestSetup.setup(mockLoginResponse, 200),
      build: () => getIt<SignInBloc>(),
      act: (bloc) => bloc.add(SignInEvent.login(
          email: mockEmail, password: mockPassword, context: MockContext())),
      wait: const Duration(milliseconds: 300),
      expect: () => const [
        SignInState.loading(),
        SignInState.loggedIn(mockLoginR),
      ],
    );
    blocTest<SignInBloc, SignInState>(
      'login event emits failure state when getting 400 status code',
      setUp: () => TestSetup.setup(loginFailureJson, 400),
      build: () => getIt<SignInBloc>(),
      act: (bloc) => bloc.add(SignInEvent.login(
          email: mockEmail, password: mockPassword, context: MockContext())),
      wait: const Duration(milliseconds: 300),
      expect: () => const [
        SignInState.loading(),
        SignInState.error(mockLoginFailure),
      ],
    );
    blocTest<SignInBloc, SignInState>(
      'login event emits user not activated error failure state when getting 400 status code',
      setUp: () => TestSetup.setup(mockLoginFailureRespone, 400),
      build: () => getIt<SignInBloc>(),
      act: (bloc) => bloc.add(SignInEvent.login(
          email: mockEmail, password: mockPassword, context: MockContext())),
      wait: const Duration(milliseconds: 300),
      expect: () => const [
        SignInState.loading(),
        SignInState.userNotActivated(loginActivationFailure)
      ],
    );
    blocTest<SignInBloc, SignInState>(
      'check login event bloc stores auth token',
      setUp: () =>
          TestSetup.setup(mockLoginResponse, 200, mockAuthToken.toJson()),
      build: () => getIt<SignInBloc>(),
      act: (bloc) => bloc.add(SignInEvent.login(
          email: mockEmail, password: mockPassword, context: MockContext())),
      wait: const Duration(milliseconds: 300),
      verify: (_) => verify(() => getIt<SharedPreferences>()
          .setString(any(), jsonEncode(mockAuthToken.toMap()))),
    );
    blocTest<SignInBloc, SignInState>(
      ' check login event bloc stores user',
      setUp: () => TestSetup.setup(mockLoginResponse, 200),
      build: () => getIt<SignInBloc>(),
      act: (bloc) => bloc.add(SignInEvent.login(
          email: mockEmail, password: mockPassword, context: MockContext())),
      wait: const Duration(milliseconds: 300),
      verify: (_) => verify(() => getIt<SharedPreferences>()
          .setString(any(), jsonEncode(mockUser.toMap()))),
    );
  });

  group('SignIn Bloc Forgot Password Event', () {
    blocTest<SignInBloc, SignInState>(
      'emits request sent state',
      setUp: () => TestSetup.setup(forgotPasswordJson, 200),
      build: () => getIt<SignInBloc>(),
      act: (bloc) =>
          bloc.add(const SignInEvent.forgotPassword(email: mockEmail)),
      wait: const Duration(milliseconds: 300),
      expect: () => const [
        SignInState.loading(),
        SignInState.requestSent(mockEmail),
      ],
    );

    blocTest<SignInBloc, SignInState>(
      'emits failure state when getting 400 status code',
      setUp: () => TestSetup.setup(forgotPasswordFailureResponse, 400),
      build: () => getIt<SignInBloc>(),
      act: (bloc) =>
          bloc.add(const SignInEvent.forgotPassword(email: mockEmail)),
      wait: const Duration(milliseconds: 300),
      expect: () => const [
        SignInState.loading(),
        SignInState.error(forgotPasswordFailure),
      ],
    );
  });
  group('SignIn Bloc Confirm Otp Event', () {
    blocTest<SignInBloc, SignInState>(
      'emits email confirmed state',
      setUp: () => TestSetup.setup(forgotPasswordJson, 200),
      build: () => getIt<SignInBloc>(),
      act: (bloc) =>
          bloc.add(const SignInEvent.confirmOtp(email: mockEmail, otp: "")),
      wait: const Duration(milliseconds: 300),
      expect: () => const [
        SignInState.loading(),
        SignInState.otpConfirmed(),
      ],
    );

    blocTest<SignInBloc, SignInState>(
      'emits failure state when getting 400 status code',
      setUp: () => TestSetup.setup(forgotPasswordFailureResponse, 400),
      build: () => getIt<SignInBloc>(),
      act: (bloc) =>
          bloc.add(const SignInEvent.forgotPassword(email: mockEmail)),
      wait: const Duration(milliseconds: 300),
      expect: () => const [
        SignInState.loading(),
        SignInState.error(forgotPasswordFailure),
      ],
    );
  });
  group('SignIn Bloc Confirm Password Event', () {
    blocTest<SignInBloc, SignInState>(
      'emits email confirmed state',
      setUp: () => TestSetup.setup(forgotPasswordJson, 200),
      build: () => getIt<SignInBloc>(),
      act: (bloc) => bloc.add(const SignInEvent.confirmPassword(
          email: mockEmail, password: "", confirmPassword: "")),
      wait: const Duration(milliseconds: 300),
      expect: () => const [
        SignInState.loading(),
        SignInState.passwordConfirmed(),
      ],
    );
    blocTest<SignInBloc, SignInState>(
      'emits passwords do not match error state',
      setUp: () => TestSetup.setup(forgotPasswordJson, 200),
      build: () => getIt<SignInBloc>(),
      act: (bloc) => bloc.add(const SignInEvent.confirmPassword(
          email: mockEmail, password: "m", confirmPassword: "p")),
      wait: const Duration(milliseconds: 300),
      expect: () => const [
        SignInState.loading(),
        SignInState.error(mockFailure),
      ],
    );

    blocTest<SignInBloc, SignInState>(
      'emits failure state when getting 400 status code',
      setUp: () => TestSetup.setup(forgotPasswordFailureResponse, 400),
      build: () => getIt<SignInBloc>(),
      act: (bloc) =>
          bloc.add(const SignInEvent.forgotPassword(email: mockEmail)),
      wait: const Duration(milliseconds: 300),
      expect: () => const [
        SignInState.loading(),
        SignInState.error(forgotPasswordFailure),
      ],
    );
  });
}
