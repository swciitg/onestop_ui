import 'package:flutter/material.dart';

import '../../utils/styles.dart';
import '../text.dart';

class OCardLabels extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isSmall;
  const OCardLabels({
    super.key,
    required this.label,
    required this.icon,
    this.isSmall = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.transparent),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon),
          OText(
            text: label,
            style: isSmall ? OTextStyle.labelXSmall : OTextStyle.labelSmall,
          ),
        ],
      ),
    );
  }
}
