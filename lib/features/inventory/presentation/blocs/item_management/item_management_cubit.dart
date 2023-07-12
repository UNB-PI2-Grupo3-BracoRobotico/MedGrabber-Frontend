import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grabber/features/inventory/data/mappers/product_size_mapper.dart';
import 'package:grabber/features/inventory/domain/usecases/create_item.dart';
import 'package:grabber/features/inventory/domain/usecases/edit_item.dart';
import 'package:grabber/generated/l10n.dart';

import '../../../domain/entities/product.dart';

part 'item_management_cubit.freezed.dart';
part 'item_management_state.dart';

class ItemManagementCubit extends Cubit<ItemManagementState> {
  final EditProduct editProduct;
  final CreateItem createItemUsecase;
  ItemManagementCubit({
    required this.editProduct,
    required this.createItemUsecase,
  }) : super(
          const ItemManagementState.initial(),
        );

  Future<void> createItem(Product product) async {
    emit(const ItemManagementState.loading());
    final errors = validateItemFields(product);
    if (errors.isNotEmpty) {
      emit(ItemManagementState.error(errors: errors));
      return;
    }
    final failureOrProductCreated = await createItemUsecase(
      product: product,
    );
    emit(
      failureOrProductCreated.fold(
        ItemManagementState.success,
        (_) => ItemManagementState.error(
          errors: errors,
        ),
      ),
    );
  }

  Future<void> editItem(Product product) async {
    emit(const ItemManagementState.loading());
    final errors = validateItemFields(product);
    if (errors.isNotEmpty) {
      emit(ItemManagementState.error(errors: errors));
      return;
    }
    final failureOrSuccess = await editProduct(product: product);
    emit(
      failureOrSuccess.fold(
        ItemManagementState.success,
        (_) => ItemManagementState.error(
          errors: errors,
        ),
      ),
    );
  }

  Map<String, String> validateItemFields(Product product) {
    final Map<String, String> errors = {};
    if (product.position.isEmpty) {
      errors['position'] =
          S.current.product_position_cannot_be_empty_error_text;
    }
    if (product.amount == -1) {
      errors['amount'] = S.current.product_amount_cannot_be_empty_error_text;
    }
    if (product.name.isEmpty) {
      errors['name'] = S.current.product_name_cannot_be_empty_error_text;
    }
    if (product.description.isEmpty) {
      errors['description'] =
          S.current.product_description_cannot_be_empty_error_text;
    }
    if (product.price == -1) {
      errors['price'] = S.current.product_weight_cannot_be_empty_error_text;
    }
    if (product.weigth == -1) {
      errors['weight'] = S.current.product_weight_cannot_be_empty_error_text;
    }
    if (ProductSizeMapper.toModel(product.size).isEmpty) {
      errors['size'] = S.current.product_size_cannot_be_empty_error_text;
    }
    return errors;
  }
}
