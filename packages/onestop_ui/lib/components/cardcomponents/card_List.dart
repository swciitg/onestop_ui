import 'package:flutter/material.dart';
import 'package:onestop_ui/index.dart';

class OCardList extends StatelessWidget {
  final String list;
  final String? sublist;
  const OCardList({
    super.key,
    required this.list,
    this.sublist,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(OSpacing.xs),
      decoration: BoxDecoration(color: Colors.transparent),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          OText(
            text: list,
            style: OTextStyle.bodySmall.copyWith(color: OColor.gray800),
          ),
          OText(
            text: sublist?.toUpperCase(),
            style: OTextStyle.bodyXSmall.copyWith(color: OColor.gray600),
          )
        ],
      ),
    );
  }
}

class OListGroups extends StatelessWidget {
  final List<String> list;
  final List<String>? sublist;
  const OListGroups({
    super.key,
    required this.list,
    this.sublist,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(OSpacing.xs),
      decoration: BoxDecoration(color: Colors.transparent),
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: list.length,
        itemBuilder: (context, index){
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            OText(
              text: list[index],
              style: OTextStyle.bodySmall.copyWith(color: OColor.gray800),
            ),
            OText(
              text: sublist?[index].toUpperCase(),
              style: OTextStyle.bodyXSmall.copyWith(color: OColor.gray600),
            )
          ],
        );
        }
      ),
    );
  }
}

