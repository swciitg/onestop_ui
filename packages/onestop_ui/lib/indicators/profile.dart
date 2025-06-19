import 'package:flutter/material.dart';
import 'package:onestop_ui/index.dart';

class Profile extends StatelessWidget {
  String url;
  String Size;
  String Name;
  String? info;
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
    String Size_ = Size.toLowerCase();
    if (Size_ == 'small') size = 24;

    if (Size_ == 'medium') size = 32;
    if (Size_ == 'large') size = 48;

    return Container(
      color: Colors.amber[50],

      //height: size,
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(radius: (size! / 2), backgroundImage: NetworkImage(url)),
          SizedBox(width: 8),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(Name, style: OTextStyle.labelSmall.copyWith(color: OColor.gray800)),

              if (info != null && info!.isNotEmpty && Size != 'Small')
                Text(info!, style: OTextStyle.bodyXSmall.copyWith(color: OColor.gray600)),
            ],
          ),
          SizedBox(width: 8),
        ],
      ),
    );
  }
}
