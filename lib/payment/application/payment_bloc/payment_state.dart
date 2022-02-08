part of 'payment_bloc.dart';

@immutable
@freezed
class PaymentState with _$PaymentState {
  const factory PaymentState.initial() = PaymentInitial;
  const factory PaymentState.loading() = PaymentLoading;
  const factory PaymentState.error(Failure failure) = PaymentError;
  const factory PaymentState.cardCharged(
    String message,
    String reference,
  ) = CardCharged;
  const factory PaymentState.cardsRetreived(List<BankCard> cards) =
      CardsRetreived;
  const factory PaymentState.cardRemoved() = CardRemoved;
  const factory PaymentState.paymentSuccessful(
    String message,
    String reference,
  ) = PaymentSuccessful;
}
