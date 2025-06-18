import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:onestop_ui/index.dart';
import 'package:onestop_ui/indicators/avatar.dart';
import 'package:onestop_ui/indicators/badge.dart';
import 'package:onestop_ui/indicators/banners.dart';
import 'package:onestop_ui/indicators/profile.dart';
import 'package:onestop_ui/indicators/progress.dart';
import 'package:onestop_ui/indicators/status.dart';
import 'package:onestop_ui/indicators/tag..dart';

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
      title: 'OneStop UI Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: OColor.green600),
      ),
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
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
                  OText(
                    text: 'Enjoy building your app!',
                    style: OTextStyle.bodySmall,
                  ),
                  const SizedBox(height: 20),
                  //TextfieldsDemo(),
                  const SizedBox(height: 50),
                  OAvatar(
                    size: AvatarSize.medium,
                    url: 'https://i.pravatar.cc/300',
                  ),
                  SizedBox(height: 5),
                  OAvatar(
                    size: AvatarSize.large,
                    url: 'https://i.pravatar.cc/300',
                  ),
                  SizedBox(height: 5),

                  OBadge(type: BadgeType.normalHint),
                  SizedBox(height: 5),

                  OBadge(type: BadgeType.warning),
                  SizedBox(height: 5),

                  OBanner(
                    type: BannerType.positive,
                    myButton: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.close),
                    ),
                    headline: 'headline',
                    paragraph: 'paragraph',
                  ),
                  SizedBox(height: 5),

                  OProfile(
                    size: ProfileSize.large,
                    url: 'https://i.pravatar.cc/300',
                    name: 'name',
                    info: 'info',
                  ),
                  SizedBox(height: 5),

                  StepProgressIndicator(
                    numberOfSteps: 3,
                    currentStep: 2,
                    stepNames: ['Step1', 'Step2', 'Step3'],
                  ),
                  SizedBox(height: 5),

                  OStatus(
                    type: StatusType.positive,
                    label: 'LABEL',
                    lead: Icons.account_circle_sharp,
                  ),
                  SizedBox(height: 5),

                  OStatus(
                    type: StatusType.warning,
                    label: 'WARNING',
                    lead: Icons.align_vertical_top_outlined,
                  ),
                  SizedBox(height: 5),

                  OTag(
                    type: TagType.accentColor,
                    lead: Icons.add_call,
                    label: 'label',
                    trail: Icons.close,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
