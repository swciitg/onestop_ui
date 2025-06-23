import 'package:flutter/material.dart';
import 'package:onestop_ui/utils/colors.dart';
import 'package:onestop_ui/utils/styles.dart';

enum StatusType { warning, positive, negative }

class OStatus extends StatelessWidget {
  final StatusType type;
  final String label;
  final IconData lead;

  const OStatus({
    super.key,
    required this.type,
    required this.label,
    required this.lead,
  });

  Color get backgroundColor => switch (type) {
    StatusType.warning => OColor.yellow100,
    StatusType.positive => OColor.green100,
    StatusType.negative => OColor.red100,
  };

  Color get foregroundColor => switch (type) {
    StatusType.warning => OColor.yellow800,
    StatusType.positive => OColor.green700,
    StatusType.negative => OColor.red600,
  };

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
              style: OTextStyle.labelXSmall.copyWith(color: foregroundColor),
            ),
          ),
          const SizedBox(width: 8),
        ],
      ),
    );
  }
}
