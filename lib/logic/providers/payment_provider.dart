import 'package:injectable/injectable.dart';
import 'package:upnati/core/config/interceptors.dart';
import 'package:upnati/core/config/utils.dart';
import 'package:upnati/logic/models/payment/bank_response.dart';
import 'package:upnati/logic/models/payment/create_bank_payload.dart';
import 'package:upnati/logic/models/payment/order_purchase_payload.dart';
import 'package:upnati/logic/models/payment/page_bank_response.dart';
import 'package:upnati/logic/models/payment/page_payment_response.dart';
import 'package:upnati/logic/models/payment/payment_response.dart';
import 'package:upnati/logic/services/payment_service.dart';

@lazySingleton
class PaymentProvider {
  late final PaymentService _paymentService;
  final AppInterceptors _interceptors;

  PaymentProvider(this._interceptors) {
    _paymentService = PaymentService(Utils.build(interceptors: [
      _interceptors.errorInterceptor,
      _interceptors.tokenInterceptor,
    ]));
  }

  Future<PageBankResponse> getUserBankAccounts({
    required String param,
    required String pageOrder,
    required int size,
    int? page,
  }) =>
      _paymentService.getUserBankAccounts(
        param: param,
        pageOrder: pageOrder,
        size: size,
        page: page,
      );

  Future<BankResponse> createBankAccount(
    CreateBankPayload payload,
  ) =>
      _paymentService.createBankAccount(payload);

  Future<BankResponse> getBankAccountsByType({
    required String type,
  }) =>
      _paymentService.getBankAccountsByType(type: type);

  Future<PagePaymentResponse> getPayments({
    required String param,
    required String pageOrder,
    required int size,
    int? page,
  }) =>
      _paymentService.getPayments(
        param: param,
        pageOrder: pageOrder,
        size: size,
        page: page,
      );

  Future<void> createPayment(
    OrderPurchasePayload payload,
  ) =>
      _paymentService.createPayment(payload);

  Future<PagePaymentResponse> getPaymentsByBankType({
    required String type,
    required String param,
    required String pageOrder,
    required int size,
    int? page,
  }) =>
      _paymentService.getPaymentsByBankType(
        type: type,
        param: param,
        pageOrder: pageOrder,
        size: size,
        page: page,
      );

  Future<PaymentResponse> getPaymentsByBankTypeAndId({
    required String type,
    required String id,
  }) =>
      _paymentService.getPaymentsByBankTypeAndId(
        type: type,
        id: id,
      );
}
