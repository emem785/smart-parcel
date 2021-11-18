import 'package:flutter_test/flutter_test.dart';
import 'package:smart_parcel/delivery/domain/repositories/delivery_repository.dart';
import 'package:smart_parcel/inject_conf.dart';

import '../../../common/infrastructure/setup_tests.dart';
import '../../infrastructure/delivery_mock_data.dart';

Future<void> main() async {
  setUp(() async {
    await TestSetup.init();
  });

  tearDown(() {
    getIt.reset();
  });
  group('Test Delivery Repository Delivery Http Service', () {
    test(
      'returns self storage response',
      () async {
        // arrange
        TestSetup.setup(selfStorageJson, 200);
        final repo = getIt<DeliveryRepository>();
        // act
        final response =
            await repo.bookSelfStorage(duration: "2", user: "", location: 3);
        // assert
        return response.fold(
          (l) => expect(l, null),
          (r) => expect(r, mockSelfStorageBookingResponse),
        );
      },
    );

    test(
      'returns failure on 400 response',
      () async {
        // arrange
        TestSetup.setup(selfStorageError, 400);
        final repo = getIt<DeliveryRepository>();
        // act
        final response =
            await repo.bookSelfStorage(duration: "2", user: "", location: 3);
        // assert
        return response.fold(
          (l) => expect(l, selfStorageFailure),
          (r) => expect(r, null),
        );
      },
    );
    test(
      'returns get parcel centers response',
      () async {
        // arrange
        TestSetup.setup(getParcelCentersJson, 200);
        final repo = getIt<DeliveryRepository>();
        // act
        final response = await repo.getParcelCenters();
        // assert
        return response.fold(
          (l) => expect(l, null),
          (r) => expect(r, mockCenterDistricts),
        );
      },
    );
  });
}
