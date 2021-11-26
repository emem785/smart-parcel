import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smart_parcel/common/presentation/routing/router.gr.dart';
import 'package:smart_parcel/delivery/application/delivery_bloc/delivery_bloc.dart';
import 'package:smart_parcel/delivery/domain/models/customer_form.dart';
import 'package:smart_parcel/inject_conf.dart';

import '../../common/infrastructure/common_mock_data.dart';
import '../../common/infrastructure/setup_auth_tests.dart';
import '../../payment/infrastructure/payment_mock_data.dart';
import '../infrastructure/delivery_mock_data.dart';

class MockContext extends Mock implements BuildContext {}

void main() {
  setUp(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    await dotenv.load(fileName: ".env");
    await AuthTestSetup.init();
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
        act: (bloc) => bloc.add(DeliveryEvent.proceedToPayment(
              routeInfo: const SelfStoragePaymentRoute(),
              customerForm: null,
              duration: "3",
              locationId: 4,
              context: MockContext(),
              paystackResponse: paystackResponse,
            )),
        wait: const Duration(milliseconds: 300),
        verify: (_) => verify(() => getIt<http.Client>().send(any())));
    blocTest<DeliveryBloc, DeliveryState>(
        'user repository get user from storage is called',
        setUp: () =>
            AuthTestSetup.setup(selfStorageJson, 200, userStringResponse),
        build: () => getIt<DeliveryBloc>(),
        act: (bloc) => bloc.add(DeliveryEvent.proceedToPayment(
              routeInfo: const SelfStoragePaymentRoute(),
              customerForm: null,
              duration: "3",
              locationId: 4,
              context: MockContext(),
              paystackResponse: paystackResponse,
            )),
        wait: const Duration(milliseconds: 300),
        verify: (_) =>
            verify(() => getIt<SharedPreferences>().getString(any())));
    blocTest<DeliveryBloc, DeliveryState>(
      'emits booking finished state when proceeding to self storage payment page',
      setUp: () =>
          AuthTestSetup.setup(selfStoragePaymentJson, 200, userStringResponse),
      build: () => getIt<DeliveryBloc>(),
      act: (bloc) => bloc.add(DeliveryEvent.proceedToPayment(
          routeInfo: const SelfStoragePaymentRoute(),
          duration: "3",
          customerForm: null,
          paystackResponse: paystackResponse,
          locationId: 4,
          context: MockContext())),
      wait: const Duration(milliseconds: 300),
      expect: () => [
        const DeliveryState.loading(),
        DeliveryState.bookingFinished(paymentResponse.data)
      ],
    );
    blocTest<DeliveryBloc, DeliveryState>(
      'emits booking finished state when proceeding to CustomerToCustomerPaymentRoute',
      setUp: () =>
          AuthTestSetup.setup(selfStorageJson, 200, userStringResponse),
      build: () => getIt<DeliveryBloc>(),
      act: (bloc) => bloc.add(DeliveryEvent.proceedToPayment(
        paystackResponse: paystackResponse,
        routeInfo: const CustomerToCustomerPaymentRoute(),
        duration: null,
        customerForm: const CustomerForm.empty(),
        locationId: 4,
        context: MockContext(),
      )),
      wait: const Duration(milliseconds: 300),
      expect: () => [
        const DeliveryState.loading(),
        DeliveryState.bookingFinished(paymentResponse.data)
      ],
    );
  });
}
