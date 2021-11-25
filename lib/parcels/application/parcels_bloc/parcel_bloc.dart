import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:smart_parcel/common/domain/models/failure.dart';
import 'package:smart_parcel/parcel/domain/models/parcel_response.dart';
import 'package:smart_parcel/parcels/domain/usecases/parcel_usecases.dart';

part 'parcel_bloc.freezed.dart';
part 'parcel_event.dart';
part 'parcel_state.dart';

class ParcelBloc extends Bloc<ParcelEvent, ParcelState> {
  final ParcelUseCases parcelUseCases;
  ParcelBloc(this.parcelUseCases) : super(const ParcelInitial()) {
    on<GetParcelHistory>(parcelUseCases.getHistoryUseCase);
  }
}
