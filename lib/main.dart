import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:onestop_ui/indicators/avatar.dart';
import 'package:onestop_ui/indicators/badge.dart';
import 'package:onestop_ui/indicators/banners.dart';
import 'package:onestop_ui/indicators/profile.dart';
import 'package:onestop_ui/indicators/progress.dart';
import 'package:onestop_ui/indicators/tag..dart';
import 'package:onestop_ui/utils/colors.dart';
import 'package:onestop_ui/utils/styles.dart';
import 'package:onestop_ui/components/text.dart';
import 'package:onestop_ui/utils/theme.dart';

void main() async {
  await GetStorage.init();
  await OTheme.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    OTheme.setTheme(Brightness.light);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'OneStop UI Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: OColor.green600),
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OText(text: 'Hello, World!', style: OTextStyle.bodyLarge),
                OText(
                  text: 'Welcome to OneStop UI',
                  style: OTextStyle.headingLarge,
                ),
                OText(
                  text: 'This is a sample text',
                  style: OTextStyle.bodyMedium,
                ),
                my_Badge(type: 'Warning'),
                Tag(
                  type: 'Neutral',
                  lead: Icons.abc_outlined,
                  label: "LABEL",
                  trail: Icons.arrow_back,
                ),
                banner(
                  type: "Accent",

                  icontype: 'Done',
                  my_button: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.fullscreen_exit),
                  ),
                  headline: "Headline text",
                  paragraph: "Paragraph text",
                ),
                OText(
                  text: 'Enjoy building your app!',
                  style: OTextStyle.bodySmall,
                ),

                StepProgressIndicator(
                  numberOfSteps: 4,
                  currentStep: 3,
                  stepNames: ['ALERT BOX', 'B', 'c', 'dddd'],
                ),
                Avatar(
                  Size: 'Medium',
                  url:
                      'https://motionbgs.com/media/2001/miles-morales-in-multiverse.jpg',
                ),
                Profile(
                  Size: 'Medium',
                  url:
                      'https://motionbgs.com/media/2001/miles-morales-in-multiverse.jpg',
                  Name: 'name',
                  info: '',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
