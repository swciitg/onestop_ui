import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:onestop_ui/index.dart';

import 'package:onestop_ui_screen/widget_demo/indicators_demo.dart';
import 'package:onestop_ui_screen/widget_demo/textfields_demo.dart';
import 'package:onestop_ui_screen/widget_demo/texts_demo.dart';

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
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: OColor.green600)),
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
                    OText(text: 'Welcome to OneStop UI', style: OTextStyle.headingLarge),
                    OText(text: 'This is a sample text', style: OTextStyle.bodyMedium),
                    OText(text: 'Enjoy building your app!', style: OTextStyle.bodySmall),
                    const SizedBox(height:20),
                    CardsDemo(),
                    const SizedBox(height:20),
                    TextfieldsDemo(),
                  const SizedBox(height:10),                  
                  const Divider(color:Color(0xFF148440),),
                  const SizedBox(height:10),                  
                  Text("Buttons Part",style: TextStyle(fontSize: 25),),
                  SizedBox(height: 25,),
                  ButtonsDemo(),
                  const SizedBox(height:10),                  
                  const Divider(color:Color(0xFF148440),),
                  const SizedBox(height:10),                  
                  Text("Buttons Part",style: TextStyle(fontSize: 25),),
                  SizedBox(height: 25,),
                  ListDemo()
                  ]

              ),
            ),
          ),
        ),
      ),
    );
  }
}
