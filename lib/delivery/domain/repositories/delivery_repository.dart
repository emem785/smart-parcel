import 'package:chopper/chopper.dart';
import 'package:dartz/dartz.dart';
import 'package:smart_parcel/common/domain/interface/common_storage_interface.dart';
import 'package:smart_parcel/common/domain/models/failure.dart';
import 'package:smart_parcel/common/domain/models/user.dart';
import 'package:smart_parcel/common/domain/repositories/base_repository_functions.dart';
import 'package:smart_parcel/delivery/domain/models/center_district.dart';
import 'package:smart_parcel/delivery/domain/models/customer_form.dart';
import 'package:smart_parcel/delivery/domain/models/location_result_response.dart';
import 'package:smart_parcel/delivery/infrastructure/services/delivery_http_service.dart';
import 'package:smart_parcel/payment/domain/models/payment_response.dart';

typedef ListResponse<T> = Future<Either<Failure, List<T>>>;
typedef SingleResponse<T> = Future<Either<Failure, T>>;

class DeliveryRepository {
  final ChopperClient chopperClient;
  final CommonStorageInterface commonStorageInterface;
  late DeliveryHttpService deliveryHttpService;

  DeliveryRepository(this.chopperClient, this.commonStorageInterface) {
    deliveryHttpService = DeliveryHttpService.create(chopperClient);
  }

  SingleResponse<PaymentResponse> bookSelfStorage({
    required String duration,
    required String userId,
    required String reference,
    required int location,
    required bool saveCard,
  }) {
    final Map<String, dynamic> body = {
      "reference": reference,
      "duration": duration,
      "status": "pending",
      "user": userId,
      "location": location,
      "allow_save": saveCard,
    };
    return postDataAuth(deliveryHttpService.bookSelfStorage, body);
  }

  SingleResponse<PaymentResponse> bookCustomerToCustomer({
    required String refrence,
    required int location,
    required bool saveCard,
  }) {
    final Map<String, dynamic> body = {
      "reference": refrence,
      "location": location,
      "allow_save": saveCard,
    };
    body.addAll(const CustomerForm.placeholder().toMap());
    return postDataAuth(deliveryHttpService.bookCustomerToCustomer, body);
  }

  SingleResponse<PaymentResponse> bookCustomerToCourier({
    required CustomerForm customerForm,
    required String city,
    required String reference,
    required int location,
    required bool saveCard,
  }) {
    final Map<String, dynamic> body = {
      "reference": reference,
      "location": location,
      "city": city,
      "allow_save": saveCard,
    };
    body.addAll(customerForm.toMap());

    print(body);
    return postDataAuth(deliveryHttpService.bookCustomerToCourier, body);
  }

  ListResponse<CenterDistrict> getParcelCenters() {
    return getListDataAuth(deliveryHttpService.getParcelCenters);
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
