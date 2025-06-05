import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  String url;
  String Size;
  String Name;
  String info;
  Profile({
    required this.Size,
    required this.url,
    required this.Name,
    required this.info,
    super.key,
  });

  @override
  double? size;
  Widget build(BuildContext context) {
    if (Size == 'Small') size = 24;

    if (Size == 'Medium') size = 36;
    if (Size == 'Large') size = 48;

    return Container(
      color: Colors.amber[50],
      height: size,

      child: Row(
        children: [
          Center(child: Image.network(url, fit: BoxFit.fitHeight)),
          Column(children: [Text(Name), Text(info)]),
        ],
      ),
    );
  }
}
