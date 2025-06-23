import 'package:flutter/material.dart';

import '../../index.dart';

class OMessMenuCard extends StatelessWidget {
  final String heading;
  final List<String> subLabelText;
  final String blockHeading1;
  final String blockHeading2;
  final String blockHeading3;
  final List<String> blockItems1;
  final List<String> blockItems2;
  final List<String> blockItems3;
  const OMessMenuCard({
    super.key,
    required this.heading,
    required this.subLabelText,
    required this.blockHeading1,
    required this.blockHeading2,
    required this.blockHeading3,
    required this.blockItems1,
    required this.blockItems2,
    required this.blockItems3,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: OColor.white,
        borderRadius: BorderRadius.all(Radius.circular(OCornerRadius.l)),
        border: Border.all(color: OColor.gray200, width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: OSpacing.s),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OCardHeader(heading: heading, onClickArrow: false),
                OLabelGroups(labelItems: subLabelText, isSmall: false),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: OSpacing.xs,
              vertical: OSpacing.xxs,
            ),
            child: OCardBlock(header: blockHeading1, blockItems: blockItems1),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: OSpacing.xs,
                    right: OSpacing.xs,
                    top: OSpacing.xxs,
                    bottom: OSpacing.s,
                  ),
                  child: OCardBlock(
                    header: blockHeading2,
                    blockItems: blockItems2,
                    color: OColor.gray100,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: OSpacing.xs,
                    right: OSpacing.xs,
                    top: OSpacing.xxs,
                    bottom: OSpacing.s,
                  ),
                  child: OCardBlock(
                    header: blockHeading3,
                    blockItems: blockItems3,
                    color: OColor.gray100,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
