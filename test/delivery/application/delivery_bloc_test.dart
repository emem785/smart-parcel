import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:smart_parcel/delivery/application/delivery_bloc/delivery_bloc.dart';
import 'package:smart_parcel/inject_conf.dart';

import '../../common/infrastructure/setup_tests.dart';
import '../infrastructure/delivery_mock_data.dart';

class MockContext extends Mock implements BuildContext {}

void main() {
  setUp(() async {
    await TestSetup.init();
  });

  tearDown(() {
    getIt.reset();
  });
  group('Delivery Bloc getLocation event', () {
    blocTest<DeliveryBloc, DeliveryState>(
      '',
      setUp: () => TestSetup.setup(null, null),
      build: () => getIt<DeliveryBloc>(),
      act: (bloc) =>
          bloc.add(DeliveryEvent.selectLocation(MockContext(), (v) {})),
      wait: const Duration(milliseconds: 300),
    );
  });
  group('Delivery Bloc getParcelCenter event', () {
    blocTest<DeliveryBloc, DeliveryState>(
      'return List of Center Districts',
      setUp: () => TestSetup.setup(getParcelCentersJson, 200),
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
      setUp: () => TestSetup.setup(selfStorageError, 400),
      build: () => getIt<DeliveryBloc>(),
      act: (bloc) => bloc.add(const DeliveryEvent.getParcelCenters()),
      wait: const Duration(milliseconds: 300),
      expect: () => [
        const DeliveryState.loading(),
        const DeliveryState.error(selfStorageFailure),
      ],
    );
  });
}
