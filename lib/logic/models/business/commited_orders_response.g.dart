// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commited_orders_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommitedOrdersResponse _$$_CommitedOrdersResponseFromJson(
        Map<String, dynamic> json) =>
    _$_CommitedOrdersResponse(
      orders: (json['orders'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, Order.fromJson(e as Map<String, dynamic>)),
      ),
      paymentLinks: (json['paymentLinks'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
    );

Map<String, dynamic> _$$_CommitedOrdersResponseToJson(
        _$_CommitedOrdersResponse instance) =>
    <String, dynamic>{
      'orders': instance.orders,
      'paymentLinks': instance.paymentLinks,
    };
