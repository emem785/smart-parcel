part of 'delivery_bloc.dart';

@immutable
@freezed
class DeliveryEvent with _$DeliveryEvent {
  const factory DeliveryEvent.selectLocation(
    BuildContext context,
    Function(PageRouteInfo routeInfo) onRetreived,
  ) = SelectLocation;
  const factory DeliveryEvent.getParcelCenters() = GetParcelCenters;
}
