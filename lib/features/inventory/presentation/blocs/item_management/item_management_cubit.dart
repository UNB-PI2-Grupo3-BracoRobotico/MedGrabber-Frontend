import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grabber/generated/l10n.dart';

import '../../../domain/entities/product.dart';

part 'item_management_cubit.freezed.dart';
part 'item_management_state.dart';

class ItemManagementCubit extends Cubit<ItemManagementState> {
  ItemManagementCubit()
      : super(
          const ItemManagementState.initial(),
        );

  Future<void> createItem(Product product) async {
    emit(const ItemManagementState.loading());
    final errors = validateItemFields(product);
    if (errors.isNotEmpty) {
      emit(ItemManagementState.error(errors: errors));
      return;
    }

    //TODO(Mauricio): Add usecases here
    // create item
    await Future.delayed(
      const Duration(
        seconds: 2,
      ),
    );
    emit(
      const ItemManagementState.success(),
    );
  }

  Future<void> editItem(Product product) async {
    emit(const ItemManagementState.loading());
    final errors = validateItemFields(product);
    if (errors.isNotEmpty) {
      emit(ItemManagementState.error(errors: errors));
      return;
    }

    //TODO(Mauricio): Add usecases here
    // create item
    await Future.delayed(
      const Duration(
        seconds: 2,
      ),
    );
    emit(
      const ItemManagementState.success(),
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
    return errors;
  }
}
