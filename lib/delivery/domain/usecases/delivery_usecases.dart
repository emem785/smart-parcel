import 'package:injectable/injectable.dart';
import 'package:smart_parcel/common/domain/usecases/base_usecases.dart';
import 'package:smart_parcel/delivery/domain/usecases/choose_duration_usecase.dart';

@injectable
class DeliveryUseCases extends BaseUseCases {
  final ChooseDurationUseCase chooseDurationUseCase;

  DeliveryUseCases({required this.chooseDurationUseCase});
}
