import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:grabber/features/settings/widgets/base_option_page.dart';
import 'package:styled_text/styled_text.dart';

import '../../../generated/l10n.dart';

class NamePage extends StatelessWidget {
  const NamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseOptionPage(
      title: S.current.name_page_title,
      content: Column(
        children: [
          //TODO(Mauricio): Add rest of ui for name page
          StyledText(
            text: S.current.name_page_description,
            textAlign: TextAlign.justify,
            style: Theme.of(context).textTheme.bodyMedium,
            tags: {
              "bold": StyledTextTag(
                style: Theme.of(context).textTheme.bodyLarge,
              )
            },
          ),
        ],
      ),
      //TODO(Mauricio): Implement on Tap
      onContinueTap: () {},
    );
  }
}
