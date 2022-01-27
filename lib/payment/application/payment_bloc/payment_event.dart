part of 'payment_bloc.dart';

@immutable
@freezed
class PaymentEvent with _$PaymentEvent {
  const factory PaymentEvent.makePayment({
    required BuildContext context,
    required int amount,
  }) = MakePayment;
  const factory PaymentEvent.getCards() = GetCards;
  const factory PaymentEvent.chargeAuthCode({
    required String authCode,
    required int amount,
  }) = ChargeAuthCode;
  const factory PaymentEvent.openMap(String address) = OpenMap;
}
