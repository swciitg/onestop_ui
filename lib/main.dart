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

  @override
  Widget build(BuildContext context) {
    OTheme.setTheme(Brightness.light);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'OneStop UI Demo',
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: OColor.green600)),
      home: MyHomePage(title: "OneStop UI Demo"),
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
  final TextEditingController texteditingcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white, title: Text(widget.title)),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OText(text: 'Hello, World!', style: OTextStyle.bodyLarge),
            OText(text: 'Welcome to OneStop UI', style: OTextStyle.headingLarge),
            OText(text: 'This is a sample text', style: OTextStyle.bodyMedium),
            my_Badge(type: 'Warning'),
            Tag(type: '', lead: Icons.abc_outlined, label: "LABEL", trail: Icons.arrow_back),
            Tag(
              type: 'NEutral',
              lead: Icons.abc_outlined,
              label: 'popopo',
              trail: Icons.abc_outlined,
            ),
            banner(
              type: "Accent",

              icontype: 'Done',
              my_button: IconButton(onPressed: () {}, icon: Icon(Icons.fullscreen_exit)),
              headline: "Headline text",
              paragraph: "Paragraph text",
            ),
            OText(text: 'Enjoy building your app!', style: OTextStyle.bodySmall),

            StepProgressIndicator(
              numberOfSteps: 4,
              currentStep: 3,
              stepNames: ['ALERT BOX', 'B', 'c', 'dddd'],
            ),
            Avatar(
              Size: 'Medium',
              url: 'https://motionbgs.com/media/2001/miles-morales-in-multiverse.jpg',
            ),
            Profile(
              Size: 'Small',
              url: 'https://motionbgs.com/media/2001/miles-morales-in-multiverse.jpg',
              Name: 'Name',
              info: 'Add. info',
            ),
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
            SizedBox(height: 20),
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
                CircularButton(icon: TablerIcons.arrow_rotary_first_left, onPressed: () {}),
                SizedBox(width: 5),
                CircularButton(
                  icon: TablerIcons.arrow_rotary_first_left,
                  onPressed: () {},
                  enabled: false,
                ),
                CircularButton(
                  size: CircularButtonSize.small,
                  icon: TablerIcons.arrow_rotary_first_left,
                  onPressed: () {},
                ),
                SizedBox(width: 5),
                CircularButton(
                  size: CircularButtonSize.small,
                  icon: TablerIcons.arrow_rotary_first_left,
                  onPressed: () {},
                  enabled: false,
                ),
              ],
            ),

            SizedBox(height: 20),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircularButton(
                  icon: TablerIcons.arrow_rotary_first_left,
                  onPressed: () {},
                  bgColor: Colors.transparent,
                ),
                SizedBox(width: 5),
                CircularButton(
                  icon: TablerIcons.arrow_rotary_first_left,
                  onPressed: () {},
                  bgColor: Colors.transparent,
                  enabled: false,
                ),
                CircularButton(
                  size: CircularButtonSize.small,
                  icon: TablerIcons.arrow_rotary_first_left,
                  onPressed: () {},
                  bgColor: Colors.transparent,
                ),
                SizedBox(width: 5),
                CircularButton(
                  size: CircularButtonSize.small,
                  icon: TablerIcons.arrow_rotary_first_left,
                  onPressed: () {},
                  bgColor: Colors.transparent,
                  enabled: false,
                ),
              ],
            ),

            OText(text: 'OneStop UI', style: OTextStyle.displayMedium),
            OText(text: 'Hello, World!', style: OTextStyle.bodyLarge),
            OText(text: 'Welcome to OneStop UI', style: OTextStyle.headingLarge),
            OText(text: 'This is a sample text', style: OTextStyle.bodyMedium),
            OText(text: 'Enjoy building your app!', style: OTextStyle.bodySmall),

            // below are the demo search bars
            // use ctrl + spacebar to go through all attributes of this widget
            // uncomment the dependencies at top of the file to use these
            OSearchBar(content: "Enabled 1", controller: texteditingcontroller, enabled: true),
            const SizedBox(height: 20),
            OSearchBar(
              content: "Disabled Search bar",
              controller: texteditingcontroller,
              enabled: false,
            ),
            const SizedBox(height: 20),
            OSearchBar(controller: texteditingcontroller, enabled: true, content: "Enabled 2"),

            // below are the demo text fields
            // 2 of them are enabled and 2 of them are disabled for single lines and paragraph each
            // text field changes color from green600 to red500 on exceeding maximum char length
            OTextField(
              label: 'Label',
              controller: texteditingcontroller,
              enabled: false,
              hint: "Hint",
              content: "Context",
              suffixIcon: Icon(Icons.abc_sharp), // add any icon of your choice
              maxLength: 200, //adjust the input length according to your requirement
              isParagraph: false, // toggle b/w the singleline and paragraph mode
            ),
            OTextField(
              label: 'Label',
              controller: texteditingcontroller,
              enabled: true,
              hint: "Hint",
              content: "Context",
              suffixIcon: Icon(Icons.abc_sharp), // add any icon of your choice
              maxLength: 200, //adjust the input length according to your requirement
              isParagraph: false, // toggle b/w the singleline and paragraph mode
            ),
            OTextField(
              label: 'Label',
              controller: texteditingcontroller,
              enabled: false,
              hint: "Hint",
              content: "Context",
              suffixIcon: Icon(Icons.abc_sharp), // add any icon of your choice
              maxLength: 200, //adjust the input length according to your requirement
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
            ),
          ],
        ),
      ),
    );
  }
}
