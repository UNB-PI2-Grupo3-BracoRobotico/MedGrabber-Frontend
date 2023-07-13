// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_item_creation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderItemModel _$OrderItemModelFromJson(Map<String, dynamic> json) =>
    OrderItemModel(
      productId: json['product_id'] as String,
      amount: json['amount'] as int,
      price: (json['price'] as num).toDouble(),
    );

Map<String, dynamic> _$OrderItemModelToJson(OrderItemModel instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'amount': instance.amount,
      'price': instance.price,
    };
