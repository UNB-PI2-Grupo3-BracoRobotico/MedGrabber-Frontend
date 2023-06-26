import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';

class EmptyInventory extends StatelessWidget {
  const EmptyInventory({super.key});

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
          S.current.inventory_page_title,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: kSpacingXS,
          ),
          child: Column(
            children: [
              const VerticalGap.xl(),
              const SizedBox(
                width: kIconSizeGiant,
                height: kIconSizeGiant,
                child: Image(
                  image: AssetImage('assets/images/item_box.png'),
                  fit: BoxFit.cover,
                ),
              ),
              const VerticalGap.nano(),
              Text(
                S.current.inventory_page_no_item_registered_description,
                textAlign: TextAlign.center,
              ),
              const VerticalGap.nano(),
              DSButton.primary(
                onPressed: () {},
                label: S.current.inventory_page_no_item_registered_button_labek,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
