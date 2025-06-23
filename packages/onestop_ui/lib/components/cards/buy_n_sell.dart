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
                    SizedBox(height: OSpacing.xl + 12),
                ],
              ),
            ),
          ),
          if (widget.isEditingEnabled == true)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: OSpacing.xxs),
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

class OProductRequestCard extends StatefulWidget {
  final String imageURl;
  final String itemName;
  final String priceLabel;
  final String price;
  final Function()? onArrowPressed;
  final String? userImageURl;
  final String? userName;
  final Function()? delete;
  final Function()? edit;
  final Function()? message;
  final bool isEditingEnabled;
  final Function()? phone;

  const OProductRequestCard({
    super.key,
    required this.itemName,
    this.imageURl = '',
    required this.price,
    required this.priceLabel,
    this.onArrowPressed,
    this.userImageURl,
    this.userName,
    this.edit,
    this.message,
    this.phone,
    this.delete,
    this.isEditingEnabled = false,
  });

  @override
  State<OProductRequestCard> createState() => _OProductRequestCardState();
}

class _OProductRequestCardState extends State<OProductRequestCard> {
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
                          width: 72,
                          height: 72,
                          decoration: BoxDecoration(
                            color: OColor.green100,
                            borderRadius: BorderRadius.circular(
                              OCornerRadius.s,
                            ),
                          ),
                          child:
                              widget.imageURl.isNotEmpty
                                  ? ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                      OCornerRadius.s,
                                    ),
                                    child: Image(
                                      image: NetworkImage(widget.imageURl),
                                      fit: BoxFit.cover,
                                    ),
                                  )
                                  : Icon(
                                    TablerIcons.photo,
                                    color: OColor.green600,
                                    size: 32,
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
                              text: widget.itemName,
                              style: OTextStyle.labelMedium.copyWith(
                                color: OColor.gray800,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: OSpacing.xs,
                            ),
                            child: OText(
                              text: widget.priceLabel,
                              style: OTextStyle.labelXSmall.copyWith(
                                color: OColor.gray600,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: OSpacing.xs,
                            ),
                            child: OText(
                              text: widget.price,
                              style: OTextStyle.labelMedium.copyWith(
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
                  const SizedBox(height: OSpacing.xl + 5),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: OSpacing.m ),
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
                            color: OColor.gray800,
                          ),
                        ),
                      ),
                    ],
                  ),
                if (widget.isEditingEnabled == false)
                  Row(
                    children: [
                      IconButton(
                        onPressed: widget.phone,
                        icon: Icon(
                          TablerIcons.phone,
                          size: 24,
                          color: OColor.green600,
                        ),
                      ),
                      IconButton(
                        onPressed: widget.message,
                        icon: Icon(
                          TablerIcons.message,
                          size: 24,
                          color: OColor.green600,
                        ),
                      ),
                    ],
                  ),
                if (widget.isEditingEnabled == true)
                  Row(
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
                      SizedBox(width: MediaQuery.of(context).size.width * 0.25),
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
              ],
            ),
          ),
          Positioned(
            top: 6,
            right: 6,
            child: IconButton(
              icon: Icon(TablerIcons.chevron_right, color: OColor.gray600),
              onPressed: widget.onArrowPressed,
              iconSize: 24,
            ),
          ),
        ],
      ),
    );
  }
}
