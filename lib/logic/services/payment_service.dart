import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:upnati/core/config/constants.dart';
import 'package:upnati/logic/models/payment/bank_response.dart';
import 'package:upnati/logic/models/payment/create_bank_payload.dart';
import 'package:upnati/logic/models/payment/order_purchase_payload.dart';
import 'package:upnati/logic/models/payment/page_bank_response.dart';
import 'package:upnati/logic/models/payment/page_payment_response.dart';
import 'package:upnati/logic/models/payment/payment_response.dart';

part 'payment_service.g.dart';

@RestApi(baseUrl: Constants.paymentBaseUrl)
abstract class PaymentService {
  factory PaymentService(Dio dio, {String? baseUrl}) = _PaymentService;

  @GET('/bank')
  Future<PageBankResponse> getUserBankAccounts({
    @Query('param') required String param,
    @Query('pageOrder') required String pageOrder,
    @Query('size') required int size,
    @Query('page') int? page,
  });

  @POST('/bank')
  Future<BankResponse> createBankAccount(
    @Body() CreateBankPayload payload,
  );

  @GET('/bank/{type}')
  Future<BankResponse> getBankAccountsByType({
    @Path() required String type,
  });

  @GET('/payments')
  Future<PagePaymentResponse> getPayments({
    @Query('param') required String param,
    @Query('pageOrder') required String pageOrder,
    @Query('size') required int size,
    @Query('page') int? page,
  });

  @POST('/payments')
  Future<void> createPayment(
    @Body() OrderPurchasePayload payload,
  );

  @GET('/payments/{type}')
  Future<PagePaymentResponse> getPaymentsByBankType({
    @Path() required String type,
    @Query('param') required String param,
    @Query('pageOrder') required String pageOrder,
    @Query('size') required int size,
    @Query('page') int? page,
  });

  @GET('/payments/{type}/{id}')
  Future<PaymentResponse> getPaymentsByBankTypeAndId({
    @Path() required String type,
    @Path() required String id,
  });
}
