import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:onestop_ui/index.dart';

class OCardHeader extends StatelessWidget {
  final IconData? icon;
  final String heading;
  final String? subheading;
  final Function()? onArrowPressed;
  final bool onClickArrow;
  const OCardHeader({
    super.key,
    this.icon,
    required this.heading,
    this.subheading,
    this.onArrowPressed,
    this.onClickArrow = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: OSpacing.s,vertical: OSpacing.xxs),
      color: Colors.transparent,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (icon != null)
                Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                    color: OColor.green100,
                    borderRadius: BorderRadius.all(
                      Radius.circular(OCornerRadius.s),
                    ),
                  ),
                  child: Icon(icon, size: 16, color: OColor.green600),
                ),
              SizedBox(width: OSpacing.xs),
              OText(
                text: heading,
                style: OTextStyle.headingSmall.copyWith(color: OColor.gray800),
              ),
              SizedBox(width: OSpacing.xs),
              if (subheading != null)
                Icon(TablerIcons.point_filled, size: 4, color: OColor.gray600),
              SizedBox(width: OSpacing.xs),
              OText(
                text: subheading,
                style: OTextStyle.labelXSmall.copyWith(color: OColor.gray600),
              ),
            ],
          ),
          if(onClickArrow == true)
          IconButton(
            icon: Icon(
              TablerIcons.chevron_right,
              size: 16,
              color: OColor.gray600,
            ),
            onPressed: onArrowPressed,
          ),
        ],
      ),
    );
  }
}
