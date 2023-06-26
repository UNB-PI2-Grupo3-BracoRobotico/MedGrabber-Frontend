import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final int amount;
  final String description;
  //TODO(Mauricio): Check if position will remain as a String
  final String position;

  const Product({
    required this.name,
    required this.amount,
    required this.description,
    required this.position,
  });

  @override
  List get props => [name, amount, description, position];
}
