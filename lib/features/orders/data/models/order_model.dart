import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grabber/features/orders/domain/entities/order.dart';

import '../../../inventory/data/models/product_model.dart';
import '../../../inventory/domain/entities/product.dart';

part 'order_model.g.dart';

@JsonSerializable(
  createToJson: false,
  fieldRename: FieldRename.snake,
)
class OrderModel {
  final int id;
  final double totalPrice;
  final String status;
  final List<ProductModel> orderItems;

  const OrderModel({
    required this.id,
    required this.totalPrice,
    required this.status,
    required this.orderItems,
  });

  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);

  OrderEntity toEntity(OrderModel model) {
    return OrderEntity(
      id: id.toString(),
      status: _mapOrderStatus(status),
      products: _mapProducts(model.orderItems),
      totalOrderValue: model.totalPrice,
    );
  }

  OrderStatus _mapOrderStatus(String status) {
    switch (status) {
      case 'awaiting_payment':
        return OrderStatus.awaitingPayment;
      case 'processing':
        return OrderStatus.processing;
      case 'ready_to_get':
        return OrderStatus.readyToGet;
      case 'finished':
        return OrderStatus.finished;
      case 'pending':
        return OrderStatus.pending;
      default:
        return OrderStatus.unkown;
    }
  }

  List<Product> _mapProducts(List<ProductModel> model) {
    List<Product> products = [];
    for (final productModel in model) {
      products.add(
        productModel.toEntity(
          productModel,
        ),
      );
    }
    return products;
  }
}
