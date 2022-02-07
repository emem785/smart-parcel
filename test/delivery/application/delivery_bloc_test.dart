import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smart_parcel/common/presentation/routing/router.gr.dart';
import 'package:smart_parcel/delivery/application/delivery_bloc/delivery_bloc.dart';
import 'package:smart_parcel/delivery/application/providers/delivery_view_model.dart';
import 'package:smart_parcel/delivery/domain/models/booking_info.dart';
import 'package:smart_parcel/delivery/domain/models/customer_form.dart';
import 'package:smart_parcel/delivery/domain/models/sizes/box_size.dart';
import 'package:smart_parcel/inject_conf.dart';

import '../../common/infrastructure/common_mock_data.dart';
import '../../common/infrastructure/setup_auth_tests.dart';
import '../infrastructure/delivery_mock_data.dart';

class MockContext extends Mock implements BuildContext {}

void main() {
  late ProccedToBooking proceedToBookingEvent;
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
    proceedToBookingEvent = ProccedToBooking(
      context: MockContext(),
      bookingInformation: bookingInfo,
    );
  });

  tearDown(() {
    getIt.reset();
  });
  group('Delivery Bloc getLocation event', () {
    blocTest<DeliveryBloc, DeliveryState>(
      '',
      setUp: () => AuthTestSetup.setup(null, null),
      build: () => getIt<DeliveryBloc>(),
      act: (bloc) => bloc.add(DeliveryEvent.selectLocation(
        MockContext(),
        const SelfStoragePaymentRoute(),
      )),
      wait: const Duration(milliseconds: 300),
    );
  });
  group('Delivery Bloc getParcelCenter event', () {
    blocTest<DeliveryBloc, DeliveryState>(
      'return List of Center Districts',
      setUp: () => AuthTestSetup.setup(getParcelCentersJson, 200),
      build: () => getIt<DeliveryBloc>(),
      act: (bloc) => bloc.add(const DeliveryEvent.getParcelCenters()),
      wait: const Duration(milliseconds: 300),
      expect: () => [
        const DeliveryState.loading(),
        const DeliveryState.centersRetreived(mockCenterDistricts),
      ],
    );
    blocTest<DeliveryBloc, DeliveryState>(
      'return failure on 400 ',
      setUp: () => AuthTestSetup.setup(selfStorageError, 400),
      build: () => getIt<DeliveryBloc>(),
      act: (bloc) => bloc.add(const DeliveryEvent.getParcelCenters()),
      wait: const Duration(milliseconds: 300),
      expect: () => [
        const DeliveryState.loading(),
        const DeliveryState.error(selfStorageFailure),
      ],
    );
  });
  group('Proceed to payment event', () {
    blocTest<DeliveryBloc, DeliveryState>(
        'sends a self storage request if the route is selfstorage payment',
        setUp: () =>
            AuthTestSetup.setup(getParcelCentersJson, 200, userStringResponse),
        build: () => getIt<DeliveryBloc>(),
        act: (bloc) => bloc.add(proceedToBookingEvent),
        wait: const Duration(milliseconds: 300),
        verify: (_) => verify(() => getIt<http.Client>().send(any())));
    blocTest<DeliveryBloc, DeliveryState>(
        'user repository get user from storage is called',
        setUp: () =>
            AuthTestSetup.setup(selfStorageJson, 200, userStringResponse),
        build: () => getIt<DeliveryBloc>(),
        act: (bloc) => bloc.add(proceedToBookingEvent),
        wait: const Duration(milliseconds: 300),
        verify: (_) =>
            verify(() => getIt<SharedPreferences>().getString(any())));
    blocTest<DeliveryBloc, DeliveryState>(
      'emits booking finished state when proceeding to self storage payment page',
      setUp: () =>
          AuthTestSetup.setup(selfStorageJson, 200, userStringResponse),
      build: () => getIt<DeliveryBloc>(),
      act: (bloc) => bloc.add(proceedToBookingEvent),
      wait: const Duration(milliseconds: 300),
      expect: () => [
        const DeliveryState.loading(),
        DeliveryState.bookingFinished(selfStorageBookingResponse.data),
      ],
    );
    blocTest<DeliveryBloc, DeliveryState>(
      'emits booking finished state when proceeding to CustomerToCustomerPaymentRoute',
      setUp: () => AuthTestSetup.setup(
          bookCustomerToCustomerJson, 200, userStringResponse),
      build: () => getIt<DeliveryBloc>(),
      act: (bloc) => bloc.add(proceedToBookingEvent),
      wait: const Duration(milliseconds: 300),
      expect: () => [
        const DeliveryState.loading(),
        DeliveryState.bookingFinished(customerToCustomerResponse.data)
      ],
    );
    blocTest<DeliveryBloc, DeliveryState>(
      'emits booking finished state when proceeding to CustomerToCourier PaymentRoute',
      setUp: () => AuthTestSetup.setup(
          bookCustomerToCourierJson, 200, userStringResponse),
      build: () => getIt<DeliveryBloc>(),
      act: (bloc) => bloc.add(proceedToBookingEvent),
      wait: const Duration(milliseconds: 300),
      expect: () => [
        const DeliveryState.loading(),
        DeliveryState.bookingFinished(customerToCourierResponse.data)
      ],
    );
  });

  group('Search Event', () {
    blocTest<DeliveryBloc, DeliveryState>(
      'emits booking places retreived state when searching for booking places',
      setUp: () => AuthTestSetup.setup(googlePlacesResponse, 200),
      build: () => getIt<DeliveryBloc>(),
      act: (bloc) => bloc.add(const DeliveryEvent.search("")),
      wait: const Duration(milliseconds: 300),
      expect: () => [
        const DeliveryState.loading(),
        const DeliveryState.placeRetrieved(locationResult)
      ],
    );
  });
}
