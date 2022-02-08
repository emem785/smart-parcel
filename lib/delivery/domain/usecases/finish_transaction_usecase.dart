import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_parcel/delivery/application/delivery_bloc/delivery_bloc.dart';
import 'package:smart_parcel/delivery/application/providers/delivery_view_model.dart';
import 'package:smart_parcel/delivery/domain/models/booking_info.dart';
import 'package:smart_parcel/delivery/domain/models/sizes/box_size.dart';
import 'package:smart_parcel/payment/domain/models/bank_card.dart';

class FinishTransactionUseCase {
  FinishTransactionUseCase();

  Future<void> call({
    required String reference,
    required BuildContext context,
    required DeliveryBloc deliveryBloc,
    required BankCard bankCard,
  }) async {
    if (bankCard.isEmpty()) {
      _confirmPayStackBooking(reference, context, deliveryBloc);
      return;
    }
    _confirmBankCardBooking(reference, context, deliveryBloc);
  }

  _confirmBankCardBooking(
    String reference,
    BuildContext context,
    DeliveryBloc deliveryBloc,
  ) {
    final deliveryViewModel = context.read<DeliveryViewModel>();

    final bookingInfo = BookingInformation(
      booking: deliveryViewModel.booking,
      reference: reference,
      locationId: deliveryViewModel.parcelCenter.id,
      duration: deliveryViewModel.duration,
      customerForm: deliveryViewModel.customerForm,
      boxSize: deliveryViewModel.boxSize ?? NullBoxSize(),
      saveCard: false,
    );

    deliveryBloc.add(DeliveryEvent.proceedToBooking(
      context: context,
      bookingInformation: bookingInfo,
    ));
  }

  _confirmPayStackBooking(
    String reference,
    BuildContext context,
    DeliveryBloc deliveryBloc,
  ) async {
    final deliveryViewModel = context.read<DeliveryViewModel>();

    final saveCard = await deliveryBloc.deliveryUseCases.showOptionUseCase(
      context: context,
      buttonText: "Yes",
      alternativeButtonText: "No",
      content: "Do you want to save this card ?",
      title: "Save Card",
    );

    final bookingInfo = BookingInformation(
      booking: deliveryViewModel.booking,
      reference: reference,
      locationId: deliveryViewModel.parcelCenter.id,
      duration: deliveryViewModel.duration,
      customerForm: deliveryViewModel.customerForm,
      boxSize: deliveryViewModel.boxSize ?? NullBoxSize(),
      saveCard: saveCard ?? false,
    );

    deliveryBloc.add(DeliveryEvent.proceedToBooking(
      bookingInformation: bookingInfo,
      context: context,
    ));
  }
}
