import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

import '../../index.dart';

class OCabSharingCard extends StatefulWidget {
  final String origin;
  final String destination;
  final String time;
  final String date;
  final String? status;
  final IconData? statusIcon;
  final String? subHeading;
  final String? userName;
  final String? imageURl;
  final String? buttonLabel1;
  final IconData? buttonIcon1;
  final String? buttonLabel2;
  final IconData? buttonIcon2;
  final bool isUserAvailable;
  final bool isEnabled;
  final bool byTrain;
  final Function()? onArrowPressed;
  final Function()? pressedButton1;
  final Function()? pressedButton2;
  const OCabSharingCard({
    super.key,
    required this.origin,
    required this.destination,
    required this.time,
    required this.date,
    this.isEnabled = true,
    this.byTrain = false,
    this.isUserAvailable = true,
    this.onArrowPressed,
    this.pressedButton1,
    this.pressedButton2,
    this.imageURl,
    this.userName,
    this.subHeading,
    this.status,
    this.statusIcon,
    this.buttonIcon1,
    this.buttonIcon2,
    this.buttonLabel1,
    this.buttonLabel2,
  });

  @override
  State<OCabSharingCard> createState() => _OCabSharingCardState();
}

class _OCabSharingCardState extends State<OCabSharingCard> {
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
              padding: EdgeInsets.all(OSpacing.xs),
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
                      vertical: OSpacing.s,
                      horizontal: OSpacing.xs,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundColor:
                              widget.isEnabled
                                  ? Color(0xFF4D51EF)
                                  : OColor.gray600,
                          radius: 12,
                          child: Icon(
                            TablerIcons.school,
                            color:
                                widget.isEnabled
                                    ? OColor.white
                                    : OColor.gray100,
                            size: 16,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: OSpacing.xxs,
                          ),
                          child: OText(
                            text: widget.origin,
                            style: OTextStyle.labelMedium.copyWith(
                              color:
                                  widget.isEnabled
                                      ? OColor.gray800
                                      : OColor.gray600,
                            ),
                          ),
                        ),
                        Icon(
                          TablerIcons.arrow_narrow_right,
                          color: OColor.gray500,
                          size: 24,
                        ),
                        CircleAvatar(
                          backgroundColor:
                              widget.isEnabled
                                  ? widget.byTrain
                                      ? Color(0xFF14B8A6)
                                      : Color(0xFF0D99D8)
                                  : OColor.gray600,
                          radius: 12,
                          child: Icon(
                            widget.byTrain
                                ? TablerIcons.train
                                : TablerIcons.plane_tilt,
                            color:
                                widget.isEnabled
                                    ? OColor.white
                                    : OColor.gray100,
                            size: 16,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: OSpacing.xxs,
                          ),
                          child: OText(
                            text: widget.destination,
                            style: OTextStyle.labelMedium.copyWith(
                              color:
                                  widget.isEnabled
                                      ? OColor.gray800
                                      : OColor.gray600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: OSpacing.xs,
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(OSpacing.xxs),
                          decoration: BoxDecoration(
                            color:
                                widget.isEnabled
                                    ? OColor.yellow100
                                    : OColor.gray200,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                widget.statusIcon,
                                size: 16,
                                color:
                                    widget.isEnabled
                                        ? OColor.yellow800
                                        : OColor.gray600,
                              ),
                              OText(
                                text: widget.status,
                                style: OTextStyle.labelXSmall.copyWith(
                                  color:
                                      widget.isEnabled
                                          ? OColor.yellow800
                                          : OColor.gray600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: OSpacing.xs,
                          right: OSpacing.xxs,
                        ),
                        child: Icon(
                          TablerIcons.clock_pin,
                          size: 16,
                          color:
                              widget.isEnabled
                                  ? OColor.gray600
                                  : OColor.gray400,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(OSpacing.xxs),
                        child: OText(
                          text: widget.time,
                          style: OTextStyle.labelXSmall.copyWith(
                            color:
                                widget.isEnabled
                                    ? OColor.gray600
                                    : OColor.gray400,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(OSpacing.xxs),
                        child: Icon(
                          TablerIcons.calendar_pin,
                          size: 16,
                          color:
                              widget.isEnabled
                                  ? OColor.gray600
                                  : OColor.gray400,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(OSpacing.xxs),
                        child: OText(
                          text: widget.date,
                          style: OTextStyle.labelXSmall.copyWith(
                            color:
                                widget.isEnabled
                                    ? OColor.gray600
                                    : OColor.gray400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(OSpacing.xs),
                    child: OText(
                      text: widget.subHeading,
                      style: OTextStyle.bodyXSmall.copyWith(
                        color:
                            widget.isEnabled ? OColor.gray600 : OColor.gray400,
                      ),
                    ),
                  ),
                  Divider(
                    height: 2,
                    color: OColor.gray200,
                    thickness: 1,
                    indent: OSpacing.xs,
                    endIndent: OSpacing.xs,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: OSpacing.xs,
                    ),
                    child: Row(
                      mainAxisAlignment:
                          widget.isUserAvailable
                              ? MainAxisAlignment.spaceBetween
                              : MainAxisAlignment.center,
                      children: [
                        if (widget.isUserAvailable == true)
                          Row(
                            children: [
                              Container(
                                width: 24,
                                height: 24,
                                decoration: BoxDecoration(
                                  color: OColor.gray400,
                                  image: DecorationImage(
                                    image: NetworkImage(widget.imageURl!,),
                                    fit: BoxFit.cover,
                                    opacity: widget.isEnabled ? 1 : 0.2,
                                  ),
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
                                  text: widget.userName,
                                  style: OTextStyle.labelSmall.copyWith(
                                    color:
                                        widget.isEnabled
                                            ? OColor.gray800
                                            : OColor.gray600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        Row(
                          children: [
                            TextButton.icon(
                              onPressed:
                                  widget.isEnabled
                                      ? () {
                                        setState(() => _isPressed = false);
                                        widget.pressedButton1;
                                      }
                                      : null,
                              icon: Icon(
                                widget.buttonIcon1,
                                size: 16,
                                color:
                                    widget.isEnabled
                                        ? OColor.green600
                                        : OColor.gray400,
                              ),
                              label: OText(
                                text: widget.buttonLabel1,
                                style: OTextStyle.labelSmall.copyWith(
                                  color:
                                      widget.isEnabled
                                          ? OColor.green600
                                          : OColor.gray400,
                                ),
                              ),
                            ),
                            if (widget.isUserAvailable != true)
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.25,
                              ),
                            TextButton.icon(
                              onPressed:
                                  widget.isEnabled
                                      ? () {
                                        setState(() => _isPressed = false);
                                        widget.pressedButton2;
                                      }
                                      : null,
                              icon: Icon(
                                widget.buttonIcon2,
                                size: 16,
                                color:
                                    widget.isEnabled
                                        ? OColor.green600
                                        : OColor.gray400,
                              ),
                              label: OText(
                                text: widget.buttonLabel2,
                                style: OTextStyle.labelSmall.copyWith(
                                  color:
                                      widget.isEnabled
                                          ? OColor.green600
                                          : OColor.gray400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 10,
            right: 10,
            child: IconButton(
              icon: Icon(TablerIcons.chevron_right),
              onPressed: widget.isEnabled ? widget.onArrowPressed : null,
              iconSize: 24,
              disabledColor: OColor.gray400,
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
