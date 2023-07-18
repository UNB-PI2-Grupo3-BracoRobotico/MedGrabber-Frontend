// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) => ProductModel(
      productId: json['product_id'] as int,
      productName: json['product_name'] as String,
      productPrice: (json['product_price'] as num).toDouble(),
      productDescription: json['product_description'] as String,
      amount: json['amount'] as int,
      positionX: json['position_x'] as int,
      positionY: json['position_y'] as int,
      size: json['size'] as String,
      peso: (json['peso'] as num).toDouble(),
      modifiedByUser: json['modified_by_user'] as String,
    );

Map<String, dynamic> _$ProductModelToJson(ProductModel instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'product_name': instance.productName,
      'product_price': instance.productPrice,
      'product_description': instance.productDescription,
      'amount': instance.amount,
      'position_x': instance.positionX,
      'position_y': instance.positionY,
      'size': instance.size,
      'peso': instance.peso,
      'modified_by_user': instance.modifiedByUser,
    };
