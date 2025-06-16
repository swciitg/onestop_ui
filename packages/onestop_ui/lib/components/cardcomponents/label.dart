import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:onestop_ui/index.dart';

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
      padding: EdgeInsets.symmetric(horizontal: OSpacing.s,vertical: OSpacing.xxs),
      decoration: BoxDecoration(color: Colors.transparent),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon, size: 16, color: OColor.gray600),
          SizedBox(width: OSpacing.s),
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
  final List<String> labelItems;
  final bool isSmall;
  const OLabelGroups({
    super.key,
    required this.labelItems,
    this.isSmall = false,
  });

  @override
  Widget build(BuildContext context) {
    if (labelItems.isEmpty) {
      return SizedBox(width: double.minPositive,); // Return nothing if the list is empty
    }
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:OSpacing.s,vertical: OSpacing.xxs),
      child: Wrap(
        // Controls the vertical gap between lines
        runSpacing: OSpacing.xs,
        alignment: WrapAlignment.spaceBetween,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          for (int i = 0; i < labelItems.length; i++) ...[
            OText(
              text: labelItems[i],
              style:
                  isSmall
                      ? OTextStyle.labelXSmall.copyWith(color: OColor.gray600)
                      : OTextStyle.labelSmall.copyWith(color: OColor.gray600),
            ),
            if (i < labelItems.length - 1) ...{Icon(TablerIcons.point_filled, size: 4, color: OColor.gray600)},
          ],
        ],
      ),
    );
  }
}
