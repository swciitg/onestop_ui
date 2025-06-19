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
                children: [TextsDemo(), TextfieldsDemo(), IndicatorsDemo()],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
