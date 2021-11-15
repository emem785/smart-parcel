import 'package:flutter_test/flutter_test.dart';
import 'package:smart_parcel/common/domain/repositories/auth_repository.dart';
import 'package:smart_parcel/inject_conf.dart';

import '../../../auth/infrastructure/auth_mock_data.dart';
import '../../infrastructure/common_mock_data.dart';
import '../../infrastructure/setup_tests.dart';

Future<void> main() async {
  setUp(() async {
    await TestSetup.init();
  });

  tearDown(() {
    getIt.reset();
  });
  group('Test Auth Repository Auth storage Interface', () {
    test(
      'returns authToken from storage ',
      () async {
        // arrange
        TestSetup.setup(null, null, mockAuthTokenJson);
        final repo = getIt<AuthRepository>();
        // act
        final response = repo.getAuthFromStorage();
        // assert
        return response.fold(
          (l) => expect(l, null),
          (r) => expect(r, mockAuthToken),
        );
      },
    );
    test(
      'returns failure if there is no authToken in storage from storage ',
      () async {
        // arrange
        TestSetup.setup(null, null);
        final repo = getIt<AuthRepository>();
        // act
        final response = repo.getAuthFromStorage();
        // assert
        return response.fold(
          (l) => expect(l, mockAuthStorageFailure),
          (r) => expect(r, null),
        );
      },
    );
  });

  group('Test Auth Repository Auth Http Service', () {
    test(
      'returns user response on 2xx status code',
      () async {
        // arrange
        TestSetup.setup(getUserResponse, 200);
        final repo = getIt<AuthRepository>();
        // act
        final response = await repo.getUserResponse();
        // assere
        return response.fold(
          (l) => expect(l, null),
          (r) => expect(r, userLoginResponse),
        );
      },
    );
    test(
      'returns authToken response on 2xx status code',
      () async {
        // arrange
        TestSetup.setup(refreshTokenResponse, 200);
        final repo = getIt<AuthRepository>();
        // act
        final response = await repo.refreshToken(mockAuthToken.refresh);
        // assere
        return response.fold(
          (l) => expect(l, null),
          (r) => expect(r, mockAuthToken),
        );
      },
    );
    test(
      'returns token failure on 4xx status code',
      () async {
        // arrange
        TestSetup.setup(tokenErrorResponse, 400);
        final repo = getIt<AuthRepository>();
        // act
        final response = await repo.getUserResponse();
        // assere
        return response.fold(
          (l) => expect(l, tokenFailure),
          (r) => expect(r, null),
        );
      },
    );
  });
}
