import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:smart_parcel/common/presentation/routing/router.gr.dart';
import 'package:smart_parcel/delivery/domain/models/customer_form.dart';

class DeliveryViewModel with ChangeNotifier {
  PageRouteInfo<dynamic>? _routeInfo;
  String? _duration;
  CustomerForm? _customerForm;

  PageRouteInfo<dynamic> get routeInfo =>
      _routeInfo ?? SelfStoragePaymentRoute();
  String get duration => _duration ?? '';
  CustomerForm get customerForm => _customerForm ?? CustomerForm.empty();

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
}
