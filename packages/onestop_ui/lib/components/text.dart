import 'package:flutter/material.dart';

class OText extends StatelessWidget {
  final String? text;
  final TextStyle? style;
  final bool selectable;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final int? maxLines;
  const OText({
    super.key,
    this.text,
    this.style,
    this.selectable = false,
    this.textAlign,
    this.overflow,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    if (selectable) {
      return SelectableText(
        text ?? '',
        style: style,
        textAlign: textAlign,
        showCursor: true,
        maxLines: maxLines,
      );
    }
    return Text(
      text ?? '',
      style: style,
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
    );
  }
}
