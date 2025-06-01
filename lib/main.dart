import 'package:flutter/material.dart';
import 'package:onestop_ui/indicators/badge.dart';
import 'package:onestop_ui/indicators/tag..dart';
import 'package:onestop_ui/utils/colors.dart';
import 'package:onestop_ui/utils/styles.dart';
import 'package:onestop_ui/components/text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OneStop UI Demo',
      theme: ThemeData(
        //colorScheme: ColorScheme.fromSeed(seedColor: OColor.primary),
      ),
      home: Scaffold(
        //backgroundColor: OColor.primary,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OText(text: 'OneStop UI', style: OTextStyle.displayMedium),
                OText(text: 'Hello, World!', style: OTextStyle.bodyLarge),
                OText(
                  text: 'Welcome to OneStop UI',
                  style: OTextStyle.headingLarge,
                ),
                OText(
                  text: 'This is a sample text',
                  style: OTextStyle.bodyMedium,
                ),
                my_Badge(type: 'Normal Hint'),
                Tag(
                  type: 'Accent Color',
                  lead: Icons.abc_outlined,
                  label: "LABEL",
                  trail: Icons.arrow_back,
                ),
                OText(
                  text: 'Enjoy building your app!',
                  style: OTextStyle.bodySmall,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
