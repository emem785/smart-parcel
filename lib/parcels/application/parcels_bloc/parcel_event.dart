part of 'parcel_bloc.dart';

@immutable
@freezed
class ParcelEvent with _$ParcelEvent {
  const factory ParcelEvent.getHistory() = GetParcelHistory;
}
