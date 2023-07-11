// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_order_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateOrderBodyModel _$CreateOrderBodyModelFromJson(
        Map<String, dynamic> json) =>
    CreateOrderBodyModel(
      productIds: (json['product_ids'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      totalPrice: (json['total_price'] as num).toDouble(),
      user: json['user'] as String,
      paymentMethod: json['payment_method'] as String,
    );

Map<String, dynamic> _$CreateOrderBodyModelToJson(
        CreateOrderBodyModel instance) =>
    <String, dynamic>{
      'product_ids': instance.productIds,
      'total_price': instance.totalPrice,
      'user': instance.user,
      'payment_method': instance.paymentMethod,
    };
