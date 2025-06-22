import 'package:flutter/material.dart';
import 'package:onestop_ui/index.dart';

enum BannerType { warning, negative, positive, accent }

class OBanner extends StatelessWidget {
  final BannerType type;
  final String headline;
  final String paragraph;
  final Widget myButton;

  const OBanner({
    required this.type,
    required this.myButton,

    required this.headline,
    required this.paragraph,
    super.key,
  });

  IconData _getIcon() {
    switch (type) {
      case BannerType.warning:
      case BannerType.negative:
      case BannerType.accent:
        return Icons.warning_amber_rounded;
      case BannerType.positive:
        return Icons.done_rounded;
    }
  }

  Color _getBackgroundColor() {
    switch (type) {
      case BannerType.warning:
        return OColor.yellow100;
      case BannerType.negative:
        return OColor.red200;
      case BannerType.positive:
        return OColor.green100;
      case BannerType.accent:
        return OColor.blue100;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: _getBackgroundColor(),
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
                    child: Icon(_getIcon(), size: 32, color: OColor.gray800),
                  ),
                ),
                const SizedBox(width: 16),
                Column(
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
              ],
            ),
            Align(alignment: Alignment.topCenter, child: myButton),
          ],
        ),
      ),
    );
  }
}
