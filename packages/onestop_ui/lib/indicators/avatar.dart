import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  String url;
  String Size;
  Avatar({required this.Size, required this.url, super.key});

  @override
  double? size;
  Widget build(BuildContext context) {
    String Size_ = Size.toLowerCase();

    if (Size_ == 'small') size = 24;
    if (Size_ == 'medium') size = 36;
    if (Size_ == 'large') size = 48;
    return Container(
      height: size,
      //width: 60,
      child: CircleAvatar(
        radius: (size! / 2),
        backgroundImage: NetworkImage(url),
      ),
    );
  }
}
