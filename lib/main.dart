import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:get_storage/get_storage.dart';
import 'package:onestop_ui/index.dart';

void main() async {
  await GetStorage.init();
  await OTheme.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //get texteditingcontroller => TextEditingController();

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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OText(text: 'OneStop UI', style: OTextStyle.displayMedium),
                OText(text: 'Hello, World!', style: OTextStyle.bodyLarge),
                OText(text: 'Welcome to OneStop UI', style: OTextStyle.headingLarge),
                OText(text: 'This is a sample text', style: OTextStyle.bodyMedium),
                OText(text: 'Enjoy building your app!', style: OTextStyle.bodySmall),

                // below  is the demo code snippet for the card components
                /*OCardHeader(icon: TablerIcons.arrow_rotary_first_left,heading: "Card Header", subheading: "Sub-Heading",),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OCardLabels(label: "label text", icon: TablerIcons.arrow_rotary_first_left,  isSmall: false,),
                    OLabelGroups(label1: "Label 1", label2: "label 2", label3: "label3" ,isSmall: false,),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OCardBlock(header: "BLOCK HEADER", body1: "Block Body 1",body2: "Block Body 2",body3: "Block Body 3",body4: "Block Body 4",),
                    Column(
                      children: [
                        OCardList(list: "List",sublist: "Sub-list",),
                        OListGroups(list1: "List 1",list2: "List 2",list3: "List 3",list4: "List 4", sublist1: "Sub-list 1",sublist2: "Sub-list 2",sublist3: "Sub-list 3",sublist4: "Sub-list 4",)
                      ],
                    )

                  ],
                )*/

                //// below are the demo search bars
                // use ctrl + spacebar to go through all attributes of this widget
                // uncomment the dependencies at top of the file to use these
                /*OSearchBar(
                  content: "Enabled 1",
                  controller: texteditingcontroller,
                  enabled: true,
                ),
                const SizedBox(height:20),
                OSearchBar(
                  content: "Disabled Search bar",
                  controller: texteditingcontroller,
                  enabled: false,
                ),
                const SizedBox(height:20),
                OSearchBar(
                  controller: texteditingcontroller,
                  enabled: true,
                  content: "Enabled 2",
                ),*/

                // below are the demo text fields
                // 2 of them are enabled and 2 of them are disabled for single lines and paragraph each
                // text field changes color from green600 to red500 on exceeding maximum char length

                /*OTextField(
                  label: 'Label',
                  controller: texteditingcontroller,
                  enabled: false,
                  hint: "Hint",
                  content: "Context",
                  suffixIcon: Icon(Icons.abc_sharp), // add any icon of your choice
                  maxLength: 200,   //adjust the input length according to your requirement
                  isParagraph: false, // toggle b/w the singleline and paragraph mode
                ),
                OTextField(
                  label: 'Label',
                  controller: texteditingcontroller,
                  enabled: true,
                  hint: "Hint",
                  content: "Context",
                  suffixIcon: Icon(Icons.abc_sharp), // add any icon of your choice
                  maxLength: 200,  //adjust the input length according to your requirement
                  isParagraph: false, // toggle b/w the singleline and paragraph mode
                ),
                OTextField(
                  label: 'Label',
                  controller: texteditingcontroller,
                  enabled: false,
                  hint: "Hint",
                  content: "Context",
                  suffixIcon: Icon(Icons.abc_sharp), // add any icon of your choice
                  maxLength: 200,  //adjust the input length according to your requirement
                  isParagraph: true, // toggle b/w the singleline and paragraph mode
                ),
                OTextField(
                  label: 'Label',
                  controller: texteditingcontroller,
                  enabled: true,
                  hint: "Hint",
                  content: "Context",
                  suffixIcon: Icon(Icons.abc_sharp), // add any icon of your choice
                  maxLength: 200, //adjust the input length according to your requirement
                  isParagraph: true, // toggle b/w the singleline and paragraph mode
                ),*/
              ],
            ),
          ),
        ),
      ),
    );
  }
}
