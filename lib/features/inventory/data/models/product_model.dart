import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grabber/features/inventory/data/mappers/product_size_mapper.dart';
import 'package:grabber/features/inventory/domain/entities/product.dart';

part 'product_model.g.dart';

@JsonSerializable(
  fieldRename: FieldRename.snake,
)
class ProductModel {
  final int productId;
  final String productName;
  final double productPrice;
  final String productDescription;
  final int amount;
  final int positionX;
  final int positionY;
  final String size;
  final double peso;
  final String modifiedByUser;

  const ProductModel({
    required this.productId,
    required this.productName,
    required this.productPrice,
    required this.productDescription,
    required this.amount,
    required this.positionX,
    required this.positionY,
    required this.size,
    required this.peso,
    required this.modifiedByUser,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductModelToJson(this);

  Product toEntity() {
    return Product(
      id: productId.toString(),
      name: productName,
      amount: amount,
      description: productDescription,
      position: '${positionX.toString()}${positionY.toString()}',
      price: productPrice,
      weigth: peso,
      size: ProductSizeMapper.toEntity(size),
      modifiedByUser: modifiedByUser,
    );
  }
}
