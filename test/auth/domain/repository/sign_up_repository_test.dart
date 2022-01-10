import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:smart_parcel/auth/application/bloc/sign_in_bloc/signin_bloc.dart';
import 'package:smart_parcel/auth/domain/models/verify_otp_response.dart';
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
      'Test sign up repository sign up function returns user response',
      () async {
        // arrange
        TestSetup.setup(registerResponse, 200);
        final repo =
            getIt<SignInBloc>().authUseCases.signUpUsecase.signUpRepository;
        // act
        final response = await repo.signUp(
            user: mockUser, password: mockPassword, fireBaseKey: "");
        // assert
        return response.fold(
          (l) => expect(l, null),
          (r) => expect(r.user, mockUser),
        );
      },
    );
    test(
      'Test sign up repository request Otp function returns success response',
      () async {
        // arrange
        TestSetup.setup(mockOtpResponse, 200);
        final repo =
            getIt<SignInBloc>().authUseCases.signUpUsecase.signUpRepository;
        // act
        final response = await repo.requestOtp(email: "emembest10@yahoo.com");
        // assert
        return response.fold(
          (l) => expect(l, null),
          (r) => expect(r, mockOtp),
        );
      },
    );
    test(
      'Test sign up repository submit Otp function returns success response',
      () async {
        // arrange
        TestSetup.setup(mockOtpVerifyResponse, 200);
        final repo =
            getIt<SignInBloc>().authUseCases.signUpUsecase.signUpRepository;
        // act
        final response = await repo.submitOtp(otp: "9999");
        // assert
        return response.fold(
          (l) => expect(l, null),
          (r) => expect(r, isA<VerifyOtpResponse>()),
        );
      },
    );
  });
}
