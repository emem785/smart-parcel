import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_paystack/flutter_paystack.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';
import 'package:smart_parcel/inject_conf.dart';
import 'package:smart_parcel/payment/application/payment_bloc/payment_bloc.dart';

import '../../common/infrastructure/setup_payment_tests.dart';
import '../../delivery/application/delivery_bloc_test.dart';
import '../infrastructure/payment_mock_data.dart';

void main() {
  late CheckoutResponse checkoutResponse;
  setUp(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    checkoutResponse = CheckoutResponse(
        message: "",
        reference: "",
        account: null,
        card: PaymentCard(
            cvc: null, expiryMonth: null, expiryYear: null, number: null),
        status: false,
        method: CheckoutMethod.selectable,
        verify: true);

    await dotenv.load(fileName: ".env");
    await PaymentSetupTest.init();
  });

  tearDown(() {
    getIt.reset();
  });
  group('Auth Bloc Make Payment Event', () {
    blocTest<PaymentBloc, PaymentState>(
      'calls paytack checkout function',
      setUp: () => PaymentSetupTest.setupPayment(
          paystackJson, 200, null, checkoutResponse),
      build: () => getIt<PaymentBloc>(),
      act: (bloc) => bloc
          .add(PaymentEvent.makePayment(context: MockContext(), amount: 10000)),
      wait: const Duration(milliseconds: 300),
      verify: (_) => verify(() => getIt<PaystackPlugin>()
          .checkout(any(), charge: any(named: "charge"))),
    );
    blocTest<PaymentBloc, PaymentState>('calls http request to paystack api',
        setUp: () => PaymentSetupTest.setupPayment(
            paystackJson, 200, null, checkoutResponse),
        build: () => getIt<PaymentBloc>(),
        act: (bloc) => bloc.add(
            PaymentEvent.makePayment(context: MockContext(), amount: 10000)),
        wait: const Duration(milliseconds: 300),
        verify: (_) => verify(() => getIt<http.Client>().send(any())));
  });
}
