import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:smart_parcel/inject_conf.dart';
import 'package:smart_parcel/parcels/application/parcels_bloc/parcel_bloc.dart';

import '../../auth/infrastructure/auth_mock_data.dart';
import '../../common/infrastructure/setup_auth_tests.dart';
import '../infrastructure/parcel_mock_data.dart';

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
  group('Get Parcel Event', () {
    blocTest<ParcelBloc, ParcelState>(
      'emits a history retreived state',
      setUp: () => AuthTestSetup.setup(getParcelJson2, 200),
      build: () => getIt<ParcelBloc>(),
      act: (bloc) => bloc.add(const ParcelEvent.getHistory()),
      wait: const Duration(milliseconds: 300),
      expect: () => [
        const ParcelState.loading(),
        const ParcelState.historyRetreived(parcelResonse2),
      ],
    );
    blocTest<ParcelBloc, ParcelState>(
      'emits a failure respones on 4xx code',
      setUp: () => AuthTestSetup.setup(loginFailureJson, 400),
      build: () => getIt<ParcelBloc>(),
      act: (bloc) => bloc.add(const ParcelEvent.getHistory()),
      wait: const Duration(milliseconds: 300),
      expect: () => [
        const ParcelState.loading(),
        const ParcelState.error(mockLoginFailure),
      ],
    );
  });
}
