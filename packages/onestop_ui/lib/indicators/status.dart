import 'package:flutter/material.dart';
import 'package:onestop_ui/utils/colors.dart';
import 'package:onestop_ui/utils/styles.dart';

enum StatusType { warning, positive, negative }

class OStatus extends StatelessWidget {
  final StatusType type;
  final String label;

  const OStatus({super.key, required this.type, required this.label});

  Color get backgroundColor {
    switch (type) {
      case StatusType.warning:
        return OColor.yellow100;
      case StatusType.positive:
        return OColor.green100;
      case StatusType.negative:
        return OColor.red100;
    }
  }

  Color get foregroundColor {
    switch (type) {
      case StatusType.warning:
        return OColor.yellow800;
      case StatusType.positive:
        return OColor.green700;
      case StatusType.negative:
        return OColor.red600;
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
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Center(
          child: Text(
            label,
            style: OTextStyle.lableXSmall.copyWith(color: foregroundColor),
          ),
        ),
      ),
    );
  }
}
