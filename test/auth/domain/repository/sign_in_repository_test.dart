import 'package:flutter_test/flutter_test.dart';
import 'package:smart_parcel/auth/application/bloc/sign_in_bloc/signin_bloc.dart';
import 'package:smart_parcel/auth/domain/models/login_response.dart';
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
      'Test sign up repository sign up function returns login response',
      () async {
        // arrange
        TestSetup.setup(mockLoginResponse, 200);
        final repo =
            getIt<SignInBloc>().authUseCases.signInUsecase.signInRepository;
        // act
        final response =
            await repo.login(email: mockEmail, password: mockPassword);
        // assert
        return response.fold(
          (l) => expect(l, null),
          (r) => expect(r, isA<LoginResponse>()),
        );
      },
    );
  });
}
