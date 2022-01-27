import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:smart_parcel/inject_conf.dart';
import 'package:smart_parcel/payment/domain/repositories/payment_repository.dart';

import '../../../common/infrastructure/setup_auth_tests.dart';
import '../../infrastructure/payment_mock_data.dart';

Future<void> main() async {
  setUp(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    await dotenv.load(fileName: ".env");
    await AuthTestSetup.init();
  });

  tearDown(() {
    getIt.reset();
  });
  group('Test Payment Repository Payment Interface', () {
    test(
      'returns get get cards response',
      () async {
        // arrange
        AuthTestSetup.setup(getCardsJson, 200);
        final repo = getIt<PaymentRepository>();
        // act
        final response = await repo.getCards();
        // assert
        return response.fold(
          (l) => expect(l, null),
          (r) => expect(r, cardResponse),
        );
      },
    );
  });

  test(
    'returns get charge auth code response',
    () async {
      // arrange
      AuthTestSetup.setup(chargeCardJson, 200);
      final repo = getIt<PaymentRepository>();
      // act
      final response =
          await repo.chargeAuthCode(authCode: "", amount: 20000, email: "");
      // assert
      return response.fold(
        (l) => expect(l, null),
        (r) => expect(r, chargeResponse),
      );
    },
  );
}
