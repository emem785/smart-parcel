import 'package:auto_route/auto_route.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:smart_parcel/common/domain/models/failure.dart';
import 'package:smart_parcel/delivery/domain/models/center.dart';
import 'package:smart_parcel/delivery/domain/models/center_district.dart';
import 'package:smart_parcel/delivery/domain/models/customer_form.dart';
import 'package:smart_parcel/delivery/domain/usecases/delivery_usecases.dart';
import 'package:smart_parcel/payment/domain/models/payment_data.dart';
import 'package:smart_parcel/payment/domain/models/paystack_response.dart';

part 'delivery_bloc.freezed.dart';
part 'delivery_event.dart';
part 'delivery_state.dart';

class DeliveryBloc extends Bloc<DeliveryEvent, DeliveryState> {
  final DeliveryUseCases deliveryUseCases;
  DeliveryBloc(this.deliveryUseCases) : super(const DeliveryInitial()) {
    on<GetParcelCenters>(deliveryUseCases.getLocationDistrictUseCase);
    on<ProccedToPayment>(deliveryUseCases.proceedToPaymentUseCase);
  }
}
