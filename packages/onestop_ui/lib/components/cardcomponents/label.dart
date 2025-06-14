import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

import '../../utils/colors.dart';
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
          Icon(icon, size: 16, color: OColor.gray600),
          OText(
            text: label,
            style:
                isSmall
                    ? OTextStyle.labelXSmall.copyWith(color: OColor.gray600)
                    : OTextStyle.labelSmall.copyWith(color: OColor.gray600),
          ),
        ],
      ),
    );
  }
}

class OLabelGroups extends StatelessWidget {
  final String label1;
  final String label2;
  final String? label3;
  final bool isSmall;
  const OLabelGroups({
    super.key,
    required this.label1,
    required this.label2,
    this.label3,
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
          OText(
            text: label1,
            style:
                isSmall
                    ? OTextStyle.labelXSmall.copyWith(color: OColor.gray600)
                    : OTextStyle.labelSmall.copyWith(color: OColor.gray600),
          ),
          Icon(TablerIcons.point_filled, size: 4, color: OColor.gray600),
          OText(
            text: label2,
            style:
                isSmall
                    ? OTextStyle.labelXSmall.copyWith(color: OColor.gray600)
                    : OTextStyle.labelSmall.copyWith(color: OColor.gray600),
          ),
          if (label3 != null)
            Icon(TablerIcons.point_filled, size: 4, color: OColor.gray600),
          OText(
            text: label3,
            style:
                isSmall
                    ? OTextStyle.labelXSmall.copyWith(color: OColor.gray600)
                    : OTextStyle.labelSmall.copyWith(color: OColor.gray600),
          ),
        ],
      ),
    );
  }
}
