import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:smart_parcel/common/theme.dart';
import 'package:smart_parcel/common/utils/constants.dart';
import 'package:smart_parcel/delivery/application/delivery_bloc/delivery_bloc.dart';
import 'package:smart_parcel/inject_conf.dart';

class CustomerToCourierPaymentPage extends StatelessWidget {
  const CustomerToCourierPaymentPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => getIt<DeliveryBloc>(),
      child: const CustomerToCourierPayment(),
    );
  }
}

class CustomerToCourierPayment extends HookWidget {
  const CustomerToCourierPayment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              SvgPicture.asset("assets/images/wallet.svg"),
              Text("Your Bill",
                  style: GlobalTheme.textTheme(context).headline6),
              LayoutConstants.sizeBox(context, 8),
              const Text(
                "Customer - Courier delivery is charged ₦1000 to your location.",
                textAlign: TextAlign.center,
              ),
              LayoutConstants.sizeBox(context, 54)
            ],
          ),
        ),
        LayoutConstants.padButton(ElevatedButton(
          onPressed: () {},
          child: const Text("Pay Now"),
        ))
      ],
    );
  }
}
