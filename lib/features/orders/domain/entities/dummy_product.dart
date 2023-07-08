import 'package:equatable/equatable.dart';

class DummyProduct extends Equatable {
  final String name;
  final int amount;

  const DummyProduct({
    required this.name,
    required this.amount,
  });

  DummyProduct copyWith({
    String? name,
    int? amount,
  }) {
    return DummyProduct(
      name: name ?? this.name,
      amount: amount ?? this.amount,
    );
  }

  @override
  List<Object?> get props => [name, amount];
}
