import 'package:flutter/material.dart';
import 'package:onestop_ui/utils/colors.dart';

enum BadgeType { normalHint, warning }

class OBadge extends StatelessWidget {
  final BadgeType type;

  const OBadge({required this.type, super.key});

  Color _getBadgeColor() {
    switch (type) {
      case BadgeType.normalHint:
        return OColor.blue500;
      case BadgeType.warning:
        return OColor.yellow500;
    }
  }

  @override
  Widget build(BuildContext context) {
    final color = _getBadgeColor();

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
