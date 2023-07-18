import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String id;
  final String name;
  final int amount;
  final String description;
  final String position;
  final double price;
  final double weigth;
  final ProductSize size;
  final String modifiedByUser;

  const Product({
    required this.id,
    required this.name,
    required this.amount,
    required this.description,
    required this.position,
    required this.price,
    required this.weigth,
    required this.size,
    required this.modifiedByUser,
  });

  Product copyWith({
    String? id,
    String? name,
    int? amount,
    String? description,
    String? position,
    double? price,
    double? weigth,
    ProductSize? size,
    String? modifiedByUser,
  }) {
    return Product(
      id: id ?? this.id,
      name: name ?? this.name,
      amount: amount ?? this.amount,
      description: description ?? this.description,
      position: position ?? this.position,
      price: price ?? this.price,
      weigth: weigth ?? this.weigth,
      size: size ?? this.size,
      modifiedByUser: modifiedByUser ?? this.modifiedByUser,
    );
  }

  @override
  List get props => [
        name,
        amount,
        description,
        position,
        price,
        weigth,
        size,
      ];
}

enum ProductSize { P, M, G, unkown }
