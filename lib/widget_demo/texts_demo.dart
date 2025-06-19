import 'package:flutter/material.dart';
import 'package:onestop_ui/index.dart';

class TextsDemo extends StatelessWidget {
  const TextsDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          OText(text: 'OneStop UI', style: OTextStyle.displayMedium),
          OText(text: 'Hello, World!', style: OTextStyle.bodyLarge),
          OText(text: 'Welcome to OneStop UI', style: OTextStyle.headingLarge),
          OText(text: 'This is a sample text', style: OTextStyle.bodyMedium),
          OText(text: 'Enjoy building your app!', style: OTextStyle.bodySmall),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
