import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_parcel/parcels/application/parcels_bloc/parcel_bloc.dart';
import 'package:smart_parcel/parcels/domain/repositories/parcel_repository.dart';

class GetHistoryUseCase {
  final ParcelRepository parcelRepository;

  GetHistoryUseCase(this.parcelRepository);
  FutureOr<void> call(GetParcelHistory event, Emitter<ParcelState> emit) async {
    emit(const ParcelLoading());
    final response = await parcelRepository.getParcelHistory();
    return response.fold(
      (l) => emit(ParcelState.error(l)),
      (r) => emit(ParcelState.historyRetreived(r)),
    );
  }
}
