import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grabber/features/orders/data/models/order_product_model.dart';
import 'package:grabber/features/orders/domain/entities/dummy_product.dart';
import 'package:grabber/features/orders/domain/entities/order.dart';

part 'order_model.g.dart';

@JsonSerializable(
  createToJson: false,
  fieldRename: FieldRename.snake,
)
class OrderModel {
  final int customerOrderId;
  final String userId;
  final String email;
  final String orderDate;
  final double totalCost;
  final String orderStatus;
  final List<OrderProductModel> products;

  const OrderModel({
    required this.customerOrderId,
    required this.userId,
    required this.email,
    required this.orderDate,
    required this.totalCost,
    required this.orderStatus,
    required this.products,
  });

  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);

  OrderEntity toEntity(OrderModel model) {
    return OrderEntity(
      id: customerOrderId.toString(),
      status: _mapOrderStatus(orderStatus),
      products: _mapProducts(model.products),
      totalOrderValue: model.totalCost,
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

  List<DummyProduct> _mapProducts(List<OrderProductModel> model) {
    List<DummyProduct> products = [];
    for (final productModel in model) {
      products.add(
        DummyProduct(
          id: productModel.productId.toString(),
          name: productModel.productName,
          price: productModel.productPrice,
          amount: productModel.productAmount,
        ),
      );
    }
    return products;
  }
}
