part of 'payment_bloc.dart';

@immutable
@freezed
class PaymentEvent with _$PaymentEvent {
  const factory PaymentEvent.makePayment({
    required BuildContext context,
    required int amount,
  }) = MakePayment;
}
