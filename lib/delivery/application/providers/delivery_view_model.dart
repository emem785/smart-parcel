import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:smart_parcel/common/presentation/routing/router.gr.dart';
import 'package:smart_parcel/delivery/domain/models/center.dart';
import 'package:smart_parcel/delivery/domain/models/customer_form.dart';

class DeliveryViewModel with ChangeNotifier {
  PageRouteInfo<dynamic>? _routeInfo;
  String? _duration;
  CustomerForm? _customerForm;
  ParcelCenter? _parcelCenter;

  PageRouteInfo<dynamic> get routeInfo =>
      _routeInfo ?? const SelfStoragePaymentRoute();
  String get duration => _duration ?? '';
  ParcelCenter get parcelCenter => _parcelCenter ?? ParcelCenter.empty();
  CustomerForm get customerForm => _customerForm ?? const CustomerForm.empty();

  setDuration(String duration) {
    _duration = duration;
    notifyListeners();
  }

  setRouteInfo(PageRouteInfo<dynamic> routeInfo) {
    _routeInfo = routeInfo;
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
}
