import 'package:flutter/material.dart';

class OText extends StatelessWidget {
  final String? text;
  final TextStyle? style;
  final bool selectable;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  const OText({super.key, 
    this.text,
    this.style,
    this.selectable = false,
    this.textAlign,
    this.overflow,
  });

  @override
  Widget build(BuildContext context) {
    if(selectable){
      return SelectableText(
        text ?? '',
        style: style,
        textAlign: textAlign,
        showCursor: true,
      );
    }
    return Text(
      text ?? '',
      style: style,
      textAlign: textAlign,
      overflow: overflow,
    );
  }
}
