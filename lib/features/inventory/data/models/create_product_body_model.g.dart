// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_product_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateProductBodyModel _$CreateProductBodyModelFromJson(
        Map<String, dynamic> json) =>
    CreateProductBodyModel(
      productName: json['product_name'] as String,
      productDescription: json['product_description'] as String,
      productPrice: (json['product_price'] as num).toDouble(),
      peso: (json['peso'] as num).toDouble(),
      size: json['size'] as String,
      positionX: json['position_x'] as int,
      positionY: json['position_y'] as int,
      amount: json['amount'] as int,
      modifiedByUser: json['modified_by_user'] as String,
    );

Map<String, dynamic> _$CreateProductBodyModelToJson(
        CreateProductBodyModel instance) =>
    <String, dynamic>{
      'product_name': instance.productName,
      'product_description': instance.productDescription,
      'product_price': instance.productPrice,
      'peso': instance.peso,
      'size': instance.size,
      'position_x': instance.positionX,
      'position_y': instance.positionY,
      'amount': instance.amount,
      'modified_by_user': instance.modifiedByUser,
    };
