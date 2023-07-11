import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grabber/features/inventory/domain/entities/product.dart';

part 'product_model.g.dart';

@JsonSerializable(
  createToJson: false,
  fieldRename: FieldRename.snake,
)
class ProductModel {
  final int id;
  final String name;
  final double price;
  final int quantity;
  final int positionX;
  final int positionY;
  final String size;
  final double weight;

  const ProductModel({
    required this.id,
    required this.name,
    required this.price,
    required this.quantity,
    required this.positionX,
    required this.positionY,
    required this.size,
    required this.weight,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);

  Product toEntity(ProductModel model) {
    return Product(
      name: name,
      amount: quantity,
      //TODO(Mauricio): Check with backend
      description: 'Sem descrição',
      position: '${positionX.toString()}${positionY.toString()}',
      price: price,
    );
  }
}
