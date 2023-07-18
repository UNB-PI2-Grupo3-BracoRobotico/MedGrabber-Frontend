import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_item_creation_model.g.dart';

@JsonSerializable(
  fieldRename: FieldRename.snake,
  createToJson: true,
)
class OrderItemCreationModel {
  final String productId;
  final int amount;
  final double price;

  const OrderItemCreationModel({
    required this.productId,
    required this.amount,
    required this.price,
  });

  Map<String, dynamic> toJson() => _$OrderItemCreationModelToJson(this);
}
