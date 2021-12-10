import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:smart_parcel/account/domain/repositories/account_repository.dart';
import 'package:smart_parcel/inject_conf.dart';

import '../../../auth/infrastructure/auth_mock_data.dart';
import '../../../common/infrastructure/common_mock_data.dart';
import '../../../common/infrastructure/setup_auth_tests.dart';
import '../../../common/infrastructure/setup_tests.dart';
import '../../infrastructure/account_mock_data.dart';

Future<void> main() async {
  setUp(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    await dotenv.load(fileName: ".env");
    await TestSetup.init();
  });

  tearDown(() {
    getIt.reset();
  });
  ;

  group('Test Account Repository Account Http Service', () {
    test(
      'edit profile returns user response on 2xx status code',
      () async {
        // arrange
        TestSetup.setup(getUserResponse, 200, mockAuthTokenJson);
        final repo = getIt<AccountRepository>();
        // act
        final response = await repo.editUser(mockUser);
        // assere
        return response.fold(
          (l) => expect(l, null),
          (r) => expect(r, userLoginResponse),
        );
      },
    );
    test(
      'delete profile returns user response on 2xx status code',
      () async {
        // // arrange
        // TestSetup.setup(getUserResponse, 200, mockAuthTokenJson);
        // final repo = getIt<AccountRepository>();
        // // act
        // final response = await repo.
        // // assere
        // return response.fold(
        //   (l) => expect(l, null),
        //   (r) => expect(r, userLoginResponse),
        // );
      },
    );
    test(
      'reset password returns simple auth response',
      () async {
        // arrange
        AuthTestSetup.setup(resetPasswordJson, 200);
        final repo = getIt<AccountRepository>();
        // act
        final response = await repo.resetPassword(
          password: "emem",
          newPassword: "emem2",
        );
        // assere
        return response.fold(
          (l) => expect(l, null),
          (r) => expect(r, resetPasswordResponse),
        );
      },
    );
  });
}
