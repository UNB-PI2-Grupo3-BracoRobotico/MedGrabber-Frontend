import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/entities/dummy_product.dart';

part 'create_order_cubit.freezed.dart';
part 'create_order_state.dart';

class CreateOrderCubit extends Cubit<CreateOrderState> {
  CreateOrderCubit() : super(const CreateOrderState.initial());

  Future<void> createOrder(List<DummyProduct> products) async {
    emit(const CreateOrderState.loading());
    //TODO(Mauricio): Integrate with usecase
    await Future.delayed(
      const Duration(
        seconds: 2,
      ),
    );
    // emit(
    //   CreateOrderState.error(products: products),
    // );
    emit(
      const CreateOrderState.success(),
    );
  }
}
