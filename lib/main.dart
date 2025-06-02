import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:get_storage/get_storage.dart';
// import 'package:onestop_ui/utils/colors.dart';
// import 'package:onestop_ui/utils/styles.dart';
// import 'package:onestop_ui/components/text.dart';
// import 'package:onestop_ui/utils/theme.dart';
import 'package:onestop_ui/index.dart';


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
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: OColor.green600)),
      home: MyHomePage(title: 'Buttons',)/* Scaffold(
        backgroundColor: OColor.red400,
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
              ],
            ),
          ),
        ),
      ), */

    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool selected = false;
  bool _radio = false;
  bool _toggle = false;
  bool _toggle2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.white ,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PrimaryButton(
              onPressed: () {},
              label: 'Hello',
              width: 360,
              height: 56,
              leadingIcon: TablerIcons.arrow_rotary_first_left,
              tarilingIcon: TablerIcons.arrow_rotary_first_left,
            ),
            SizedBox(height: 25),

            PrimaryButton(
              onPressed: () {},
              label: 'Hello',
              enabled: false,
              width: 360,
              height: 56,
              leadingIcon: TablerIcons.arrow_rotary_first_left,
              tarilingIcon: TablerIcons.arrow_rotary_first_left,
            ),
            SizedBox(height: 25),

            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                PrimaryButton(
                  onPressed: () {},
                  label: 'Hello',
                  enabled: true,
                  leadingIcon: TablerIcons.arrow_rotary_first_left,
                  tarilingIcon: TablerIcons.arrow_rotary_first_left,
                ),
                SizedBox(width: 5),

                PrimaryButton(
                  onPressed: () {},
                  label: 'Hello',
                  enabled: false,
                  leadingIcon: TablerIcons.arrow_rotary_first_left,
                  tarilingIcon: TablerIcons.arrow_rotary_first_left,
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisSize: MainAxisSize.min,
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              
                SizedBox(width: 20),
                RadioButton(
                  isEnabled: true,
                  value: _radio,
                  onChanged: (val) {
                    setState(() {
                      _radio = val;
                    });
                  },
                ),
                SizedBox(width: 20),
                RadioButton(
                  isEnabled: false,
                  value: selected,
                  onChanged: (val) {
                    setState(() {
                      selected = val;
                    });
                  },
                ),
                SizedBox(width: 20),
                ToggleButton(
                  value: _toggle,
                  onChanged: (val) {
                    setState(() {
                      _toggle = val;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 20,),
            ToggleButton(
              value: selected,
              onChanged: (val) {
                setState(() {
                  selected = val;
                });
              },
              subLabelText: "Supporting Text",
              labelText: "LABEL",
            ),
            SizedBox(height: 25),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconBtn(
                  icon: TablerIcons.arrow_rotary_first_left,
                  label: "Label",
                  onPressed: () {},
                  enabled: false,
                ),
                IconBtn(
                  icon: TablerIcons.arrow_rotary_first_left,
                  label: "Label",
                  onPressed: () {},
                  enabled: true,
                ),
              ],
            ),

            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircularButton(
                  icon: TablerIcons.arrow_rotary_first_left,
                  onPressed: () {},
                ),
                SizedBox(width: 5,),
                CircularButton(
                  icon: TablerIcons.arrow_rotary_first_left,
                  onPressed: () {},
                  enabled: false,
                ),CircularButton(
                  size: CircularButtonSize.small,
                  icon: TablerIcons.arrow_rotary_first_left,
                  onPressed: () {},
                ),
                SizedBox(width: 5,),
                CircularButton(
                  size: CircularButtonSize.small,
                  icon: TablerIcons.arrow_rotary_first_left,
                  onPressed: () {},
                  enabled: false,
                ),
              ],
            ),
            
            SizedBox(height: 20,),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircularButton(
                  icon: TablerIcons.arrow_rotary_first_left,
                  onPressed: () {},
                  bgColor: Colors.transparent,
                ),
                SizedBox(width: 5,),
                CircularButton(
                  icon: TablerIcons.arrow_rotary_first_left,
                  onPressed: () {},
                  bgColor: Colors.transparent,
                  enabled: false,
                ),CircularButton(
                  size: CircularButtonSize.small,
                  icon: TablerIcons.arrow_rotary_first_left,
                  onPressed: () {},
                  bgColor: Colors.transparent,
                ),
                SizedBox(width: 5,),
                CircularButton(
                  size: CircularButtonSize.small,
                  icon: TablerIcons.arrow_rotary_first_left,
                  onPressed: () {},
                  bgColor: Colors.transparent,
                  enabled: false,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}