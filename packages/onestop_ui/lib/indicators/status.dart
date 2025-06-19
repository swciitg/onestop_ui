import 'package:flutter/material.dart';
import 'package:onestop_ui/utils/colors.dart';
import 'package:onestop_ui/utils/styles.dart';

class Status_Indicator extends StatelessWidget {
  String type;
  String label;

  Status_Indicator({required this.type, required this.label, super.key});

  @override
  Color? color_bg, color_fg;
  Widget build(BuildContext context) {
    String type_ = type.toLowerCase();
    if (type_ == 'warning') color_bg = OColor.yellow100;
    color_fg = OColor.yellow800;
    if (type_ == 'positive') color_bg = OColor.green100;
    color_fg = OColor.green700;
    if (type_ == 'negative') color_bg = OColor.red100;
    color_fg = OColor.red600;

    return Container(
      height: 24,
      margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      decoration: BoxDecoration(
        color: color_bg,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        label,
        style: OTextStyle.labelXSmall.copyWith(color: color_fg),
      ),
    );
  }
}
