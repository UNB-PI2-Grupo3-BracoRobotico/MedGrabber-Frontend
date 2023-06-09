import 'package:equatable/equatable.dart';
import 'package:grabber/features/inventory/domain/entities/product.dart';

class OrderEntity extends Equatable {
  final String id;
  final OrderStatus status;
  final List<Product> products;
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

enum OrderStatus { awaitingPayment, processing, readyToGet, finished }
