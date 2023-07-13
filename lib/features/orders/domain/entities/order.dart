import 'package:equatable/equatable.dart';
import 'package:grabber/features/orders/domain/entities/dummy_product.dart';

class OrderEntity extends Equatable {
  final String id;
  final OrderStatus status;
  final List<DummyProduct> products;
  final double totalOrderValue;

  const OrderEntity({
    required this.id,
    required this.status,
    required this.products,
    required this.totalOrderValue,
  });

  @override
  List<Object?> get props => [id, status, products, totalOrderValue];
}

enum OrderStatus {
  awaitingPayment,
  pending,
  processing,
  readyToGet,
  finished,
  unkown,
}
