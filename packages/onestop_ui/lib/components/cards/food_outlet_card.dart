import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

import '../../index.dart';

class FoodOutletCard extends StatefulWidget {
  final String heading;
  final String? subHeading;
  final Function()? onArrowPressed;
  final String? tag;
  final bool isEnabled;
  final String imageUrl;
  final String subLabelText1;
  final String subLabelText2;
  final IconData subLabelIcon1;
  final IconData subLabelIcon2;
  const FoodOutletCard({
    super.key,
    this.isEnabled = false,
    required this.imageUrl,
    required this.heading,
    this.subHeading,
    this.tag,
    this.onArrowPressed,
    this.subLabelText1 = 'NA',
    this.subLabelText2 = 'NA',
    this.subLabelIcon1 = TablerIcons.arrow_rotary_first_left,
    this.subLabelIcon2 = TablerIcons.arrow_rotary_first_left,
  });

  @override
  State<FoodOutletCard> createState() => _FoodOutletCardState();
}

class _FoodOutletCardState extends State<FoodOutletCard> {
  bool _isPressed = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(OSpacing.xs),
      child: Stack(
        children: [
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTapDown:
                (_) =>
                    widget.isEnabled
                        ? setState(() => _isPressed = true)
                        : null, //engage behaviour when search bar is tapped
            onTapUp: (_) {
              setState(() => _isPressed = false);
            },
            child: Container(
              decoration: BoxDecoration(
                color: _isPressed ? OColor.gray200 : OColor.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(OCornerRadius.l),
                ),
                border: Border.all(color: OColor.gray200, width: 1),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: OSpacing.xs,
                      vertical: OSpacing.m,
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 48,
                          height: 48,
                          decoration: BoxDecoration(
                            color: OColor.gray400,
                            image: DecorationImage(
                              image: NetworkImage(widget.imageUrl),
                              fit: BoxFit.cover,
                              opacity: widget.isEnabled ? 1 : 0.2,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: OSpacing.s,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              OText(
                                text: widget.heading,
                                style: OTextStyle.labelMedium.copyWith(
                                  color:
                                      widget.isEnabled
                                          ? OColor.gray800
                                          : OColor.gray600,
                                ),
                              ),
                              const SizedBox(height: OSpacing.xxs),
                              OText(
                                text: widget.subHeading,
                                style: OTextStyle.bodySmall.copyWith(
                                  color:
                                      widget.isEnabled
                                          ? OColor.gray800
                                          : OColor.gray300,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (widget.tag != null)
                    OTag(
                      type: widget.isEnabled?TagType.accentColor:TagType.neutral,
                      lead: TablerIcons.arrow_rotary_first_left,
                      label: widget.tag!,
                      trail: TablerIcons.arrow_rotary_first_left,
                    ),
                  Padding(
                    padding: const EdgeInsets.only(top: OSpacing.xs),
                    child: OCardLabels(
                      label: widget.subLabelText1,
                      icon: widget.subLabelIcon1,
                      color: widget.isEnabled ? OColor.gray600 : OColor.gray300,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: OSpacing.s),
                    child: OCardLabels(
                      label: widget.subLabelText2,
                      icon: widget.subLabelIcon2,
                      color: widget.isEnabled ? OColor.gray600 : OColor.gray300,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 16,
            right: 10,
            child: IconButton(
              icon: Icon(
                TablerIcons.chevron_right,
                color: widget.isEnabled ? OColor.gray600 : OColor.gray300,
              ),
              onPressed: widget.isEnabled ? widget.onArrowPressed : null,
              iconSize: 24,
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
