import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grabber/core/injection.dart';
import 'package:grabber/features/inventory/domain/entities/product.dart';
import 'package:grabber/features/inventory/presentation/blocs/inventory/has_item_cubit.dart';
import 'package:grabber/features/inventory/presentation/blocs/item_management/item_management_cubit.dart';
import 'package:grabber/features/inventory/presentation/blocs/positions_available/positions_available_cubit.dart';
import 'package:grabber/features/inventory/presentation/pages/widgets/description_textfield.dart';
import 'package:grabber/features/inventory/presentation/pages/widgets/position_options_button.dart';
import 'package:grabber/features/shared/base_error_page.dart';
import 'package:grabber/features/shared/base_loading_page.dart';
import 'package:grabber/features/shared/base_success_page.dart';

import '../../../../generated/l10n.dart';

class EditItemPage extends StatefulWidget {
  const EditItemPage({
    super.key,
    required this.product,
  });
  final Product product;

  @override
  State<EditItemPage> createState() => _EditItemPageState();
}

class _EditItemPageState extends State<EditItemPage> {
  late TextEditingController _nameController;
  late TextEditingController _amountController;
  late TextEditingController _descriptionController;
  String position = '';
  Map<String, String> errors = {};

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _amountController = TextEditingController();
    _descriptionController = TextEditingController();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _amountController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ItemManagementCubit, ItemManagementState>(
      listener: (context, state) => state.whenOrNull(
        success: () async {
          getIt.get<HasItemCubit>().hasItemRegistered();
          final navigator = Navigator.of(context);
          await Future.delayed(
            const Duration(
              milliseconds: 1500,
            ),
          );
          navigator.pop();
          return;
        },
      ),
      builder: (context, state) {
        return state.maybeWhen(
          success: () => BaseSuccessPage(
            canPop: false,
            title: S.current.edit_item_success_title,
          ),
          loading: () => BaseLoadingPage(
            title: S.current.edit_item_loading_title,
          ),
          orElse: () {
            if (state.hasError) {
              errors = state.listErrors;
              if (errors.isEmpty) {
                return BaseErrorPage(
                  title: S.current.something_went_wrong,
                  description: S.current.edit_item_generic_error_description,
                );
              }
            }
            return BlocBuilder<PositionsAvailableCubit,
                PositionsAvailableState>(
              builder: (context, state) {
                return state.maybeWhen(
                  loading: BaseLoadingPage.new,
                  orElse: () => Scaffold(
                    appBar: AppBar(
                      leading: DSIconButton(
                        icon: const DSIcon(
                          icon: Icons.chevron_left_rounded,
                        ),
                        onTap: Navigator.of(context).pop,
                      ),
                      titleSpacing: 0,
                      title: Text(
                        S.current.edit_item_page_title,
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                    ),
                    body: GestureDetector(
                      onTap: removeFocus,
                      child: SafeArea(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: kSpacingXS,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: ListView(
                                  children: [
                                    PositionOptionsButton(
                                      errorGetPositions: state.maybeWhen(
                                        orElse: () => false,
                                        error: () => true,
                                      ),
                                      options: state.maybeWhen(
                                        orElse: () => [],
                                        availablePositions: (options) =>
                                            options,
                                      ),
                                      currentPosition: widget.product.position,
                                      errorText: errors['position'],
                                      onChanged: _updatePosition,
                                    ),
                                    DSTextField(
                                      initialValue: widget.product.name,
                                      label:
                                          S.current.edit_item_name_option_label,
                                      controller: _nameController,
                                      errorText: errors['name'],
                                    ),
                                    const VerticalGap.nano(),
                                    DSTextField(
                                      initialValue:
                                          widget.product.amount.toString(),
                                      label: S.current
                                          .edit_item_amount_option_label,
                                      controller: _amountController,
                                      errorText: errors['amount'],
                                      keyboardType: TextInputType.number,
                                      inputFormatters: [
                                        FilteringTextInputFormatter.allow(
                                          RegExp('[0-9]'),
                                        ),
                                      ],
                                    ),
                                    const VerticalGap.nano(),
                                    DescriptionTextField(
                                      initialValue: widget.product.description,
                                      label: S.current
                                          .edit_item_description_option_label,
                                      controller: _descriptionController,
                                      maxLength: 300,
                                      errorText: errors['description'],
                                    ),
                                  ],
                                ),
                              ),
                              DSButton.primary(
                                onPressed: () {
                                  removeFocus();
                                  context.read<ItemManagementCubit>().editItem(
                                        Product(
                                          name: _nameController.text,
                                          amount: int.tryParse(
                                                  _amountController.text) ??
                                              -1,
                                          description:
                                              _descriptionController.text,
                                          position: position.isEmpty
                                              ? widget.product.position
                                              : position,
                                          //TODO(Mauricio): Add textfield for price
                                          price: 0.0,
                                        ),
                                      );
                                },
                                label: S.current.edit_item_button_label,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            );
          },
        );
      },
    );
  }

  void _updatePosition(String newPosition) {
    position = newPosition;
  }

  void removeFocus() {
    FocusScope.of(context).unfocus();
  }
}
