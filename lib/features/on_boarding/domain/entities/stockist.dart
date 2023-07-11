import 'package:equatable/equatable.dart';

class Stockist extends Equatable {
  final String id;
  final String email;
  final String storeName;
  final String phoneNumber;

  const Stockist({
    required this.id,
    required this.email,
    required this.storeName,
    required this.phoneNumber,
  });

  factory Stockist.createEmptyInstance() {
    return const Stockist(
      id: '',
      email: '',
      storeName: '',
      phoneNumber: '',
    );
  }

  @override
  List<Object?> get props => [id];
}
