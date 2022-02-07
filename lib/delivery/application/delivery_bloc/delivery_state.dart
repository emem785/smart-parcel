part of 'delivery_bloc.dart';

@immutable
@freezed
class DeliveryState with _$DeliveryState {
  const factory DeliveryState.initial() = DeliveryInitial;
  const factory DeliveryState.loading() = DeliveryLoading;
  const factory DeliveryState.error(Failure failure) = DeliveryError;
  const factory DeliveryState.locationRetrieved(ParcelCenter parcelCenter) =
      LocationRetrieved;
  const factory DeliveryState.placeRetrieved(
      LocationResultResponse locationResultResponse) = PlaceRetrieved;
  const factory DeliveryState.bookingFinished(BookingData bookingData) =
      BookingFinished;
  const factory DeliveryState.centersRetreived(List<CenterDistrict> districts) =
      CentersRetreived;
}
