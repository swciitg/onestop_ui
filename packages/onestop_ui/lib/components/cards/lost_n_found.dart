import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

import '../../index.dart';

class OLostFoundCard extends StatefulWidget {
  final String heading;
  final bool isEnabled;
  final bool isFound;
  final Function()? onArrowPressed;
  final String time;
  final String location;
  final String imageURl;
  final bool isEditingEnabled;
  final String? submittedAt;
  final String? userImageURl;
  final String? userName;
  final Function()? delete;
  final Function()?edit;
  final Function()? message;
  final Function()? phone;

  const OLostFoundCard({
    super.key,
    this.isEnabled = true,
    this.isEditingEnabled = false,
    this.onArrowPressed,
    this.isFound = true,
    this.submittedAt,
    this.userImageURl,
    this.userName,
    this.edit,
    this.message,
    this.phone,
    this.delete,
    required this.heading,
    required this.imageURl,
    required this.time,
    required this.location,
  });

  @override
  State<OLostFoundCard> createState() => _OLostFoundCardState();
}

class _OLostFoundCardState extends State<OLostFoundCard> {
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
              padding: const EdgeInsets.all(OSpacing.xs),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(OCornerRadius.l),
                border: Border.all(color: OColor.gray200, width: 1),
                color: _isPressed ? OColor.gray200 : OColor.white,
              ),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(OSpacing.xs),
                        child: Container(
                          width: 112,
                          height: 112,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              OCornerRadius.s,
                            ),
                            image: DecorationImage(
                              image: NetworkImage(widget.imageURl),
                              fit: BoxFit.cover,
                              opacity: widget.isEnabled ? 1 : 0.2,
                            ),
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: OSpacing.xxs,
                              vertical: OSpacing.xs,
                            ),
                            child: OText(
                              text: widget.heading,
                              style: OTextStyle.labelMedium.copyWith(
                                color: OColor.gray800,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: OSpacing.xs,
                                ),
                                child: Icon(
                                  TablerIcons.clock_question,
                                  size: 16,
                                  color:
                                      widget.isEnabled
                                          ? OColor.gray600
                                          : OColor.gray400,
                                ),
                              ),
                              OText(
                                text: widget.time,
                                style: OTextStyle.labelXSmall.copyWith(
                                  color:
                                      widget.isEnabled
                                          ? OColor.gray600
                                          : OColor.gray400,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: OSpacing.xs,
                                ),
                                child: Icon(
                                  TablerIcons.map_pin_question,
                                  size: 16,
                                  color:
                                      widget.isEnabled
                                          ? OColor.gray600
                                          : OColor.gray400,
                                ),
                              ),
                              OText(
                                text: widget.location,
                                style: OTextStyle.labelXSmall.copyWith(
                                  color:
                                      widget.isEnabled
                                          ? OColor.gray600
                                          : OColor.gray400,
                                ),
                              ),
                            ],
                          ),

                          if (widget.isFound == true)
                            Padding(
                              padding: const EdgeInsets.only(
                                left: OSpacing.xxs,
                                top: OSpacing.s,
                              ),
                              child: OText(
                                text: "SUBMITTED AT",
                                style: OTextStyle.labelXSmall.copyWith(
                                  color: OColor.gray600,
                                ),
                              ),
                            ),
                          if (widget.isFound == true)
                            Padding(
                              padding: const EdgeInsets.only(
                                left: OSpacing.xxs,
                              ),
                              child: OText(
                                text: widget.submittedAt,
                                style: OTextStyle.labelSmall.copyWith(
                                  color: OColor.gray800,
                                ),
                              ),
                            ),
                        ],
                      ),
                    ],
                  ),
                  Divider(
                    height: 2,
                    color: OColor.gray200,
                    thickness: 1,
                    indent: OSpacing.xs,
                    endIndent: OSpacing.xs,
                  ),
                  const SizedBox(height: OSpacing.xl + 15),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: OSpacing.s,
              vertical: OSpacing.xs,
            ),
            child: Row(
              mainAxisAlignment:
                  widget.isEditingEnabled
                      ? MainAxisAlignment.center
                      : MainAxisAlignment.spaceBetween,
              children: [
                if (widget.isEditingEnabled == false)
                  Row(
                    children: [
                      Container(
                        width: 24,
                        height: 24,
                        decoration: BoxDecoration(
                          color: OColor.gray400,
                          image: DecorationImage(
                            image: NetworkImage(widget.userImageURl!),
                            fit: BoxFit.cover,
                            opacity: widget.isEnabled ? 1 : 0.2,
                          ),
                          borderRadius: BorderRadius.circular(OCornerRadius.xl),
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
                if (widget.isEditingEnabled == false)
                  Row(
                    children: [
                      IconButton(
                        onPressed: widget.isEnabled ? widget.phone : null,
                        icon: Icon(
                          TablerIcons.phone,
                          size: 24,
                          color:
                              widget.isEnabled
                                  ? OColor.green600
                                  : OColor.gray400,
                        ),
                      ),
                      IconButton(
                        onPressed: widget.isEnabled ? widget.message : null,
                        icon: Icon(
                          TablerIcons.message,
                          size: 24,
                          color:
                              widget.isEnabled
                                  ? OColor.green600
                                  : OColor.gray400,
                        ),
                      ),
                    ],
                  ),
                if (widget.isEditingEnabled == true)
                  Row(
                    children: [
                      TextButton.icon(
                        onPressed: widget.isEnabled ? widget.edit : null,
                        icon: Icon(
                          TablerIcons.edit,
                          size: 16,
                          color:
                              widget.isEnabled
                                  ? OColor.green600
                                  : OColor.gray400,
                        ),
                        label: OText(
                          text: "Edit",
                          style: OTextStyle.labelSmall.copyWith(
                            color:
                                widget.isEnabled
                                    ? OColor.green600
                                    : OColor.gray400,
                          ),
                        ),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.25),
                      TextButton.icon(
                        onPressed: widget.isEnabled ? widget.delete : null,
                        icon: Icon(
                          TablerIcons.trash,
                          size: 16,
                          color:
                              widget.isEnabled ? OColor.red500 : OColor.gray400,
                        ),
                        label: OText(
                          text: "Delete",
                          style: OTextStyle.labelSmall.copyWith(
                            color:
                                widget.isEnabled
                                    ? OColor.red500
                                    : OColor.gray400,
                          ),
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
          Positioned(
            top: 6,
            right: 6,
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
}
