import 'package:design_system/design_system.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class PositionOptionsButton extends StatefulWidget {
  const PositionOptionsButton({
    super.key,
    this.currentPosition = '',
    required this.onChanged,
    this.errorText,
  });

  final String currentPosition;
  final ValueChanged<String> onChanged;
  final String? errorText;

  @override
  State<PositionOptionsButton> createState() => _PositionOptionsButtonState();
}

class _PositionOptionsButtonState extends State<PositionOptionsButton> {
  //TODO(Mauricio): Remove mock data
  final List<String> items = [
    'A3',
    'Item1',
    'Item2',
    'Item3',
    'Item4',
    'Item5',
    'Item6',
    'Item7',
    'Item8',
    'Item11',
    'Item12',
    'Item13',
    'Item14',
    'Item15',
    'Item16',
    'Item17',
    'Item18',
    'Item111',
    'Item112',
    'Item113',
    'Item114',
    'Item115',
    'Item116',
    'Item117',
    'Item118',
  ];

  String? selectedValue;

  bool get hasError => widget.errorText?.isNotEmpty ?? false;

  @override
  void initState() {
    if (widget.currentPosition.isNotEmpty) {
      selectedValue = widget.currentPosition;
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
            'Cubiculo',
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
          items: items
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
