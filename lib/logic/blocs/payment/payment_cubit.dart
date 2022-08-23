import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:upnati/logic/models/payment/bank_response.dart';
import 'package:upnati/logic/models/payment/create_bank_payload.dart';
import 'package:upnati/logic/models/payment/order_purchase_payload.dart';
import 'package:upnati/logic/models/payment/page_bank_response.dart';
import 'package:upnati/logic/models/payment/page_payment_response.dart';
import 'package:upnati/logic/models/payment/payment_response.dart';
import 'package:upnati/logic/providers/payment_provider.dart';

part 'payment_state.dart';
part 'payment_cubit.freezed.dart';

@injectable
class PaymentCubit extends Cubit<PaymentState> {
  final PaymentProvider _paymentProvider;
  PaymentCubit(this._paymentProvider) : super(const PaymentState.initial());

  Future<void> getUserBankAccounts({
    required String param,
    required String pageOrder,
    required int size,
    int? page,
  }) async {
    emit(const PaymentState.loading());
    try {
      final response = await _paymentProvider.getUserBankAccounts(
        param: param,
        pageOrder: pageOrder,
        size: size,
        page: page,
      );
      emit(PaymentState.successPageBankResponse(response));
    } catch (e) {
      emit(PaymentState.error(e));
    }
  }

  Future<void> createBankAccount(
    CreateBankPayload payload,
  ) async {
    emit(const PaymentState.loading());
    try {
      final response = await _paymentProvider.createBankAccount(payload);
      emit(PaymentState.successBankResponse(response));
    } catch (e) {
      emit(PaymentState.error(e));
    }
  }

  Future<void> getPayments({
    required String param,
    required String pageOrder,
    required int size,
    int? page,
  }) async {
    emit(const PaymentState.loading());
    try {
      final response = await _paymentProvider.getPayments(
        param: param,
        pageOrder: pageOrder,
        size: size,
        page: page,
      );
      emit(PaymentState.successPagePaymentResponse(response));
    } catch (e) {
      emit(PaymentState.error(e));
    }
  }

  Future<void> createPayment(
    OrderPurchasePayload payload,
  ) async {
    emit(const PaymentState.loading());
    try {
      await _paymentProvider.createPayment(payload);
      emit(const PaymentState.success());
    } catch (e) {
      emit(PaymentState.error(e));
    }
  }

  Future<void> getPaymentsByBankType({
    required String type,
    required String param,
    required String pageOrder,
    required int size,
    int? page,
  }) async {
    emit(const PaymentState.loading());
    try {
      final response = await _paymentProvider.getPaymentsByBankType(
        type: type,
        param: param,
        pageOrder: pageOrder,
        size: size,
        page: page,
      );
      emit(PaymentState.successPagePaymentResponse(response));
    } catch (e) {
      emit(PaymentState.error(e));
    }
  }

  Future<void> getPaymentsByBankTypeAndId({
    required String type,
    required String id,
  }) async {
    emit(const PaymentState.loading());
    try {
      final response = await _paymentProvider.getPaymentsByBankTypeAndId(
        type: type,
        id: id,
      );
      emit(PaymentState.successPaymentResponse(response));
    } catch (e) {
      emit(PaymentState.error(e));
    }
  }
}
