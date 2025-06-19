import 'package:flutter/material.dart';
import '../utils/colors.dart';

class ToggleButton extends StatelessWidget {
  final bool value;
  final ValueChanged<bool>? onChanged;
  final bool isEnabled;
  final String? labelText;
  final String? subLabelText;
  final EdgeInsets? padding;

  const ToggleButton({
    super.key,
    required this.value,
    required this.onChanged,
    this.isEnabled = true,
    this.labelText,
    this.subLabelText, this.padding, 
  });

  @override
  Widget build(BuildContext context) {
    final bgColor =
        !isEnabled
            ? Colors.grey.shade300
            : value
            ? OColor.green600
            : OColor.gray200;

    final thumbColor = !isEnabled ? Colors.grey.shade100 : Colors.white;
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap:
              isEnabled && onChanged != null ? () => onChanged!(!value) : null,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            width: 36,
            height: 20,
            padding:padding?? const EdgeInsets.all(2),
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: AnimatedAlign(
              duration: const Duration(milliseconds: 200),
              alignment: value ? Alignment.centerRight : Alignment.centerLeft,
              child: Container(
                width: 16,
                height: 16,
                decoration: BoxDecoration(
                  color: thumbColor,
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (labelText != null) ...[
              Text(
                labelText!,
                // style: labelStyle,
              ),
            ],
            if (subLabelText != null) ...[
              Text(
                subLabelText!,
                // style: subLabelStyle,
              ),
            ],
          ],
        ),
      ],
    );
  }
}
