import 'package:flutter/material.dart';
import 'package:onestop_ui/utils/colors.dart';

class IconBtn extends StatefulWidget {
  final String label;
  final IconData icon;
  final VoidCallback? onPressed;
  final bool enabled;
  final EdgeInsets? padding;
  final Color? iconColor;
  final Color? disabledIcnColor;
  final Color? textColor;
  final Color? disabledTextColor;
  final Color? splashColor;

  const IconBtn({
    super.key,
    required this.label,
    required this.icon,
    required this.onPressed,
    this.enabled = true,
    this.padding,
    this.iconColor,
    this.disabledIcnColor,
    this.textColor,
    this.disabledTextColor, this.splashColor,
  });

  @override
  State<IconBtn> createState() => _IconBtnState();
}

class _IconBtnState extends State<IconBtn> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    final isDisabled = widget.onPressed == null || !widget.enabled;

    final Color iconColor = isDisabled ? widget.disabledIcnColor?? OColor.gray400 : widget.iconColor?? OColor.green600;

    final Color backgroundColor =
        isDisabled
            ? Colors.transparent
            : _isPressed
            ? widget.splashColor?? OColor.gray100
            : Colors.transparent;

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
        duration: Duration(microseconds: 100),
        width: 77,
        height: 96,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(4),
        ),
        padding: widget.padding ?? EdgeInsets.all(8),
        child: Column(
          children: [
            Icon(widget.icon, size: 32, color: iconColor),
            SizedBox(height: 8),
            Text(
              widget.label,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: isDisabled ? widget.disabledTextColor?? OColor.gray400 : widget.textColor?? OColor.gray800,
                fontSize: 14,
                fontFamily: 'Geist',
                fontWeight: FontWeight.w500,
                height: 1.43,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
