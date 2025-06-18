import 'package:flutter/material.dart';
import 'package:onestop_ui/index.dart';

class Tag extends StatefulWidget {
  final String type;
  final IconData lead;
  final IconData trail;
  final String label;
  const Tag({
    required this.type,
    required this.lead,
    required this.label,
    required this.trail,
    super.key,
  });

  @override
  State<Tag> createState() => _TagState();
}

class _TagState extends State<Tag> {
  Color? colorFg;
  Color? colorBg;

  @override
  Widget build(BuildContext context) {
    String type_ = widget.type.toLowerCase();
    if (type_ == "accent color") {
      colorBg = OColor.blue50;
      colorFg = OColor.blue500;
    }
    if (type_ == "neutral") {
      colorBg = OColor.gray100;
      colorFg = OColor.gray600;
    }
    return Container(
      height: 24,
      margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      decoration: BoxDecoration(
        color: colorBg,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(width: 8),
          Icon(widget.lead, size: 16, color: colorFg),
          SizedBox(width: 4),
          SizedBox(
            child: Center(
              child: Text(
                widget.label,
                style: OTextStyle.lableXSmall.copyWith(color: colorFg),
              ),
            ),
          ),
          SizedBox(width: 4),
          Icon(widget.trail, size: 16, color: colorFg),
          SizedBox(width: 8),
        ],
      ),
    );
  }
}
