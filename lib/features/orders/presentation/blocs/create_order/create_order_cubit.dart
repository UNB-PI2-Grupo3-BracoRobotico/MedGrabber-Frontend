import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grabber/features/orders/domain/usecases/create_order.dart';
import '../../../domain/entities/dummy_product.dart';

part 'create_order_cubit.freezed.dart';
part 'create_order_state.dart';

class CreateOrderCubit extends Cubit<CreateOrderState> {
  final CreateOrder createOrderUsecase;
  CreateOrderCubit({
    required this.createOrderUsecase,
  }) : super(
          const CreateOrderState.initial(),
        );

  Future<void> createOrder(List<DummyProduct> products) async {
    emit(const CreateOrderState.loading());
    final orderCreatedOrFailure = await createOrderUsecase(
      products: products,
    );

    emit(
      orderCreatedOrFailure.fold(
        CreateOrderState.success,
        (_) => CreateOrderState.error(
          products: products,
        ),
      ),
    );
    return;
  }
}
