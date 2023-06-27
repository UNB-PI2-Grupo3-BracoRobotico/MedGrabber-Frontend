import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:grabber/features/inventory/presentation/pages/widgets/description_textfield.dart';
import 'package:grabber/features/inventory/presentation/pages/widgets/position_options_button.dart';

class AddItemPage extends StatefulWidget {
  const AddItemPage({super.key});

  @override
  State<AddItemPage> createState() => _AddItemPageState();
}

class _AddItemPageState extends State<AddItemPage> {
  late TextEditingController _nameController;
  late TextEditingController _amountController;
  late TextEditingController _descriptionController;
  late String position;

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
    return Scaffold(
      appBar: AppBar(
        leading: DSIconButton(
          icon: const DSIcon(
            icon: Icons.chevron_left_rounded,
          ),
          onTap: Navigator.of(context).pop,
        ),
        titleSpacing: 0,
        title: Text(
          'aaa',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: SafeArea(
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
                      onChanged: updatePosition,
                    ),
                    DSTextField(
                      label: 'Nome',
                      controller: _nameController,
                    ),
                    const VerticalGap.nano(),
                    DSTextField(
                      label: 'Quantidade',
                      controller: _amountController,
                    ),
                    const VerticalGap.nano(),
                    DescriptionTextField(
                      label: 'Descrição',
                      controller: _descriptionController,
                      maxLength: 300,
                    ),
                  ],
                ),
              ),
              DSButton.primary(
                onPressed: () {},
                label: 'Adicionar',
              ),
            ],
          ),
        ),
      ),
    );
  }

  void updatePosition(String newPosition) {
    position = newPosition;
  }
}
