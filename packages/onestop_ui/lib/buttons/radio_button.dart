import 'package:flutter/material.dart';
import '../utils/colors.dart';

class RadioButton extends StatelessWidget {
  final bool value;
  final ValueChanged<bool>? onChanged;
  final bool isEnabled;

  const RadioButton({
    Key? key,
    required this.value,
    required this.onChanged,
    this.isEnabled = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isSelected = value;

    Color borderColor;
    Color fillColor;

    if (!isEnabled) {
      borderColor = Colors.grey.shade200;
      fillColor = Colors.transparent;
    } else if (isSelected) {
      borderColor = OColor.gray500;
      fillColor = OColor.green600;
    } else {
      borderColor = OColor.gray200;
      fillColor = Colors.transparent;
    }

    return GestureDetector(
      onTap: isEnabled && onChanged != null
          ? () => onChanged!(!value)
          : null,
      child: AnimatedContainer(
        duration: Duration(microseconds: 100),
        height: 24,
        width: 24,
        decoration: BoxDecoration(
          border: Border.all(color: borderColor, width: 2),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              color: fillColor,
              borderRadius: BorderRadius.circular(6),
            ),
          ),
        ),
      ),
    );
  }
}
