import 'package:flutter/material.dart';
import 'package:onestop_ui/utils/colors.dart';

class my_Badge extends StatelessWidget {
  String type;

  my_Badge({required this.type, super.key});

  @override
  Color? color;
  Widget build(BuildContext context) {
    if (type == 'Normal Hint') color = OBaseColors.blue500;
    if (type == 'Warning') color = OBaseColors.warning500;
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
