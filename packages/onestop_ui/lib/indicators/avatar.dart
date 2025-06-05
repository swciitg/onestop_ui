import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  String url;
  String Size;
  Avatar({required this.Size, required this.url, super.key});

  @override
  double? size;
  Widget build(BuildContext context) {
    if (Size == 'Small') size = 24;
    if (Size == 'Medium') size = 36;
    if (Size == 'Large') size = 48;
    return Container(
      height: size,
      //width: 60,
      child: Center(child: Image.network(url, fit: BoxFit.fitHeight)),
    );
  }
}
