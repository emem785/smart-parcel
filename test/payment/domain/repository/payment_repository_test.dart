import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_paystack/flutter_paystack.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:smart_parcel/inject_conf.dart';
import 'package:smart_parcel/payment/domain/repositories/payment_repository.dart';

import '../../../auth/infrastructure/auth_mock_data.dart';
import '../../../common/infrastructure/setup_payment_tests.dart';
import '../../../delivery/application/delivery_bloc_test.dart';
import '../../infrastructure/payment_mock_data.dart';

Future<void> main() async {
  late CheckoutResponse checkoutResponse;
  setUp(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    await dotenv.load(fileName: ".env");
    await PaymentSetupTest.init();
    checkoutResponse = CheckoutResponse(
        message: "",
        reference: "",
        account: null,
        card: PaymentCard(
            cvc: null, expiryMonth: null, expiryYear: null, number: null),
        status: false,
        method: CheckoutMethod.selectable,
        verify: true);
  });

  tearDown(() {
    getIt.reset();
  });
  group('Test Payment Repository Payment Interface', () {
    test(
      'returns payment response',
      () async {
        // arrange
        PaymentSetupTest.setupPayment(null, null, null, checkoutResponse);
        final repo = getIt<PaymentRepository>();
        // act
        final response = await repo.makePayment(
          context: MockContext(),
          email: mockEmail,
          amount: 1000,
          paystackResponse: paystackResponse,
        );
        // assert
        expect(response, checkoutResponse);
      },
    );
  });
  group('Test Payment Repository Payment Http Service', () {
    test(
      'returns payment response',
      () async {
        // arrange
        PaymentSetupTest.setupPayment(null, null, null, checkoutResponse);
        final repo = getIt<PaymentRepository>();
        // act
        final response = await repo.makePayment(
          paystackResponse: paystackResponse,
          context: MockContext(),
          email: mockEmail,
          amount: 1000,
        );
        // assert
        expect(response, checkoutResponse);
      },
    );
    test(
      'request to initialize payment returns paystack response on 2xx',
      () async {
        // arrange
        PaymentSetupTest.setupPayment(
            paystackJson, 200, null, checkoutResponse);
        final repo = getIt<PaymentRepository>();
        // act
        final response = await repo.initializePayment(
          email: mockEmail,
          amount: 1000,
        );
        // assert
        return response.fold(
          (l) => expect(l, null),
          (r) => expect(r, paystackResponse),
        );
      },
    );
    test(
      'request to initialize payment returns 4xx error response',
      () async {
        // arrange
        PaymentSetupTest.setupPayment(
            paystackJson, 400, null, checkoutResponse);
        final repo = getIt<PaymentRepository>();
        // act
        final response = await repo.initializePayment(
          email: mockEmail,
          amount: 1000,
        );
        // assert
        return response.fold(
          (l) => expect(l, paystackFailure),
          (r) => expect(r, null),
        );
      },
    );
  });
}
