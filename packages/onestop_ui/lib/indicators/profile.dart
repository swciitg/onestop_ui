import 'package:flutter/material.dart';
import 'package:onestop_ui/index.dart';

enum ProfileSize { small, medium, large }

class OProfile extends StatelessWidget {
  final String url;
  final String name;
  final String? info;
  final ProfileSize size;

  const OProfile({
    required this.size,
    required this.url,
    required this.name,
    required this.info,
    super.key,
  });

  double _getSize() {
    switch (size) {
      case ProfileSize.small:
        return 24;
      case ProfileSize.medium:
        return 32;
      case ProfileSize.large:
        return 48;
    }
  }

  bool _shouldShowInfo() {
    return size != ProfileSize.small && info != null && info!.isNotEmpty;
  }

  @override
  Widget build(BuildContext context) {
    final avatarSize = _getSize();

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: avatarSize / 2,
            backgroundImage: NetworkImage(url),
          ),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: OTextStyle.labelSmall.copyWith(color: OColor.gray800),
              ),
              if (_shouldShowInfo())
                Text(
                  info!,
                  style: OTextStyle.bodyXSmall.copyWith(color: OColor.gray600),
                ),
            ],
          ),
          const SizedBox(width: 8),
        ],
      ),
    );
  }
}
