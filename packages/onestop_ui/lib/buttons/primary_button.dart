import 'package:flutter/material.dart';

class PrimaryButton extends StatefulWidget {
  final String label;
  final VoidCallback? onPressed;
  final bool enabled;
  final double? height;
  final double? width;
  final TextStyle? labelStyle;
  final TextStyle disabledTextStyle;
  final Color bgColor;
  ///on pressed color
  final Color opColor;
  final Color diabledBgColor;
  final IconData? leadingIcon;
  final Color iconColor;
  final IconData? tarilingIcon;

  const PrimaryButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.enabled = true,
    this.height,
    this.width,
    this.labelStyle = const TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500,),
    this.disabledTextStyle = const TextStyle(color: Color(0xFFBABABF),fontSize: 16,fontWeight: FontWeight.w500,),
    this.bgColor = const Color(0xFF148541),
    this.opColor = const Color(0xFF085E2A),
    this.diabledBgColor = const Color(0xFFDCEFE4),
    this.leadingIcon,
    this.tarilingIcon,  
    this.iconColor= Colors.white,
  });

  @override
  State<PrimaryButton> createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    final isDisabled = widget.onPressed == null || !widget.enabled;

    final Color iconColor = isDisabled?Color(0xFFBABABF):widget.iconColor;

    final Color backgroundColor =
        isDisabled
            ? Colors.grey.shade200
            : _isPressed? widget.opColor: widget.bgColor;

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
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(16),
        ),
        height: widget.height,
        width: widget.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            if(widget.leadingIcon!=null)...[
              Icon(widget.leadingIcon,color:iconColor),
              const SizedBox(width: 8),
            ],            
            
            Text(
              widget.label,
              style: isDisabled ? widget.disabledTextStyle : widget.labelStyle,
            ),
            if(widget.tarilingIcon!=null)...[
              const SizedBox(width: 8),
              Icon(widget.tarilingIcon,color: iconColor,),
              
            ],    
          ],
        ),
      ),
    );
  }
}
