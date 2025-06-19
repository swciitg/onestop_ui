import 'package:flutter/material.dart';
import 'package:onestop_ui/index.dart';

enum TagType { accentColor, neutral }

class OTag extends StatelessWidget {
  final TagType type;
  final IconData lead;
  final IconData trail;
  final String label;

  const OTag({
    super.key,
    required this.type,
    required this.lead,
    required this.label,
    required this.trail,
  });

  Color get backgroundColor {
    switch (type) {
      case TagType.accentColor:
        return OColor.blue50;
      case TagType.neutral:
        return OColor.gray100;
    }
  }

  Color get foregroundColor {
    switch (type) {
      case TagType.accentColor:
        return OColor.blue500;
      case TagType.neutral:
        return OColor.gray600;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(width: 8),
          Icon(lead, size: 16, color: foregroundColor),
          const SizedBox(width: 4),
          Center(
            child: Text(
              label,
              style: OTextStyle.lableXSmall.copyWith(color: foregroundColor),
            ),
          ),
          const SizedBox(width: 4),
          Icon(trail, size: 16, color: foregroundColor),
          const SizedBox(width: 8),
        ],
      ),
    );
  }
}
