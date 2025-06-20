import 'package:flutter/material.dart';
import 'package:onestop_ui/index.dart';

class OCardBlock extends StatelessWidget {
  final String header;
  final List<String> blockItems;
  const OCardBlock({super.key, required this.header, required this.blockItems});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(OSpacing.xs),
      child: Container(
        padding: EdgeInsets.all(
          OSpacing.xs,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(OCornerRadius.s)),
          color: OColor.gray100,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            OText(
              text: header.toUpperCase(),
              style: OTextStyle.labelXSmall.copyWith(color: OColor.gray600),
            ),
            const SizedBox(height: OSpacing.xs),
            blockItems.isEmpty
                ? OText(
                  text: "No items",
                  style: OTextStyle.bodySmall.copyWith(color: OColor.gray700),
                )
                : ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: blockItems.length,
                  itemBuilder: (context, index) {
                    return Text(
                      blockItems[index],
                      style: const TextStyle(fontSize: 16.0),
                    );
                  },
                ),
          ],
        ),
      ),
    );
  }
}
