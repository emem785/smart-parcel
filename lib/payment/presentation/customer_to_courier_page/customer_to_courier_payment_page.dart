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
import 'package:smart_parcel/delivery/application/delivery_bloc/delivery_bloc.dart';
import 'package:smart_parcel/delivery/application/providers/delivery_view_model.dart';
import 'package:smart_parcel/inject_conf.dart';
import 'package:smart_parcel/payment/application/payment_bloc/payment_bloc.dart';

class CustomerToCourierPaymentPage extends StatelessWidget {
  const CustomerToCourierPaymentPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<DeliveryBloc>()),
        BlocProvider(create: (_) => getIt<PaymentBloc>()),
      ],
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
    final paymentBloc = context.read<PaymentBloc>();
    final deliveryBloc = context.read<DeliveryBloc>();
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: BlocListener<DeliveryBloc, DeliveryState>(
            listener: (context, state) {
              state.maybeMap(
                orElse: () => 1,
                error: (v) => deliveryBloc.deliveryUseCases.showErrorUseCase(
                    context: context, message: v.failure.message),
                bookingFinished: (v) => context.router.pushAndPopUntil(
                  ReceiptRoute(paymentData: v.paymentData),
                  predicate: (route) => false,
                ),
              );
            },
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
        ),
        BlocConsumer<PaymentBloc, PaymentState>(
          listener: (context, state) {
            state.maybeMap(
                orElse: () => 1,
                error: (v) => paymentBloc.paymentUseCases.showErrorUseCase(
                    context: context, message: v.failure.message),
                paymentSuccessful: (v) {
                  final deliveryViewModel = context.read<DeliveryViewModel>();
                  deliveryBloc.add(DeliveryEvent.proceedToPayment(
                    context: context,
                    routeInfo: deliveryViewModel.routeInfo,
                    paystackResponse: v.paystackResponse,
                    locationId: deliveryViewModel.locationId,
                    duration: deliveryViewModel.duration,
                    customerForm: deliveryViewModel.customerForm,
                  ));
                });
          },
          builder: (context, state) {
            return state.maybeMap(
              orElse: () => LayoutConstants.padButton(ElevatedButton(
                onPressed: () {
                  paymentBloc.add(
                      PaymentEvent.makePayment(context: context, amount: 1000));
                },
                child: const Text("Pay Now"),
              )),
              loading: (v) => CommonWidgets.loading(),
            );
          },
        ),
        const Spacer(),
        BlocBuilder<DeliveryBloc, DeliveryState>(
          builder: (context, state) {
            return state.maybeMap(
              orElse: () => const SizedBox(height: 5),
              loading: (_) => const LinearProgressIndicator(
                backgroundColor: Color(0xFFFAFAFA),
              ),
            );
          },
        ),
      ],
    );
  }
}
