import 'package:smart_parcel/delivery/application/providers/delivery_view_model.dart';
import 'package:smart_parcel/delivery/domain/models/customer_form.dart';
import 'package:smart_parcel/delivery/domain/models/sizes/box_size.dart';

class BookingInformation {
  final Booking booking;
  final String reference;
  final int locationId;
  final bool saveCard;
  final String duration;
  final CustomerForm customerForm;
  final BoxSize boxSize;

  BookingInformation({
    required this.booking,
    required this.reference,
    required this.locationId,
    required this.saveCard,
    required this.duration,
    required this.customerForm,
    required this.boxSize,
  });
}
