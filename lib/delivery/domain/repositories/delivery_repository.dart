import 'package:chopper/chopper.dart';
import 'package:dartz/dartz.dart';
import 'package:smart_parcel/common/domain/interface/common_storage_interface.dart';
import 'package:smart_parcel/common/domain/models/failure.dart';
import 'package:smart_parcel/common/domain/models/user.dart';
import 'package:smart_parcel/common/domain/repositories/base_repository_functions.dart';
import 'package:smart_parcel/delivery/domain/models/booking_info.dart';
import 'package:smart_parcel/delivery/domain/models/center_district.dart';
import 'package:smart_parcel/delivery/domain/models/location_result_response.dart';
import 'package:smart_parcel/delivery/domain/models/sizes_response.dart';
import 'package:smart_parcel/delivery/infrastructure/services/delivery_http_service.dart';
import 'package:smart_parcel/payment/domain/models/booking_response.dart';

typedef ListResponse<T> = Future<Either<Failure, List<T>>>;
typedef SingleResponse<T> = Future<Either<Failure, T>>;

class DeliveryRepository {
  final ChopperClient chopperClient;
  final CommonStorageInterface commonStorageInterface;
  late DeliveryHttpService deliveryHttpService;

  DeliveryRepository(this.chopperClient, this.commonStorageInterface) {
    deliveryHttpService = DeliveryHttpService.create(chopperClient);
  }

  SingleResponse<BookingResponse> bookSelfStorage(
    BookingInformation bookingInformation,
  ) {
    final Map<String, dynamic> body = {
      "reference": bookingInformation.reference,
      "duration": bookingInformation.duration,
      "status": "pending",
      "location": bookingInformation.locationId,
      "allow_save": bookingInformation.saveCard,
      "size": bookingInformation.boxSize.id,
    };
    return postDataAuth(deliveryHttpService.bookSelfStorage, body);
  }

  SingleResponse<BookingResponse> bookCustomerToCustomer(
    BookingInformation bookingInformation,
  ) {
    final Map<String, dynamic> body = {
      "reference": bookingInformation.reference,
      "location": bookingInformation.locationId,
      "allow_save": bookingInformation.saveCard,
      "size": bookingInformation.boxSize.id,
    };
    body.addAll(bookingInformation.customerForm.toMap());
    return postDataAuth(deliveryHttpService.bookCustomerToCustomer, body);
  }

  SingleResponse<BookingResponse> bookCustomerToCourier(
    BookingInformation bookingInformation,
  ) {
    final Map<String, dynamic> body = {
      "reference": bookingInformation.reference,
      "location": bookingInformation.locationId,
      "allow_save": bookingInformation.saveCard,
      "size": bookingInformation.boxSize.id,
    };
    body.addAll(bookingInformation.customerForm.toMap());

    return postDataAuth(deliveryHttpService.bookCustomerToCourier, body);
  }

  ListResponse<CenterDistrict> getParcelCenters() {
    return getListDataAuth(deliveryHttpService.getParcelCenters);
  }

  SingleResponse<SizesResponse> getSizes() {
    return getDataAuth(deliveryHttpService.getSizes);
  }

  SingleResponse<LocationResultResponse> searchPlaces(String query) {
    return getDataPlacesSearch(deliveryHttpService.searchPlaces, query);
  }

  Either<Failure, User> getUserFromStorage() {
    final userOption = commonStorageInterface.getUser();

    return userOption.fold(
      () => const Left(Failure("No User in storage")),
      (a) => right(a),
    );
  }
}
