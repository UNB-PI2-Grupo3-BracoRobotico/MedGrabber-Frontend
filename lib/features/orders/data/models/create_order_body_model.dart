import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grabber/features/orders/data/models/order_item_creation_model.dart';

part 'create_order_body_model.g.dart';

@JsonSerializable(
  fieldRename: FieldRename.snake,
  createFactory: false,
)
class CreateOrderBodyModel {
  final List<OrderItemCreationModel> orderItems;
  final double totalPrice;
  final String user;
  final String paymentMethod;

  const CreateOrderBodyModel({
    required this.orderItems,
    required this.totalPrice,
    required this.user,
    required this.paymentMethod,
  });

  Map<String, dynamic> toJson() => _$CreateOrderBodyModelToJson(this);
}
