import 'package:flutter/material.dart';

enum AvatarSize { small, medium, large }

class OAvatar extends StatelessWidget {
  final String url;
  final AvatarSize size;

  const OAvatar({required this.size, required this.url, super.key});

  double getSizeValue() {
    switch (size) {
      case AvatarSize.small:
        return 24;
      case AvatarSize.medium:
        return 36;
      case AvatarSize.large:
        return 48;
    }
  }

  @override
  Widget build(BuildContext context) {
    final double avatarSize = getSizeValue();

    return Container(
      height: avatarSize,
      width: avatarSize,
      child: CircleAvatar(
        radius: avatarSize / 2,
        backgroundImage: NetworkImage(url),
      ),
    );
  }
}
