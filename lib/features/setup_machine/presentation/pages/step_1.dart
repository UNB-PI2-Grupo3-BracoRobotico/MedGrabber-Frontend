import 'package:flutter/material.dart';
import 'package:grabber/config/routes/routes.dart';
import 'package:grabber/features/setup_machine/presentation/pages/widgets/base_step_page.dart';

import '../../../../generated/l10n.dart';

class Step1 extends StatelessWidget {
  const Step1({super.key});

  @override
  Widget build(BuildContext context) {
    return StepBasePage(
      title:
          "Lorem ipsum dolor sit amet consectetur. Dolor dictum nunc sed purus.",
      description:
          "Lorem ipsum dolor sit amet consectetur. Auctor aliquet scelerisque leo ut enim. Eget ornare tincidunt eu viverra in justo. Ac diam ultricies blandit pellentesque nisl enim faucibus arcu a. Sed faucibus volutpat sed cum a in non at. Urna dolor orci tempus massa. Purus semper purus eros congue eu nisi. Volutpat bibendum odio mattis tempor.",
      onPressed: () => Navigator.of(context).pushNamed(
        AppRoutes.setup2,
      ),
      buttonLabel: S.current.continue_button_label,
    );
  }
}
