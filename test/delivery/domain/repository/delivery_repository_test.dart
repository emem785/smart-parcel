import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:smart_parcel/delivery/domain/repositories/delivery_repository.dart';
import 'package:smart_parcel/inject_conf.dart';

import '../../../auth/infrastructure/auth_mock_data.dart';
import '../../../common/infrastructure/setup_auth_tests.dart';
import '../../../payment/infrastructure/payment_mock_data.dart';
import '../../infrastructure/delivery_mock_data.dart';

Future<void> main() async {
  setUp(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    await dotenv.load(fileName: ".env");
    await AuthTestSetup.init();
  });

  tearDown(() {
    getIt.reset();
  });
  group('Test Delivery Repository Delivery Http Service', () {
    test(
      'returns self storage response',
      () async {
        // arrange
        AuthTestSetup.setup(selfStoragePaymentJson, 200);
        final repo = getIt<DeliveryRepository>();
        // act
        final response = await repo.bookSelfStorage(
          duration: "2",
          userId: "",
          location: 3,
          paystackResponse: paystackResponse,
        );
        // assert
        return response.fold(
          (l) => expect(l, null),
          (r) => expect(r, paymentResponse),
        );
      },
    );
    test(
      'returns customer to customer response',
      () async {
        // arrange
        AuthTestSetup.setup(bookCustomerToCustomerResponse, 200);
        final repo = getIt<DeliveryRepository>();
        // act
        final response = await repo.bookCustomerToCustomer(
          name: "emem",
          email: "emem@emem",
          location: 4,
          phone: "0805555",
          paystackResponse: paystackResponse,
          userId: mockUser.id!,
        );
        // assert
        return response.fold(
          (l) => expect(l, null),
          (r) => expect(r, paymentResponseCustomer),
        );
      },
    );

    test(
      'returns failure on 400 response',
      () async {
        // arrange
        AuthTestSetup.setup(selfStorageError, 400);
        final repo = getIt<DeliveryRepository>();
        // act
        final response = await repo.bookSelfStorage(
          duration: "2",
          userId: "",
          location: 3,
          paystackResponse: paystackResponse,
        );
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
        AuthTestSetup.setup(getParcelCentersJson, 200);
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
  group('Test Delivery Repository Places Http Service', () {
    test(
      'returns get location result response',
      () async {
        // arrange
        AuthTestSetup.setup(googlePlacesResponse, 200);
        final repo = getIt<DeliveryRepository>();
        // act
        final response = await repo.searchPlaces("adebambo");
        // assert
        return response.fold(
          (l) => expect(l, null),
          (r) => expect(r, locationResult),
        );
      },
    );
  });
}
