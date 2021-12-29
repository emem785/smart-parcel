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
import 'package:smart_parcel/payment/domain/models/paystack_response.dart';

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
    required PaystackResponse paystackResponse,
    required int location,
  }) {
    final Map<String, dynamic> body = {
      "reference": paystackResponse.data.reference,
      "duration": duration,
      "status": "pending",
      "user": userId,
      "location": location,
    };
    return postDataAuth(deliveryHttpService.bookSelfStorage, body);
  }

  SingleResponse<PaymentResponse> bookCustomerToCustomer({
    required CustomerForm customerForm,
    required PaystackResponse paystackResponse,
    required int location,
  }) {
    final Map<String, dynamic> body = {
      "reference": paystackResponse.data.reference,
      "location": location,
    };
    body.addAll(customerForm.toMap());

    print(body);

    return postDataAuth(deliveryHttpService.bookCustomerToCustomer, body);
  }

  SingleResponse<PaymentResponse> bookCustomerToCourier({
    required CustomerForm customerForm,
    required String city,
    required PaystackResponse paystackResponse,
    required int location,
  }) {
    final Map<String, dynamic> body = {
      "reference": paystackResponse.data.reference,
      "location": location,
      "city": city
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
