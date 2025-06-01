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
    if (type == "Accent Color") {
      color_bg = OBaseColors.blue50;
      color_fg = const Color.fromARGB(255, 17, 97, 225);
    }
    if (type == "Neutral") {
      color_bg = OBaseColors.gray100;
      color_fg = OBaseColors.gray600;
    }
    return Container(
      height: 24,
      width: 94,
      decoration: BoxDecoration(
        color: color_bg,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          SizedBox(width: 8),
          Icon(lead, size: 16, color: color_fg),
          Center(child: Text(label, style: OTextStyle.lableXSmall)),
          Icon(trail, size: 16, color: color_fg),
        ],
      ),
    );
  }
}
