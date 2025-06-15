import 'package:flutter/material.dart';
import 'package:onestop_ui/index.dart';

class OCardBlock extends StatelessWidget {
  final String header;
  final String body1;
  final String? body2;
  final String? body3;
  final String? body4;
  const OCardBlock({
    super.key,
    required this.header,
    required this.body1,
    this.body2,
    this.body3,
    this.body4,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: OSpacing.s, bottom: OSpacing.s, left: OSpacing.s, right: OSpacing.xl),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(OCornerRadius.s)),
        color: OColor.gray100,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          OText(
            text:header,
            style: OTextStyle.labelXSmall.copyWith(color: OColor.gray600),
          ),
          const SizedBox(height: OSpacing.xs,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OText(
                text: body1,
                style: OTextStyle.bodySmall.copyWith(color: OColor.gray700),
              ),
              if(body2!=null)
                const SizedBox(height: OSpacing.xxs,),
              if(body2!=null)
              OText(
                text: body2,
                style: OTextStyle.bodySmall.copyWith(color: OColor.gray700),
              ),
              if(body3!=null)
                const SizedBox(height: OSpacing.xxs,),
              if(body3!=null)
              OText(
                text: body3,
                style: OTextStyle.bodySmall.copyWith(color: OColor.gray700),
              ),
              if(body4!=null)
                const SizedBox(height: OSpacing.xxs,),
              if(body4!=null)
              OText(
                text: body4,
                style: OTextStyle.bodySmall.copyWith(color: OColor.gray700),
              ),
            ],
          )
        ],
      ),
    );
  }
}
