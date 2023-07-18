import 'package:design_system/design_system.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grabber/generated/l10n.dart';
import 'package:styled_text/styled_text.dart';

import '../../blocs/positions_available/positions_available_cubit.dart';

class PositionOptionsButton extends StatefulWidget {
  const PositionOptionsButton({
    super.key,
    this.currentPosition = '',
    required this.onChanged,
    this.errorText,
    required this.options,
    required this.errorGetPositions,
  });

  final String currentPosition;
  final ValueChanged<String> onChanged;
  final String? errorText;
  final List<String> options;
  final bool errorGetPositions;

  @override
  State<PositionOptionsButton> createState() => _PositionOptionsButtonState();
}

class _PositionOptionsButtonState extends State<PositionOptionsButton> {
  String get initialPosition => widget.currentPosition;

  //TODO(Mauricio): MAybe arrange array here after adding it
  List<String> get options {
    List<String> listOptions = [];
    listOptions.addAll(widget.options);
    if (widget.currentPosition.isNotEmpty &&
        !listOptions.contains(widget.currentPosition)) {
      listOptions.add(widget.currentPosition);
    }
    return listOptions;
  }

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
            S.current.add_item_position_option_label,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        const VerticalGap.nano(),
        if (widget.errorGetPositions)
          InkWell(
            onTap: () => context
                .read<PositionsAvailableCubit>()
                .checkAvailablePositions(),
            splashColor: Colors.transparent,
            child: Padding(
              padding: const EdgeInsets.all(kSpacingQuarck),
              child: StyledText(
                text: S.current.positions_option_button_error,
                textAlign: TextAlign.justify,
                style: Theme.of(context).textTheme.bodyMedium,
                tags: {
                  "bold": StyledTextTag(
                    style: Theme.of(context).textTheme.bodyLarge,
                  )
                },
              ),
            ),
          )
        else
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
