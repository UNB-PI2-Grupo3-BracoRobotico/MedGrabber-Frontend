import 'package:design_system/design_system.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:grabber/generated/l10n.dart';

class SizeOptionButton extends StatefulWidget {
  const SizeOptionButton({
    super.key,
    this.currentSize = '',
    required this.onChanged,
    this.errorText,
  });

  final String currentSize;
  final ValueChanged<String> onChanged;
  final String? errorText;

  @override
  State<SizeOptionButton> createState() => _SizeOptionButtonState();
}

class _SizeOptionButtonState extends State<SizeOptionButton> {
  String get initialPosition => widget.currentSize;

  String? selectedValue;

  bool get hasError => widget.errorText?.isNotEmpty ?? false;

  final List<String> options = ["P", "M", "G"];

  @override
  void initState() {
    if (widget.currentSize.isNotEmpty) {
      selectedValue = widget.currentSize;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: kSpacingQuarck,
          ),
          child: Text(
            S.current.add_item_size_option_label,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        const VerticalGap.nano(),
        DropdownButton2(
          value: selectedValue,
          onChanged: (value) {
            if (value == null) return;
            setState(() {
              selectedValue = value;
            });
            widget.onChanged(value);
          },
          underline: const SizedBox.shrink(),
          buttonStyleData: ButtonStyleData(
            padding: const EdgeInsets.only(
              right: kSpacingNano,
            ),
            decoration: BoxDecoration(
              border: Border.all(color: kDarkGrey),
              borderRadius: BorderRadius.circular(
                kSpacingXXXS,
              ),
            ),
          ),
          dropdownStyleData: DropdownStyleData(
            elevation: 2,
            decoration: BoxDecoration(
              border: Border.all(color: kLightGrey),
              borderRadius: BorderRadius.circular(
                kSpacingXXXS,
              ),
            ),
          ),
          items: options
              .map(
                (item) => DropdownMenuItem(
                  value: item,
                  child: Text(
                    item,
                    style: Theme.of(context).textTheme.bodyMedium,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              )
              .toList(),
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
  }
}
