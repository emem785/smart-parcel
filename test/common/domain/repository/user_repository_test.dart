import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:smart_parcel/auth/domain/models/auth_tokens.dart';
import 'package:smart_parcel/common/domain/repositories/user_repository.dart';
import 'package:smart_parcel/inject_conf.dart';

import '../../../auth/infrastructure/auth_mock_data.dart';
import '../../infrastructure/common_mock_data.dart';
import '../../infrastructure/setup_auth_tests.dart';
import '../../infrastructure/setup_tests.dart';

Future<void> main() async {
  setUp(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    await dotenv.load(fileName: ".env");
    await AuthTestSetup.init();
  });

  tearDown(() {
    getIt.reset();
  });
  group('Test User Repository User storage Interface', () {
    test(
      'returns user from storage ',
      () async {
        // arrange
        TestSetup.setup(null, null, userStringResponse);
        final repo = getIt<UserRepository>();
        // act
        final response = repo.getUserFromStorage();
        // assert
        return response.fold(
          (l) => expect(l, null),
          (r) => expect(r, mockUser),
        );
      },
    );
    test(
      'returns failure if there is no user in storage from storage ',
      () async {
        // arrange
        TestSetup.setup(null, null);
        final repo = getIt<UserRepository>();
        // act
        final response = repo.getUserFromStorage();
        // assert
        return response.fold(
          (l) => expect(l, mockStorageFailure),
          (r) => expect(r, null),
        );
      },
    );
  });
  group('Test User Repository Common Http Service', () {
    test(
      'returns get success response on update firebase key',
      () async {
        // arrange
        AuthTestSetup.setup(firebaseKeyUpdatedJson, 200);
        final repo = getIt<UserRepository>();
        // act
        final response =
            await repo.updateFirebaseKey("", const AuthToken.empty());
        // assert
        return response.fold(
          (l) => expect(l, null),
          (r) => expect(r, forgotPasswordResponse),
        );
      },
    );
    test(
      'returns get success response on deactivate account',
      () async {
        // arrange
        AuthTestSetup.setup(null, 204);
        final repo = getIt<UserRepository>();
        // act
        final response = await repo.deactivateAccount();
        // assert
        return response.fold(
          (l) => expect(l, null),
          (r) => expect(r, ""),
        );
      },
    );
  });
}
