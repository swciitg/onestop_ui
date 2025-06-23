import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import '../../index.dart';

class OProductListingCard extends StatefulWidget {
  final String imageUrl;
  final Function()? delete;
  final Function()? edit;
  final bool isEditingEnabled;
  final String? tag;
  final String price;
  final String productName;

  const OProductListingCard({
    super.key,
    required this.imageUrl,
    this.isEditingEnabled = true,
    required this.price,
    required this.productName,
    this.tag,
    this.edit,
    this.delete,
  });

  @override
  State<OProductListingCard> createState() => _OProductListingCardState();
}

class _OProductListingCardState extends State<OProductListingCard> {
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
                (_) => setState(
                  () => _isPressed = true,
                ), //engage behaviour when search bar is tapped
            onTapUp: (_) {
              setState(() => _isPressed = false);
            },
            child: Container(
              padding: EdgeInsets.only(
                bottom:
                    widget.isEditingEnabled ? OSpacing.noSpacing : OSpacing.xs,
              ),
              width: 171,
              decoration: BoxDecoration(
                color: _isPressed ? OColor.gray200 : OColor.white,
                borderRadius: BorderRadius.circular(OCornerRadius.l),
                border: Border.all(color: OColor.gray200),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 171,
                    width: 171,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(OCornerRadius.l),
                        topRight: Radius.circular(OCornerRadius.l),
                      ),
                      color: OColor.gray400,
                      image: DecorationImage(
                        image: NetworkImage(widget.imageUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(OSpacing.s),
                    child: OText(
                      text: widget.productName,
                      style: OTextStyle.labelSmall.copyWith(
                        color: OColor.gray800,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: OSpacing.s),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          TablerIcons.currency_rupee,
                          size: 16,
                          color: OColor.gray800,
                        ),
                        OText(
                          text: widget.price,
                          style: OTextStyle.labelMedium.copyWith(
                            color: OColor.gray800,
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (widget.isEditingEnabled == true)
                  Padding(
                    padding: const EdgeInsets.only(top: OSpacing.xxs),
                    child: Divider(
                      color: OColor.gray400,
                      height: 2,
                      thickness: 1,
                      indent: OSpacing.xs,
                      endIndent: OSpacing.xs,
                    ),
                  ),
                  if (widget.isEditingEnabled == true)
                    SizedBox(
                      height: OSpacing.xl +12,
                    )
                ],
              ),
            ),
          ),
          if (widget.isEditingEnabled == true)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:OSpacing.xxs),
              child: Row(
                children: [
                  TextButton.icon(
                    onPressed: widget.edit,
                    icon: Icon(
                      TablerIcons.edit,
                      size: 16,
                      color: OColor.green600,
                    ),
                    label: OText(
                      text: "Edit",
                      style: OTextStyle.labelSmall.copyWith(
                        color: OColor.green600,
                      ),
                    ),
                  ),
                  TextButton.icon(
                    onPressed: widget.delete,
                    icon: Icon(
                      TablerIcons.trash,
                      size: 16,
                      color: OColor.red500,
                    ),
                    label: OText(
                      text: "Delete",
                      style: OTextStyle.labelSmall.copyWith(
                        color: OColor.red500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          Positioned(
            top: 131,
            left: 10,
            child: Container(
              padding: const EdgeInsets.all(OSpacing.xs),
              decoration: BoxDecoration(
                color: OColor.blue100,
                borderRadius: BorderRadius.circular(OCornerRadius.xl),
              ),
              child: OText(
                text: widget.tag,
                style: OTextStyle.labelXSmall.copyWith(color: OColor.blue500),
              ),
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
