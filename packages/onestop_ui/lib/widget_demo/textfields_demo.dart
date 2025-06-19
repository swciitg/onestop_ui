import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:onestop_ui/index.dart';

class TextfieldsDemo extends StatelessWidget {
  const TextfieldsDemo({super.key});

  get texteditingcontroller => TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          //// below are the demo search bars
          // use ctrl + spacebar to go through all attributes of this widget
          // uncomment the dependencies at top of the file to use these
          OSearchBar(
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
          ),

          // below are the demo text fields
          // 2 of them are enabled and 2 of them are disabled for single lines and paragraph each
          // text field changes color from green600 to red500 on exceeding maximum char length

          OTextField(
            label: 'Label',
            controller: texteditingcontroller,
            enabled: false,
            hint: "Hint",
            content: "Context",
            suffixIcon: Icon(TablerIcons.arrow_rotary_first_left), // add any icon of your choice
            maxLength: 200,   //adjust the input length according to your requirement
            isParagraph: false, // toggle b/w the singleline and paragraph mode
          ),
          OTextField(
            label: 'Label',
            controller: texteditingcontroller,
            enabled: true,
            hint: "Hint",
            content: "Context",
            suffixIcon: Icon(TablerIcons.arrow_rotary_first_left), // add any icon of your choice
            maxLength: 200,  //adjust the input length according to your requirement
            isParagraph: false, // toggle b/w the singleline and paragraph mode
          ),
          OTextField(
            label: 'Label',
            controller: texteditingcontroller,
            enabled: false,
            hint: "Hint",
            content: "Context",
            suffixIcon: Icon(TablerIcons.arrow_rotary_first_left), // add any icon of your choice
            maxLength: 200,  //adjust the input length according to your requirement
            isParagraph: true, // toggle b/w the singleline and paragraph mode
          ),
          OTextField(
            label: 'Label',
            controller: texteditingcontroller,
            enabled: true,
            hint: "Hint",
            content: "Context",
            suffixIcon: Icon(TablerIcons.arrow_rotary_first_left), // add any icon of your choice
            maxLength: 200, //adjust the input length according to your requirement
            isParagraph: true, // toggle b/w the singleline and paragraph mode
          ),
        ],
      ),
    );
  }
}