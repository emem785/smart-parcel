part of 'delivery_bloc.dart';

@immutable
@freezed
class DeliveryEvent with _$DeliveryEvent {
  const factory DeliveryEvent.selectLocation(
    BuildContext context,
    PageRouteInfo routeInfo,
  ) = SelectLocation;
  const factory DeliveryEvent.proceedToPayment({
    required BuildContext context,
    required PageRouteInfo routeInfo,
    required PaystackResponse paystackResponse,
    required int locationId,
    required String? duration,
    required CustomerForm? customerForm,
  }) = ProccedToPayment;
  const factory DeliveryEvent.search(String query) = Search;
  const factory DeliveryEvent.getParcelCenters() = GetParcelCenters;
  const factory DeliveryEvent.openUrl(String url) = OpenUrl;
}
