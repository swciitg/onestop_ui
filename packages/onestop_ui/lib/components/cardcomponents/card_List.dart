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
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          OText(
            text: list,
            style: OTextStyle.bodySmall.copyWith(color: OColor.gray800),
          ),
          const SizedBox(width: OSpacing.m),
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
  final String list1;
  final String? list2;
  final String? list3;
  final String? list4;
  final String? sublist1;
  final String? sublist2;
  final String? sublist3;
  final String? sublist4;
  const OListGroups({
    super.key,
    required this.list1,
    this.list2,
    this.list3,
    this.list4,
    this.sublist1,
    this.sublist2,
    this.sublist3,
    this.sublist4
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(OSpacing.xs),
      decoration: BoxDecoration(color: Colors.transparent),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              OText(
                text: list1,
                style: OTextStyle.bodySmall.copyWith(color: OColor.gray800),
              ),
              const SizedBox(width: OSpacing.m),
              OText(
                text: sublist1?.toUpperCase(),
                style: OTextStyle.bodyXSmall.copyWith(color: OColor.gray600),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              OText(
                text: list2,
                style: OTextStyle.bodySmall.copyWith(color: OColor.gray800),
              ),
              const SizedBox(width: OSpacing.m),
              OText(
                text: sublist2?.toUpperCase(),
                style: OTextStyle.bodyXSmall.copyWith(color: OColor.gray600),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              OText(
                text: list3,
                style: OTextStyle.bodySmall.copyWith(color: OColor.gray800),
              ),
              const SizedBox(width: OSpacing.m),
              OText(
                text: sublist3?.toUpperCase(),
                style: OTextStyle.bodyXSmall.copyWith(color: OColor.gray600),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              OText(
                text: list4,
                style: OTextStyle.bodySmall.copyWith(color: OColor.gray800),
              ),
              const SizedBox(width: OSpacing.m),
              OText(
                text: sublist4?.toUpperCase(),
                style: OTextStyle.bodyXSmall.copyWith(color: OColor.gray600),
              )
            ],
          ),


        ],
      ),
    );
  }
}

