import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:grabber/core/api_client.dart';
import 'package:grabber/core/injection.dart';
import 'package:grabber/features/settings/widgets/base_option_page.dart';

import '../../../../generated/l10n.dart';

class AddressConnectionPage extends StatefulWidget {
  const AddressConnectionPage({
    super.key,
  });

  @override
  State<AddressConnectionPage> createState() => _AddressConnectionPageState();
}

class _AddressConnectionPageState extends State<AddressConnectionPage> {
  late final TextEditingController _controller;
  bool canContinue = false;
  String errorText = '';

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BaseOptionPage(
      title: S.current.settings_connection_option_title,
      content: Column(
        children: [
          DSTextField(
            controller: _controller,
            errorText: errorText,
            label: S.current.ip_connection_label,
            onChanged: (val) {
              final result = val.isNotEmpty;
              if (result) {
                _activateOrDeactivateButton(val);
              }
            },
          ),
          const VerticalGap.xxxs(),
        ],
      ),
      buttonEnabled: canContinue,
      onContinueTap: () => _updateConnectionAddress(_controller.text),
    );
  }

  void _updateConnectionAddress(String address) {
    getIt.get<ApiClient>().onBaseOptionsUpdate(address);
    Navigator.of(context).pop();
  }

  void _activateOrDeactivateButton(String storeName) {
    if (storeName.isNotEmpty && !canContinue) {
      setState(() {
        canContinue = true;
      });
    } else if (storeName.isEmpty && canContinue) {
      setState(() {
        canContinue = false;
      });
    }
  }
}
