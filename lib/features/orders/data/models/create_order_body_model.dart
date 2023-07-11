import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grabber/features/inventory/data/models/product_model.dart';

part 'create_order_body_model.g.dart';

@JsonSerializable(
  fieldRename: FieldRename.snake,
)
class CreateOrderBodyModel {
  final List<String> productIds;
  final double totalPrice;
  final String user;
  final String paymentMethod;

  const CreateOrderBodyModel({
    required this.productIds,
    required this.totalPrice,
    required this.user,
    required this.paymentMethod,
  });

  Map<String, dynamic> toJson() => _$CreateOrderBodyModelToJson(this);
}
