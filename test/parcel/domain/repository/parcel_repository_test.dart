import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:smart_parcel/inject_conf.dart';
import 'package:smart_parcel/parcels/domain/repositories/parcel_repository.dart';

import '../../../common/infrastructure/setup_auth_tests.dart';
import '../../infrastructure/parcel_mock_data.dart';

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
        AuthTestSetup.setup(getParcelJson2, 200);
        final repo = getIt<ParcelRepository>();
        // act
        final response = await repo.getParcelHistory();
        // assert
        return response.fold(
          (l) => expect(l, null),
          (r) => expect(r, parcelResonse2),
        );
      },
    );
  });
}
