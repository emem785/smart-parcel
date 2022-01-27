import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:smart_parcel/common/presentation/routing/router.gr.dart';
import 'package:smart_parcel/common/utils/constants.dart';
import 'package:smart_parcel/delivery/domain/models/center.dart';
import 'package:smart_parcel/delivery/domain/models/customer_form.dart';
import 'package:smart_parcel/payment/domain/models/bank_card.dart';

enum Booking { selfStorage, customer, courier }

class DeliveryViewModel with ChangeNotifier {
  Booking? _booking;
  String? _duration;
  CustomerForm? _customerForm;
  ParcelCenter? _parcelCenter;
  BankCard? _bankCard;

  Booking get booking => _booking ?? Booking.selfStorage;
  PageRouteInfo<dynamic> get routeInfo => getRoute();
  PageRouteInfo<dynamic> get routeInfoPayment => getPaymentRoute();
  int get routeAmount => getPaymentAmount();
  String get duration => _duration ?? '';
  ParcelCenter get parcelCenter => _parcelCenter ?? ParcelCenter.empty();
  CustomerForm get customerForm => _customerForm ?? const CustomerForm.empty();
  BankCard? get bankCard => _bankCard;

  setDuration(String duration) {
    _duration = duration;
    notifyListeners();
  }

  setBooking(Booking booking) {
    _booking = booking;
    notifyListeners();
  }

  setCustomerForm(CustomerForm customerForm) {
    _customerForm = customerForm;
    notifyListeners();
  }

  setParcelCenter(ParcelCenter parcelCenter) {
    _parcelCenter = parcelCenter;
    notifyListeners();
  }

  setBankCard(BankCard bankCard) {
    _bankCard = bankCard;
    notifyListeners();
  }

  PageRouteInfo<dynamic> getPaymentRoute() {
    switch (_booking) {
      case Booking.selfStorage:
        return const SelfStoragePaymentRoute();
      case Booking.customer:
        return const CustomerToCustomerPaymentRoute();
      default:
        return const CustomerToCourierPaymentRoute();
    }
  }

  PageRouteInfo<dynamic> getRoute() {
    switch (_booking) {
      case Booking.selfStorage:
        return const ChooseDurationRoute();
      case Booking.customer:
        return const ChooseDurationRoute();
      default:
        return const CustomerToCourierRoute();
    }
  }

  int getPaymentAmount() {
    switch (_booking) {
      case Booking.selfStorage:
        return Constants.selfStoragePrice;
      case Booking.customer:
        return Constants.customerCustomerPrice;
      default:
        return Constants.customerCourierPrice;
    }
  }
}
