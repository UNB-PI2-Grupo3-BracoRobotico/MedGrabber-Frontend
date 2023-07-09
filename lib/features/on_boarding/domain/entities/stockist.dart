import 'package:equatable/equatable.dart';

class Stockist extends Equatable {
  final String id;

  const Stockist({
    required this.id,
  });

  @override
  List<Object?> get props => [id];
}
