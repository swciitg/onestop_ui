import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:onestop_ui/Widgets/otextfield.dart';
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

  get texteditingcontroller => TextEditingController();

  @override
  Widget build(BuildContext context) {
    OTheme.setTheme(Brightness.light);
    return MaterialApp(
      title: 'OneStop UI Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: OColor.green600)),
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                /*OText(text: 'OneStop UI', style: OTextStyle.displayMedium),
                OText(text: 'Hello, World!', style: OTextStyle.bodyLarge),
                OText(text: 'Welcome to OneStop UI', style: OTextStyle.headingLarge),
                OText(text: 'This is a sample text', style: OTextStyle.bodyMedium),
                OText(text: 'Enjoy building your app!', style: OTextStyle.bodySmall),*/
               OTextField(label: 'Label', controller: texteditingcontroller,enabled:true,hint: "Hint",content: "Context",
               suffix: Icon(Icons.abc_sharp),maxLength:200,isParagraph: true,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
