import 'package:flutter/material.dart';

import '../colors.dart';
import '../icons/ds_icons.dart';
import '../sizes.dart';
import '../spacing.dart';
import 'gap.dart';

class DSTextField extends StatefulWidget {
  const DSTextField({
    Key? key,
    required this.label,
    this.initialValue = '',
    this.errorText,
    this.onChanged,
    this.hint,
    required this.controller,
    this.maxLength,
    this.borderColor = kDarkGrey,
  }) : super(key: key);

  final String label;
  final String initialValue;
  final String? errorText;
  final String? hint;
  final TextEditingController controller;
  final int? maxLength;
  final Color borderColor;

  final void Function(String)? onChanged;

  @override
  State<DSTextField> createState() => _DSTextFieldState();
}

class _DSTextFieldState extends State<DSTextField> {
  late final GlobalKey<FormFieldState> _formFieldStateKey;

  bool get hasError => widget.errorText?.isNotEmpty == true;

  TextEditingController get _controller => widget.controller;

  void reset({String initialValue = ''}) {
    _formFieldStateKey.currentState?.reset();
    _controller.value = TextEditingValue(text: initialValue);
    _formFieldStateKey.currentState?.didChange(_controller.value.text);
  }

  @override
  void initState() {
    _formFieldStateKey = GlobalKey<FormFieldState>();

    final initialValue = TextEditingValue(text: widget.initialValue);

    widget.controller.value = initialValue;

    super.initState();
  }

  @override
  void dispose() {
    _formFieldStateKey.currentState?.dispose();
    super.dispose();
  }

  OutlineInputBorder get _defaultBorder => OutlineInputBorder(
        borderSide: BorderSide(
          color: widget.borderColor,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(
            kSpacingXXXS,
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return FormField<String>(
      key: _formFieldStateKey,
      initialValue: widget.initialValue,
      builder: (state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: kSpacingQuarck,
              ),
              child: Text(
                widget.label,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            const VerticalGap.nano(),
            TextField(
              maxLength: widget.maxLength,
              style: Theme.of(context).textTheme.bodyMedium,
              controller: _controller,
              onChanged: (text) {
                if (widget.onChanged != null) {
                  widget.onChanged!(text);
                }
                state.reset();
                state.didChange(text);
              },
              decoration: InputDecoration(
                counterText: '',
                hintText: widget.hint,
                hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: kDarkGrey,
                    ),
                contentPadding: const EdgeInsets.all(kSpacingNano),
                focusedBorder: _defaultBorder,
                enabledBorder: _defaultBorder,
              ),
            ),
            const VerticalGap.quarck(),
            if (hasError)
              Row(
                children: [
                  DSIcon(
                    icon: Icons.error,
                    size: kIconSizeSM,
                    color: kError,
                  ),
                  const HorizontalGap.quarck(),
                  Expanded(
                    child: Text(
                      widget.errorText ?? '',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: kError,
                            fontSize: 12,
                          ),
                    ),
                  )
                ],
              ),
          ],
        );
      },
    );
  }
}
