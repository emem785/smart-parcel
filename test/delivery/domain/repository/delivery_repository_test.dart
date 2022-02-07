import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:smart_parcel/delivery/application/providers/delivery_view_model.dart';
import 'package:smart_parcel/delivery/domain/models/booking_info.dart';
import 'package:smart_parcel/delivery/domain/models/customer_form.dart';
import 'package:smart_parcel/delivery/domain/models/sizes/box_size.dart';
import 'package:smart_parcel/delivery/domain/repositories/delivery_repository.dart';
import 'package:smart_parcel/inject_conf.dart';

import '../../../common/infrastructure/setup_auth_tests.dart';
import '../../infrastructure/delivery_mock_data.dart';

Future<void> main() async {
  late BookingInformation bookingInfo;
  setUp(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    await dotenv.load(fileName: ".env");
    await AuthTestSetup.init();
    bookingInfo = BookingInformation(
      booking: Booking.customer,
      reference: "",
      locationId: 0,
      saveCard: false,
      duration: "10",
      customerForm: const CustomerForm.placeholder(),
      boxSize: NullBoxSize(),
    );
  });

  tearDown(() {
    getIt.reset();
  });
  group('Test Delivery Repository Delivery Http Service', () {
    test(
      'returns self storage response',
      () async {
        // arrange
        AuthTestSetup.setup(selfStorageJson, 200);
        final repo = getIt<DeliveryRepository>();
        // act
        final response = await repo.bookSelfStorage(bookingInfo);
        // assert
        return response.fold(
          (l) => expect(l, null),
          (r) => expect(r, selfStorageBookingResponse),
        );
      },
    );
    test(
      'returns customer to customer response',
      () async {
        // arrange
        AuthTestSetup.setup(bookCustomerToCustomerJson, 200);
        final repo = getIt<DeliveryRepository>();
        // act
        final response = await repo.bookCustomerToCustomer(bookingInfo);
        // assert
        return response.fold(
          (l) => expect(l, null),
          (r) => expect(r, customerToCustomerResponse),
        );
      },
    );
    test(
      'returns customer to courier response',
      () async {
        // arrange
        AuthTestSetup.setup(bookCustomerToCourierJson, 200);
        final repo = getIt<DeliveryRepository>();
        // act
        final response = await repo.bookCustomerToCourier(bookingInfo);
        // assert
        return response.fold(
          (l) => expect(l, null),
          (r) => expect(r, customerToCourierResponse),
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
        final response = await repo.bookSelfStorage(bookingInfo);
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
    test(
      'returns get parcel sizes response',
      () async {
        // arrage
        AuthTestSetup.setup(sizesJson, 200);
        final repo = getIt<DeliveryRepository>();
        // act
        final response = await repo.getSizes();
        // assert
        return response.fold(
          (l) => expect(l, null),
          (r) => expect(r, sizesResponse),
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
