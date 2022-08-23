part of 'payment_cubit.dart';

@freezed
class PaymentState with _$PaymentState {
  const factory PaymentState.initial() = _Initial;
  const factory PaymentState.loading() = _Loading;
  const factory PaymentState.error(dynamic err) = _Error;
  const factory PaymentState.success() = _Success;
  const factory PaymentState.successPageBankResponse(
      PageBankResponse response) = _SuccessPageBankResponse;
  const factory PaymentState.successBankResponse(BankResponse response) =
      _SuccessBankResponse;
  const factory PaymentState.successPagePaymentResponse(
      PagePaymentResponse response) = _SuccessPagePaymentResponse;
  const factory PaymentState.successPaymentResponse(PaymentResponse response) =
      _SuccessPaymentResponse;
}
