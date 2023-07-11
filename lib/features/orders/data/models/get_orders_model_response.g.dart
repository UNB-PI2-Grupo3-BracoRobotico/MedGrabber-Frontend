// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_orders_model_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetOrdersModelResponse _$GetOrdersModelResponseFromJson(
        Map<String, dynamic> json) =>
    GetOrdersModelResponse(
      orders: (json['orders'] as List<dynamic>)
          .map((e) => OrderModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
