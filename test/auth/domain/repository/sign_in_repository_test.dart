import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:smart_parcel/auth/application/bloc/sign_in_bloc/signin_bloc.dart';
import 'package:smart_parcel/auth/domain/models/login_response.dart';
import 'package:smart_parcel/auth/domain/repositories/sign_in_repository.dart';
import 'package:smart_parcel/inject_conf.dart';

import '../../../common/infrastructure/setup_tests.dart';
import '../../infrastructure/auth_mock_data.dart';

Future<void> main() async {
  setUp(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    await dotenv.load(fileName: ".env");
    await TestSetup.init();
  });

  tearDown(() {
    getIt.reset();
  });
  group('Test SignUp Repository', () {
    test(
      'Test sign in repository sign up function returns login response',
      () async {
        // arrange
        TestSetup.setup(mockLoginResponse, 200);
        final repo =
            getIt<SignInBloc>().authUseCases.signInUsecase.signInRepository;
        // act
        final response = await repo.login(
            email: mockEmail, password: mockPassword, fireBaseKey: "");
        // assert
        return response.fold(
          (l) => expect(l, null),
          (r) => expect(r, isA<LoginResponse>()),
        );
      },
    );
    test(
      'Test sign in repository returns correct failure when given 400 status code',
      () async {
        // arrange
        TestSetup.setup(mockLoginFailureRespone, 400);
        final repo =
            getIt<SignInBloc>().authUseCases.signInUsecase.signInRepository;
        // act
        final response = await repo.login(
            email: mockEmail, password: mockPassword, fireBaseKey: "");
        // assert
        return response.fold(
          (l) => expect(l.message, mockLoginFailure.message),
          (r) => expect(r, null),
        );
      },
    );
    test(
      'Test sign in repository forgot password function returns success response',
      () async {
        // arrange
        TestSetup.setup(forgotPasswordJson, 200);
        final repo = getIt<SignInRepository>();
        // act
        final response = await repo.forgotPassword(email: mockEmail);
        // assert
        return response.fold(
          (l) => expect(l, null),
          (r) => expect(r, forgotPasswordResponse),
        );
      },
    );
    test(
      'Test sign in repository submit password otp function returns success response',
      () async {
        // arrange
        TestSetup.setup(forgotPasswordJson, 200);
        final repo = getIt<SignInRepository>();
        // act
        final response =
            await repo.submitPasswordOtp(email: mockEmail, otp: "");
        // assert
        return response.fold(
          (l) => expect(l, null),
          (r) => expect(r, forgotPasswordResponse),
        );
      },
    );
    test(
      'Test sign in repository confirm password otp function returns success response',
      () async {
        // arrange
        TestSetup.setup(forgotPasswordJson, 200);
        final repo = getIt<SignInRepository>();
        // act
        final response =
            await repo.confirmPassword(email: mockEmail, password: "emem");
        // assert
        return response.fold(
          (l) => expect(l, null),
          (r) => expect(r, forgotPasswordResponse),
        );
      },
    );
    test(
      'Test sign in repository returns correct failure when given 400 status code',
      () async {
        // arrange
        TestSetup.setup(forgotPasswordFailureResponse, 400);
        final repo =
            getIt<SignInBloc>().authUseCases.signInUsecase.signInRepository;
        // act
        final response = await repo.forgotPassword(email: mockEmail);
        // assert
        return response.fold(
          (l) => expect(l, forgotPasswordFailure),
          (r) => expect(r, null),
        );
      },
    );
  });
}
