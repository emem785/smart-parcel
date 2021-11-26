import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:smart_parcel/common/domain/repositories/user_repository.dart';
import 'package:smart_parcel/inject_conf.dart';

import '../../../auth/infrastructure/auth_mock_data.dart';
import '../../infrastructure/common_mock_data.dart';
import '../../infrastructure/setup_tests.dart';

Future<void> main() async {
  setUp(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    await dotenv.load(fileName: ".env");
    await TestSetup.init();
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
}
