import 'package:flutter/material.dart';
import '../utils/colors.dart';

class RadioButtonColors {
  final Color? onBorderColor;
  final Color? offBorderColor;
  final Color? disabledBorderColor;
  final Color? onThumbColor;
  final Color? offThumbColor;
  final Color? disabledThumbColor;
  const RadioButtonColors({
    this.onBorderColor,
    this.offBorderColor,
    this.disabledBorderColor,
    this.onThumbColor,
    this.offThumbColor,
    this.disabledThumbColor,
  });
}

class RadioButton extends StatelessWidget {
  final bool value;
  final ValueChanged<bool>? onChanged;
  final bool isEnabled;
  final EdgeInsets? padding;
  final Color? onBorderColor;
  final Color? offBorderColor;
  final Color? disabledBorderColor;
  final Color? onThumbColor;
  final Color? offThumbColor;
  final Color? disabledThumbColor;
  // final RadioButtonColors colors;

  const RadioButton({
    super.key,
    required this.value,
    required this.onChanged,
    this.isEnabled = true,
    this.padding,
    this.onBorderColor,
    this.offBorderColor,
    this.disabledBorderColor,
    this.onThumbColor,
    this.offThumbColor,
    this.disabledThumbColor,
    // this.colors = const RadioButtonColors()
  });

  @override
  Widget build(BuildContext context) {
    final RadioButtonColors colors = RadioButtonColors(
      onBorderColor: onBorderColor ?? OColor.gray500,
      offBorderColor: offBorderColor ?? OColor.gray200,
      disabledBorderColor: disabledBorderColor ?? Colors.grey.shade200,
      onThumbColor: onThumbColor ?? OColor.green600,
      offThumbColor: offThumbColor ?? Colors.transparent,
      disabledThumbColor: disabledThumbColor ?? Colors.transparent,
    );

    final bool isSelected = value;

    Color borderColor;
    Color fillColor;

    if (!isEnabled) {
      borderColor = colors.disabledBorderColor!;
      fillColor = colors.disabledThumbColor!;
    } else if (isSelected) {
      borderColor = colors.onBorderColor!;
      fillColor = colors.onThumbColor!;
    } else {
      borderColor = colors.offBorderColor!;
      fillColor = colors.offThumbColor!;
    }

    return GestureDetector(
      onTap: isEnabled && onChanged != null ? () => onChanged!(!value) : null,
      child: AnimatedContainer(
        duration: Duration(microseconds: 100),
        height: 24,
        width: 24,
        decoration: BoxDecoration(
          border: Border.all(color: borderColor, width: 2),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: padding ?? const EdgeInsets.all(2.0),
          child: AnimatedContainer(
            duration: Duration(microseconds: 100),
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
