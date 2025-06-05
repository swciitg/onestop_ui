import 'package:flutter/material.dart';
import 'package:onestop_ui/index.dart';

class banner extends StatelessWidget {
  String type;
  String headline;
  String paragraph;
  Widget my_button;
  String icontype;

  banner({
    required this.type,
    required this.my_button,
    required this.icontype,
    required this.headline,
    required this.paragraph,

    super.key,
  });

  @override
  IconData? lead;
  Color? color_bg;

  Widget build(BuildContext context) {
    if (type == 'Warning' || type == 'Negative' || type == 'Accent')
      lead = Icons.warning_amber_rounded;
    if (type == 'Positive') lead = Icons.done_rounded;
    if (type == 'Negative') color_bg = OColor.red200;
    if (type == 'Warning') color_bg = OColor.yellow100;
    if (type == 'Positive') color_bg = OColor.green100;
    if (type == 'Accent') color_bg = OColor.blue100;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        padding: EdgeInsets.all(16),

        //height: 76,
        decoration: BoxDecoration(
          color: color_bg,
          borderRadius: BorderRadius.circular(8),
        ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 32,
                  width: 32,
                  child: Center(
                    child: Center(
                      child: Icon(lead, size: 32, color: OColor.gray800),
                    ),
                  ),
                ),
                //trailing:  trail,
                SizedBox(width: 16),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        headline,
                        style: OTextStyle.headingSmall.copyWith(
                          fontSize: 16,
                          color: OColor.gray800,
                        ),
                      ),
                      Text(
                        paragraph,
                        style: OTextStyle.bodyMedium.copyWith(
                          fontSize: 16,
                          color: OColor.gray800,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Align(alignment: Alignment.topCenter, child: my_button),
          ],
        ),
      ),
    );
  }
}
