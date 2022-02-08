import 'package:auto_route/auto_route.dart';
import 'package:smart_parcel/common/presentation/routing/appbar_name.dart';

extension RoutingExtension on TabsRouter {
  void setActiveIndexReset(int index, {bool notify = true}) {
    for (var i = 0; i <= 3; i++) {
      stackRouterOfIndex(i)?.popUntil((route) => route.isFirst);
    }
    setActiveIndex(index);
  }

  String getRouteName() {
    final routeName = stackRouterOfIndex(activeIndex)?.current.name ?? "Route";
    return routeToAppbarName(routeName);
  }

  String routeToAppbarName(String name) {
    return GetAppBarName().call(name);
  }
}
