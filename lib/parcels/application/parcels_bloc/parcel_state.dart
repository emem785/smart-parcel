part of 'parcel_bloc.dart';

@immutable
@freezed
class ParcelState with _$ParcelState {
  const factory ParcelState.initial() = ParcelInitial;
  const factory ParcelState.loading() = ParcelLoading;
  const factory ParcelState.error(Failure failure) = ParcelError;
  const factory ParcelState.historyRetreived(ParcelResponse parcelResponse) =
      HistoryRetreived;
}
