import 'package:flutter/material.dart';
import 'package:flutter_paystack/flutter_paystack.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:smart_parcel/inject_conf.dart';
import 'package:smart_parcel/payment/presentation/self_storage_page/self_storage_payment_page.dart';

import '../../common/infrastructure/setup_payment_tests.dart';
import '../../common/presentation/widget_test_setup.dart';
import '../infrastructure/payment_mock_data.dart';

void main() {
  late CheckoutResponse checkoutResponse;
  setUp(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
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

  tearDown(() async {
    getIt.reset();
  });
  group('On pressing make payment button', () {
    testWidgets(
      "Error produces snackbar",
      (WidgetTester tester) async {
        PaymentSetupTest.setupPayment(
            paystackJson, 400, null, checkoutResponse);
        await tester.pumpWidget(
          WidgetHelper.testableWidgetScaffold(
              child: const SelfStoragePaymentPage()),
        );

        await tester.tap(find.byType(ElevatedButton));
        await tester.pump(const Duration(milliseconds: 450));
        expect(find.byKey(const Key('flushbar')), findsOneWidget);

        await tester.pumpAndSettle();
      },
    );
  });
}
