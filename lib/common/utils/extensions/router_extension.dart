import 'package:auto_route/auto_route.dart';

extension RoutingExtension on TabsRouter {
  void setActiveIndexReset(int index, {bool notify = true}) {
    stackRouterOfIndex(index)?.popUntil((route) => route.isFirst);
    setActiveIndex(index);
  }
}
