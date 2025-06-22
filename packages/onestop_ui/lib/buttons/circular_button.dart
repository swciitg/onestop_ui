import 'package:flutter/material.dart';
import 'package:onestop_ui/utils/colors.dart';

enum CircularButtonSize { small, large }

class CircularButton extends StatefulWidget {
  // final String label;
  final IconData icon;
  final VoidCallback? onPressed;
  final bool enabled;
  final CircularButtonSize size;
  final Color? bgColor;
  final Color? iconColor;
  final Color? disabledIcnColor;
  final Color? splashColor;
  final EdgeInsets? padding;

  const CircularButton({
    super.key,
    required this.icon,
    required this.onPressed,
    this.enabled = true,
    this.size = CircularButtonSize.large,
    this.bgColor,
    this.padding,
    this.iconColor,
    this.disabledIcnColor,
    this.splashColor,
  });

  @override
  State<CircularButton> createState() => _CircularButtonState();
}

class _CircularButtonState extends State<CircularButton> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    final bool isSmall = widget.size == CircularButtonSize.small;

    final isDisabled = widget.onPressed == null || !widget.enabled;

    Color backgroundColor =
        isDisabled
            ? widget.bgColor != null
                ? widget.bgColor!
                : OColor.gray100
            : _isPressed
            ? widget.splashColor ?? OColor.gray200
            : widget.bgColor != null
            ? widget.bgColor!
            : OColor.gray100;

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
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(50),
        ),
        padding: widget.padding ?? EdgeInsets.all(8),
        child: Icon(widget.icon, size: isSmall ? 24 : 32, color: isDisabled ?widget.disabledIcnColor?? OColor.gray400 : widget.iconColor?? OColor.green600),
      ),
    );
  }
}
