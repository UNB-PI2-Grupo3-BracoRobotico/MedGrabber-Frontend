// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderProductModel _$OrderProductModelFromJson(Map<String, dynamic> json) =>
    OrderProductModel(
      productId: json['product_id'] as int,
      productName: json['product_name'] as String,
      productDescription: json['product_description'] as String,
      productPrice: (json['product_price'] as num).toDouble(),
      productAmount: json['product_amount'] as int,
      positionX: json['position_x'] as int,
      positionY: json['position_y'] as int,
    );
