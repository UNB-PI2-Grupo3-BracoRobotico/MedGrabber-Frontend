import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final int amount;
  final String description;
  //TODO(Mauricio): Check if position will remain as a String
  final String position;
  final double price;

  const Product({
    required this.name,
    required this.amount,
    required this.description,
    required this.position,
    required this.price,
  });

  Product copyWith({
    String? name,
    int? amount,
    String? description,
    String? position,
    double? price,
  }) {
    return Product(
      name: name ?? this.name,
      amount: amount ?? this.amount,
      description: description ?? this.description,
      position: position ?? this.position,
      price: price ?? this.price,
    );
  }

  @override
  List get props => [name, amount, description, position, price];
}
