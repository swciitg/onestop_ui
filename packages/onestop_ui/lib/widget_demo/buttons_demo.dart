import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:onestop_ui/index.dart';

class ButtonsDemo extends StatefulWidget {
  const ButtonsDemo({super.key});

  @override
  State<ButtonsDemo> createState() => _ButtonsDemoState();
}

class _ButtonsDemoState extends State<ButtonsDemo> {
  bool selected = false;
  bool _radio = false;
  bool _toggle = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Sorry, I literally hate the documentation part 😅
        // Just go through the code, pick any element you want to use, and Ctrl + Space for details.
        // You can contact me if you got say anthing ✌️
        // But yeah code speaks louder! (-someone said)
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

        SecondaryButton(
          width: 360,
          leadingIcon: TablerIcons.arrow_rotary_first_left,
          tarilingIcon: TablerIcons.arrow_rotary_first_left,
          label: "Label",
          subLabel: "SUB-LABEL ",
          onPressed: () {},
        ),

        SizedBox(height: 5),

        SecondaryButton(
          width: 360,
          enabled: false,
          leadingIcon: TablerIcons.arrow_rotary_first_left,
          tarilingIcon: TablerIcons.arrow_rotary_first_left,
          label: "Label",
          subLabel: "SUB-LABEL ",
          onPressed: () {},
        ),
        SizedBox(height: 20),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SecondaryButton(
              // width: 312,
              leadingIcon: TablerIcons.arrow_rotary_first_left,
              tarilingIcon: TablerIcons.arrow_rotary_first_left,
              label: "Label",
              subLabel: "SUB-LABEL ",
              onPressed: () {},
            ),

            SizedBox(width: 5),

            SecondaryButton(
              // width: 312,
              enabled: false,
              leadingIcon: TablerIcons.arrow_rotary_first_left,
              tarilingIcon: TablerIcons.arrow_rotary_first_left,
              label: "Label",
              subLabel: "SUB-LABEL ",
              onPressed: () {},
            ),
          ],
        ),
        SizedBox(height: 20),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
        TertiaryButton(label: 'Label', onPressed: () {  },
              leadingIcon: TablerIcons.arrow_rotary_first_left,
              tarilingIcon: TablerIcons.arrow_rotary_first_left,
        ),
        
        TertiaryButton(label: 'Label', onPressed: () {  },
        enabled: false,
              leadingIcon: TablerIcons.arrow_rotary_first_left,
              tarilingIcon: TablerIcons.arrow_rotary_first_left,
        ),
          ],
        ),

        SizedBox(height: 20),
        
        Row(
          mainAxisSize: MainAxisSize.min,
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
            CircularButton(
              icon: TablerIcons.arrow_rotary_first_left,
              onPressed: () {},
            ),
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
      ],
    );
  }
}
