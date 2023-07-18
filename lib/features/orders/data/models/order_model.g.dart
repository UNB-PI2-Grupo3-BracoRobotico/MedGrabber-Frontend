// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderModel _$OrderModelFromJson(Map<String, dynamic> json) => OrderModel(
      customerOrderId: json['customer_order_id'] as int,
      userId: json['user_id'] as String,
      email: json['email'] as String,
      orderDate: json['order_date'] as String,
      totalCost: (json['total_cost'] as num).toDouble(),
      orderStatus: json['order_status'] as String,
      products: (json['products'] as List<dynamic>)
          .map((e) => OrderProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
