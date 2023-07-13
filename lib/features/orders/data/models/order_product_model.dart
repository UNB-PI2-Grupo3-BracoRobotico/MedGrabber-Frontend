import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_product_model.g.dart';

@JsonSerializable(
  createToJson: false,
  fieldRename: FieldRename.snake,
)
class OrderProductModel {
  final int productId;
  final String productName;
  final String productDescription;
  final double productPrice;
  final int productAmount;
  final int positionX;
  final int positionY;

  const OrderProductModel({
    required this.productId,
    required this.productName,
    required this.productDescription,
    required this.productPrice,
    required this.productAmount,
    required this.positionX,
    required this.positionY,
  });

  factory OrderProductModel.fromJson(Map<String, dynamic> json) =>
      _$OrderProductModelFromJson(json);
}
