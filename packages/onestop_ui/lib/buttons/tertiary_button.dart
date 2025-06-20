import 'package:flutter/material.dart';
import 'package:onestop_ui/utils/colors.dart';

class TertiaryButton extends StatefulWidget {
  final String label;
  final VoidCallback? onPressed;
  final bool enabled;
  final double? height;
  final double? width;
  final TextStyle? labelStyle;
  final TextStyle disabledTextStyle;
  final Color bgColor;
  final Color? opColor;
  final Color diabledBgColor;
  final IconData? leadingIcon;
  final Color? iconColor;
  final IconData? tarilingIcon;
  final String? subLabel;
  final TextStyle? subLabelStyle;
  final EdgeInsets? padding;

  const TertiaryButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.enabled = true,
    this.height,
    this.width,
    this.labelStyle,
    this.disabledTextStyle = const TextStyle(
      color: Color(0xFFBABABF),
      fontSize: 16,
      fontWeight: FontWeight.w500,
    ),
    this.bgColor = Colors.transparent,
    this.opColor ,
    this.diabledBgColor = Colors.transparent,
    this.leadingIcon,
    this.tarilingIcon,
    this.iconColor,
    this.subLabel, 
    this.subLabelStyle, this.padding,
  });

  @override
  State<TertiaryButton> createState() => _TertiaryButtonState();
}

class _TertiaryButtonState extends State<TertiaryButton> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    final Color textColor = _isPressed ? OColor.green700 : OColor.green600;

    final TextStyle labelStyle =
        widget.labelStyle ??
        TextStyle(
          color: textColor,
          fontSize: 16,
          fontFamily: 'Geist',
          fontWeight: FontWeight.w500,
          height: 1.50,
        );
    final TextStyle subLabelStyle =
        widget.subLabelStyle ??
        TextStyle(
          color: textColor,
          fontSize: 12,
          fontFamily: 'Geist',
          fontWeight: FontWeight.w500,
          height: 1.33,
        );

    final isDisabled = widget.onPressed == null || !widget.enabled;

    final Color iconColor = isDisabled ? OColor.gray400 : widget.iconColor??textColor;

    final Color backgroundColor =
        isDisabled
            ? widget.diabledBgColor
            : _isPressed
            ? widget.opColor??OColor.gray200
            : widget.bgColor;

    return GestureDetector(
      onTapDown: (_) {
        if (!isDisabled) setState(() => _isPressed = true);
      },
      onTapUp: (_) {
        if (!isDisabled) {
          setState(() => _isPressed = false);
          widget.onPressed?.call();
        }
      },
      onTapCancel: () {
        if (!isDisabled) setState(() => _isPressed = false);
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        padding: widget.padding?? EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(16),
        ),
        height: widget.height,
        width: widget.width,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                if (widget.leadingIcon != null) ...[
                  Icon(widget.leadingIcon, color: iconColor),
                  const SizedBox(width: 8),
                ],

                Text(
                  widget.label,
                  style: isDisabled ? widget.disabledTextStyle : labelStyle,
                ),
                if (widget.tarilingIcon != null) ...[
                  const SizedBox(width: 8),
                  Icon(widget.tarilingIcon, color: iconColor),
                ],
              ],
            ),
            if(widget.subLabel!=null)...[
              Text(
                  widget.subLabel!,
                  style: isDisabled ? widget.disabledTextStyle : subLabelStyle,
                ),
            ]
          ],
        ),
      ),
    );
  }
}
