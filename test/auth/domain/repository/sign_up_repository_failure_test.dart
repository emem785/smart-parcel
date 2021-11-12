import 'package:flutter_test/flutter_test.dart';
import 'package:smart_parcel/auth/application/bloc/sign_in_bloc/signin_bloc.dart';
import 'package:smart_parcel/common/domain/models/failure.dart';
import 'package:smart_parcel/inject_conf.dart';

import '../../../common/infrastructure/setup_auth_tests.dart';
import '../../infrastructure/auth_mock_data.dart';

Future<void> main() async {
  setUp(() async {
    await TestSetup.init();
  });

  tearDown(() {
    getIt.reset();
  });
  group('Test SignUp Repository', () {
    test(
      'Test sign in repository returns failure on 400 response',
      () async {
        // arrange
        TestSetup.setup(mockFailureResponse, 400);
        final repo =
            getIt<SignInBloc>().authUseCases.signUpUsecase.signUpRepository;
        // act
        final response =
            await repo.signUp(user: mockUser, password: mockPassword);
        // assert
        return response.fold(
          (l) => expect(l, isA<Failure>()),
          (r) => expect(r, null),
        );
      },
    );
    test(
      'Test request otp returns correct failure on 400 response',
      () async {
        // arrange
        TestSetup.setup(mockOtpErr, 400);
        final repo =
            getIt<SignInBloc>().authUseCases.signUpUsecase.signUpRepository;
        // act
        final response = await repo.requestOtp(email: "emembest10@yahoo.com");
        // assert
        return response.fold(
          (l) => expect(l, isA<Failure>()),
          (r) => expect(r, null),
        );
      },
    );
  });
}
