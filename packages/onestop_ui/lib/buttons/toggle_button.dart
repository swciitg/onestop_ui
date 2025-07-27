import 'package:flutter/material.dart';
import '../utils/colors.dart';

class ToggleButtonColors {
  final Color? onBgColor;
  final Color? offBgColor;
  final Color? disabledBgColor;
  final Color? onThumbColor;
  final Color? offThumbColor;
  final Color? disabledThumbColor;
  final Color? textColor;
  final Color? subLabelTextColor;
  const ToggleButtonColors({
    this.onBgColor,
    this.offBgColor,
    this.disabledBgColor,
    this.onThumbColor,
    this.offThumbColor,
    this.disabledThumbColor,
    this.textColor,
    this.subLabelTextColor,
  });
}

class ToggleButton extends StatelessWidget {
  final bool value;
  final ValueChanged<bool>? onChanged;
  final bool isEnabled;
  final String? labelText;
  final String? subLabelText;
  final EdgeInsets? padding;
  // final ToggleButtonColors colors;
  final TextStyle? labelStyle;
  final TextStyle? subLabelStyle;
  final Color? onBgColor;
  final Color? offBgColor;
  final Color? disabledBgColor;
  final Color? onThumbColor;
  final Color? offThumbColor;
  final Color? disabledThumbColor;
  final Color? textColor;
  final Color? subLabelTextColor;

  const ToggleButton({
    super.key,
    required this.value,
    required this.onChanged,
    this.isEnabled = true,
    this.labelText,
    this.subLabelText,
    this.padding,
    this.labelStyle,
    this.subLabelStyle,
    this.onBgColor,
    this.offBgColor,
    this.disabledBgColor,
    this.onThumbColor,
    this.offThumbColor,
    this.disabledThumbColor,
    this.textColor,
    this.subLabelTextColor,
  });

  @override
  Widget build(BuildContext context) {
    final ToggleButtonColors colors = ToggleButtonColors(
      onBgColor: onBgColor ?? OColor.green600,
      offBgColor: offBgColor ?? OColor.gray200,
      disabledBgColor: disabledBgColor ?? Colors.grey.shade300,
      onThumbColor: onThumbColor ?? Colors.white,
      offThumbColor: offThumbColor ?? Colors.white,
      disabledThumbColor: disabledThumbColor ?? Colors.grey.shade100,
      subLabelTextColor: subLabelTextColor ?? Colors.black,
      textColor: textColor ?? Colors.black,
    );
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
            padding: padding ?? const EdgeInsets.all(2),
            decoration: BoxDecoration(
              color:
                  !isEnabled
                      ? colors.disabledBgColor
                      : value
                      ? colors.onBgColor
                      : colors.offBgColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: AnimatedAlign(
              duration: const Duration(milliseconds: 200),
              alignment: value ? Alignment.centerRight : Alignment.centerLeft,
              child: Container(
                width: 16,
                height: 16,
                decoration: BoxDecoration(
                  color:
                      !isEnabled
                          ? colors.disabledThumbColor
                          : value
                          ? colors.onThumbColor
                          : colors.offThumbColor,
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
            ),
          ),
        ),

        if (labelText != null || subLabelText != null) ...[
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (labelText != null) ...[
                Text(
                  labelText!,
                  //TODO add textstyle
                  style: labelStyle ?? TextStyle(),
                ),
              ],
              if (subLabelText != null) ...[
                Text(
                  subLabelText!,
                  //TODO add textstyle
                  style: subLabelStyle ?? TextStyle(),
                ),
              ],
            ],
          ),
        ],
      ],
    );
  }
}
