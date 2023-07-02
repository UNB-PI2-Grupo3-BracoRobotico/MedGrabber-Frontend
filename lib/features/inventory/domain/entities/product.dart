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

  @override
  List get props => [name, amount, description, position, price];
}
