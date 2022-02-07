import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_parcel/common/theme.dart';
import 'package:smart_parcel/delivery/application/providers/delivery_view_model.dart';
import 'package:smart_parcel/delivery/domain/models/sizes/box_size.dart';

class SizeItem extends StatelessWidget {
  final BoxSize boxSize;
  const SizeItem({
    Key? key,
    required this.boxSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deliveryVm = context.read<DeliveryViewModel>();
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: InkWell(
        onTap: () => context.read<DeliveryViewModel>().setBoxSize(boxSize),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(7, 140, 140, 140),
                blurRadius: 8,
                spreadRadius: 7,
                offset: Offset(2, 4),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              onTap: () {
                deliveryVm.setBoxSize(boxSize);
                context.router.push(deliveryVm.getRoute());
              },
              title: Text(
                boxSize.sizeName,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              contentPadding: const EdgeInsets.all(16),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("${boxSize.breadth}cm x ${boxSize.length}cm"),
                  Text(
                    "${boxSize.quantity} available",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: GlobalTheme.primaryColor),
                  ),
                ],
              ),
              trailing: Text(
                "₦${boxSize.price}",
                style: GlobalTheme.getTextTheme()
                    .headline6
                    ?.copyWith(color: GlobalTheme.primaryColor, fontSize: 20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
