import 'package:flutter/material.dart';
import 'package:onestop_ui/utils/colors.dart';

class my_Badge extends StatelessWidget {
  String type;

  my_Badge({required this.type, super.key});

  @override
  Color? color;
  Widget build(BuildContext context) {
    String type_ = type.toLowerCase();
    if (type_ == 'normal hint') color = OColor.blue500;
    if (type_ == 'warning') color = OColor.yellow500;
    return Container(
      height: 12,
      width: 12,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
