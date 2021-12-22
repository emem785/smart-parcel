import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:smart_parcel/common/presentation/routing/router.gr.dart';
import 'package:smart_parcel/delivery/domain/models/customer_form.dart';

class DeliveryViewModel with ChangeNotifier {
  PageRouteInfo<dynamic>? _routeInfo;
  String? _duration;
  CustomerForm? _customerForm;
  int? _locationId;

  PageRouteInfo<dynamic> get routeInfo =>
      _routeInfo ?? const SelfStoragePaymentRoute();
  String get duration => _duration ?? '';
  int get locationId => _locationId ?? 0;
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

  setLocationId(int locationId) {
    _locationId = locationId;
    notifyListeners();
  }
}
