import 'package:equatable/equatable.dart';

class DummyProduct extends Equatable {
  final String id;
  final String name;
  final double price;
  final int amount;

  const DummyProduct({
    required this.id,
    required this.name,
    required this.price,
    required this.amount,
  });

  DummyProduct copyWith({
    String? id,
    String? name,
    int? amount,
    double? price,
  }) {
    return DummyProduct(
      id: id ?? this.id,
      name: name ?? this.name,
      price: price ?? this.price,
      amount: amount ?? this.amount,
    );
  }

  @override
  List<Object?> get props => [name, amount];
}
