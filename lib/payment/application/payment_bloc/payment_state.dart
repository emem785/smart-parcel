part of 'payment_bloc.dart';

@immutable
@freezed
class PaymentState with _$PaymentState {
  const factory PaymentState.initial() = PaymentInitial;
  const factory PaymentState.loading() = PaymentLoading;
  const factory PaymentState.error(Failure failure) = PaymentError;
  const factory PaymentState.paymentSuccessful(
    String message,
    PaystackResponse paystackResponse,
  ) = PaymentSuccessful;
}
