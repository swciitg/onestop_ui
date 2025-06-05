import 'package:flutter/material.dart';
import 'package:onestop_ui/index.dart';
import 'package:onestop_ui/utils/colors.dart';

class Tag extends StatelessWidget {
  String type;
  IconData lead;
  IconData trail;
  String label;
  Tag({
    required this.type,
    required this.lead,
    required this.label,
    required this.trail,

    super.key,
  });

  @override
  Color? color_fg;

  Color? color_bg;

  Widget build(BuildContext context) {
    String type_ = type.toLowerCase();
    if (type_ == "accent color") {
      color_bg = OColor.blue50;
      color_fg = OColor.blue500;
    }
    if (type_ == "neutral") {
      color_bg = OColor.gray100;
      color_fg = OColor.gray600;
    }
    return Container(
      height: 24,
      margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      decoration: BoxDecoration(
        color: color_bg,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(width: 8),
          Icon(lead, size: 16, color: color_fg),
          SizedBox(width: 4),
          SizedBox(
            child: Center(
              child: Text(
                label,
                style: OTextStyle.lableXSmall.copyWith(color: color_fg),
              ),
            ),
          ),
          SizedBox(width: 4),
          Icon(trail, size: 16, color: color_fg),
          SizedBox(width: 8),
        ],
      ),
    );
  }
}
