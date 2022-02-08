import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:smart_parcel/common/domain/models/user_entitiy.dart';
import 'package:smart_parcel/inject_conf.dart';
import 'package:smart_parcel/payment/application/payment_bloc/payment_bloc.dart';

import '../../common/infrastructure/common_mock_data.dart';
import '../../common/infrastructure/setup_payment_tests.dart';
import '../infrastructure/payment_mock_data.dart';

void main() {
  late UserEntity userEntity;
  setUp(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    userEntity = UserEntity(
        uid: "",
        firstName: "",
        lastName: "emem",
        email: "emem@emem.com",
        phone: "0909839838");
    await dotenv.load(fileName: ".env");
    await PaymentSetupTest.init();
  });

  tearDown(() {
    getIt.reset();
  });

  group('On get Card Event', () {
    blocTest<PaymentBloc, PaymentState>(
      'emits booking ',
      setUp: () => PaymentSetupTest.setupPayment(getCardsJson, 200),
      build: () => getIt<PaymentBloc>(),
      act: (bloc) => bloc.add(const PaymentEvent.getCards()),
      wait: const Duration(milliseconds: 300),
      expect: () => [
        const PaymentState.loading(),
        PaymentState.cardsRetreived(cardResponse.data.savedCards),
      ],
    );
  });

  group('On charge authCode Event ', () {
    blocTest<PaymentBloc, PaymentState>(
      'emits booking card charged',
      setUp: () {
        PaymentSetupTest.setupPayment(chargeCardJson, 200, userStringResponse);
      },
      build: () => getIt<PaymentBloc>(),
      act: (bloc) => bloc
          .add(const PaymentEvent.chargeAuthCode(authCode: "", amount: 20000)),
      wait: const Duration(milliseconds: 300),
      expect: () => [
        const PaymentState.loading(),
        const PaymentState.cardCharged(
            "Transaction Completed Successfully", ""),
      ],
    );
  });

  group('On delete card Event ', () {
    blocTest<PaymentBloc, PaymentState>(
      'emits card deleted state',
      setUp: () => PaymentSetupTest.setupPayment(null, 200),
      build: () => getIt<PaymentBloc>(),
      act: (bloc) => bloc.add(const PaymentEvent.deleteCard(0)),
      wait: const Duration(milliseconds: 300),
      expect: () => [
        const PaymentState.loading(),
        const PaymentState.cardRemoved(),
      ],
    );
  });
}
