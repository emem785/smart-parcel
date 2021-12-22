import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:smart_parcel/common/presentation/routing/router.gr.dart';
import 'package:smart_parcel/common/presentation/widgets/common_widgets.dart';
import 'package:smart_parcel/common/theme.dart';
import 'package:smart_parcel/common/utils/constants.dart';
import 'package:smart_parcel/inject_conf.dart';
import 'package:smart_parcel/payment/application/payment_bloc/payment_bloc.dart';
import 'package:smart_parcel/payment/domain/models/payment_data.dart';

class ReceiptPage extends StatelessWidget {
  final PaymentData paymentData;
  const ReceiptPage({
    Key? key,
    required this.paymentData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<PaymentBloc>(),
      child: SelfStoragePayment(paymentData: paymentData),
    );
  }
}

class SelfStoragePayment extends HookWidget {
  final PaymentData paymentData;
  const SelfStoragePayment({
    Key? key,
    required this.paymentData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final paymentBloc = context.read<PaymentBloc>();
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              LayoutConstants.sizeBox(context, 100),
              SvgPicture.asset("assets/images/success.svg"),
              LayoutConstants.sizeBox(context, 32),
              Text("Success!", style: GlobalTheme.textTheme(context).headline6),
              LayoutConstants.sizeBox(context, 8),
              const Text(
                "You may proceed to the SmartParcel Locker",
                textAlign: TextAlign.center,
              ),
              Text.rich(
                TextSpan(
                  text: "Your drop-off code is ",
                  children: [
                    TextSpan(
                      text: paymentData.dropOff,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: GlobalTheme.primaryColor,
                      ),
                    )
                  ],
                ),
              ),
              Text.rich(
                TextSpan(text: "Your pick-up code is ", children: [
                  TextSpan(
                    text: paymentData.pickUp,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFF29E25),
                    ),
                  )
                ]),
              ),
              LayoutConstants.sizeBox(context, 54)
            ],
          ),
        ),
        BlocConsumer<PaymentBloc, PaymentState>(
          listener: (context, state) {
            state.maybeMap(
              orElse: () => 1,
              error: (v) => paymentBloc.paymentUseCases.showErrorUseCase(
                  context: context, message: v.failure.message),
            );
          },
          builder: (context, state) {
            return state.maybeMap(
              orElse: () => LayoutConstants.padButton(ElevatedButton(
                onPressed: () {
                  paymentBloc
                      .add(PaymentEvent.openMap(paymentData.location.address));
                },
                child: const Text("Open In Map"),
              )),
              loading: (v) => CommonWidgets.loading(),
            );
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: LayoutConstants.padButton(ElevatedButton(
            onPressed: () {
              context.router.popUntil(
                (route) => route.settings.name == DashboardRoute.name,
              );
            },
            child: const Text("Done"),
          )),
        ),
      ],
    );
  }
}
