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
    required int locationId,
    required String? duration,
    required CustomerForm? customerForm,
  }) = ProccedToPayment;
  const factory DeliveryEvent.getParcelCenters() = GetParcelCenters;
}
