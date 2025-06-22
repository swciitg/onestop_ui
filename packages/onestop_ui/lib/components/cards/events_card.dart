import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:onestop_ui/index.dart';

class OEventCard extends StatefulWidget {
  final String heading;
  final String subLabel1;
  final String subLabel2;
  final IconData? subLabelIcon1;
  final IconData? subLabelIcon2;
  final bool isEnabled;
  final Function()? onArrowPressed;
  final String? buttonLabel;
  final IconData? buttonIcon;
  final Function()? pressedButton;
  final IconData? labelIcon;
  final String? label;

  const OEventCard({
    super.key,
    required this.heading,
    this.isEnabled = true,
    this.onArrowPressed,
    this.buttonLabel,
    this.buttonIcon,
    this.pressedButton,
    this.labelIcon,
    this.label,
    this.subLabel1 = 'N/A',
    this.subLabel2 = 'N/A',
    this.subLabelIcon1 ,
    this.subLabelIcon2 ,
  });

  @override
  State<OEventCard> createState() => _OEventCardState();
}

class _OEventCardState extends State<OEventCard> {
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
        alignment: Alignment.bottomCenter,
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
              padding: const EdgeInsets.symmetric(
                horizontal: OSpacing.xs,
                vertical: OSpacing.xs,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(OCornerRadius.l),
                border: Border.all(color: OColor.gray200, width: 1),
                color:  _isPressed ? OColor.gray200 : OColor.white,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(OSpacing.xs),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 4,
                          height: 25,
                          decoration: BoxDecoration(
                            color: widget.isEnabled?OColor.green600:OColor.gray600,
                            borderRadius: BorderRadius.circular(
                              OCornerRadius.xl,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: OSpacing.xs,
                          ),
                          child: OText(
                            text: widget.heading,
                            style: OTextStyle.headingSmall.copyWith(
                              color: widget.isEnabled?OColor.gray800:OColor.gray600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top :OSpacing.xs),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Column(
                          children: [
                            OCardLabels(
                              label: widget.subLabel1,
                              icon: widget.subLabelIcon1!,
                              color: widget.isEnabled?OColor.gray600:OColor.gray400,
                            ),
                            OCardLabels(
                              label: widget.subLabel2,
                              icon: widget.subLabelIcon2!,
                              color: widget.isEnabled?OColor.gray600:OColor.gray400,
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: OSpacing.xs,
                          ),
                          child: Container(
                            padding: const EdgeInsets.all(OSpacing.xs),
                            decoration: BoxDecoration(
                              color:
                                  widget.isEnabled
                                      ? OColor.green100
                                      : OColor.gray200,
                              borderRadius: BorderRadius.circular(OCornerRadius.xl),
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  widget.labelIcon,
                                  size: 16,
                                  color:
                                      widget.isEnabled
                                          ? OColor.green700
                                          : OColor.gray600,
                                ),
                                OText(
                                  text: widget.label,
                                  style: OTextStyle.labelXSmall.copyWith(
                                    color:
                                        widget.isEnabled
                                            ? OColor.green700
                                            : OColor.gray600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: OSpacing.xs),
                    child: Divider(
                      height: 2,
                      color: OColor.gray200,
                      thickness: 1,
                      indent: OSpacing.xs,
                      endIndent: OSpacing.xs,
                    ),
                  ),
                  SizedBox(height: OSpacing.xl+5),
                ],
              ),
            ),
          ),
          TextButton.icon(
            onPressed:
                widget.isEnabled
                    ? () {
                      setState(() => _isPressed = false);
                      widget.pressedButton;
                    }
                    : null,
            icon: Icon(
              widget.buttonIcon,
              size: 16,
              color: widget.isEnabled ? OColor.red500 : OColor.gray400,
            ),
            label: OText(
              text: widget.buttonLabel,
              style: OTextStyle.labelSmall.copyWith(
                color: widget.isEnabled ? OColor.red500 : OColor.gray400,
              ),
            ),
          ),
          Positioned(
            top: 5,
            right: 5,
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
  @ override
  void dispose(){
    super.dispose();
  }
}
