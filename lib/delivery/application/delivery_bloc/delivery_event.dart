part of 'delivery_bloc.dart';

@immutable
@freezed
class DeliveryEvent with _$DeliveryEvent {
  const factory DeliveryEvent.selectLocation(
    BuildContext context,
    PageRouteInfo routeInfo,
  ) = SelectLocation;
  const factory DeliveryEvent.proceedToBooking({
    required BuildContext context,
    required Booking booking,
    required String reference,
    required int locationId,
    required bool saveCard,
    required String? duration,
    required CustomerForm? customerForm,
  }) = ProccedToBooking;
  const factory DeliveryEvent.search(String query) = Search;
  const factory DeliveryEvent.getParcelCenters() = GetParcelCenters;
  const factory DeliveryEvent.openUrl(String url) = OpenUrl;
}
