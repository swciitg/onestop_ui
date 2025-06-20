import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:onestop_ui/index.dart';

class ListDemo extends StatefulWidget {
  const ListDemo({super.key});

  @override
  State<ListDemo> createState() => _ListDemoState();
}

// Sorry, I literally hate the documentation part 😅
// Just go through the code, pick any element you want to use, and Ctrl + Space for details.
// You can contact me if you got say anthing ✌️
// But yeah code speaks louder! (-someone said)

class _ListDemoState extends State<ListDemo> {
  bool isNotificationEnabled = false;
  bool isDarkModeEnabled = true;
  List<String> options = [
    'Option 1',
    'Option 2',
    'Option 3',
    'Option 5',
    'Option 6',
    'Option 7',
    'Option 8',
    'Option 9',
    'Option 10',
    'Option 11',
    'Option 12',
    'Option 13',
    'Option 14',
    'Option 15',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        DropdownField(
          label: 'Label',
          hint: 'hint',
          onChanged: (String? value) {},
          items: options,
        ),
        DropdownField(
          isEnabled: false,
          label: 'Label',
          hint: 'hint',
          onChanged: (String? value) {},
          items: ['Option 15'],
        ),
        Tile(
          label: "Label",
          description:
              "Whole lot of text, I mean a whole lot of text, I really mean - WHOLE LOTS OF TEXT HERE. I hope you guy understand me very clearly. I mean to sday that a whole lot of text is here.",
          leadingIcon: TablerIcons.arrow_rotary_first_left,
          trailingIcon: TablerIcons.adjustments_horizontal,
          onPressed: () {},
        ),
        Row(
          children: [
            Expanded(
              child: Tile(
                label: "Label",
                description:
                    "Whole lot of text, I mean a whole lot of text, I really mean - WHOLE LOTS OF TEXT HERE. I hope you guy understand me very clearly. I mean to sday that a whole lot of text is here.",
                leadingIcon: TablerIcons.arrow_rotary_first_left,
                trailingIcon: TablerIcons.adjustments_horizontal,
                onPressed: () {},
              ),
            ),
            Expanded(
              child: Tile(
                label: "Label",
                description:
                    "Whole lot of text, I mean a whole lot of text, I really mean - WHOLE LOTS OF TEXT HERE. I hope you guy understand me very clearly. I mean to sday that a whole lot of text is here.",
                leadingIcon: TablerIcons.arrow_rotary_first_left,
                trailingIcon: TablerIcons.adjustments_horizontal,
                onPressed: () {},
              ),
            ),
          ],
        ),
        CheckboxTile(
          heading: "Enable Notifications",
          description: "Get notified about new updates and offers.",
          value: isNotificationEnabled,
          onPressed: (bool newValue) {
            setState(() {
              isNotificationEnabled = newValue;
            });
          },
        ),
        CheckboxTile(
          heading: "Enable Notifications",
          description: "Get notified about new updates and offers.",
          value: isNotificationEnabled,
          isEnabled: false,
          onPressed: (bool newValue) {
            setState(() {
              isNotificationEnabled = newValue;
            });
          },
        ),
        ContactTile(
          /* leadingIcon: TablerIcons.arrow_rotary_first_left,  */ style:
              ContactTileStyle.style1,
          title: "title",
          description: "description",
          imageUrl:
              "https://variety.com/wp-content/uploads/2019/10/shutterstock_editorial_10435445et.jpg?w=1000&h=667&crop=1",
          trailingActions: [
            ContactAction(
              type: ContactActionType.phone,
              onTap: () {
                log("calling via phone 1");
              },
            ),
            ContactAction(
              type: ContactActionType.star,
              onTap: () {
                log("adding to fav");
              },
            ),
          ],
        ),
        ContactTile(
          /* leadingIcon: TablerIcons.arrow_rotary_first_left,  */ style:
              ContactTileStyle.style2,
          title: "title",
          description: "description",
          imageUrl:
              "https://variety.com/wp-content/uploads/2019/10/shutterstock_editorial_10435445et.jpg?w=1000&h=667&crop=1",
              
          trailingActions: [
            ContactAction(
              type: ContactActionType.phone,
              onTap: () {
                log("calling via phone 1");
              },
            ),
            ContactAction(
              type: ContactActionType.star,
              onTap: () {
                log("adding to fav");
              },
            ),
          ],
        ),
        ContactTile(
          /* leadingIcon: TablerIcons.arrow_rotary_first_left,  */ style:
              ContactTileStyle.style3,
          title: "title",
          description: "description",
          imageUrl:
              "https://variety.com/wp-content/uploads/2019/10/shutterstock_editorial_10435445et.jpg?w=1000&h=667&crop=1",
          trailingActions: [
            ContactAction(
              type: ContactActionType.phone,
              onTap: () {
                log("calling via phone 1");
              },
            ),
            ContactAction(
              type: ContactActionType.star,
              onTap: () {
                log("adding to fav");
              },
            ),
          ],
        ),
        ContactTile(
          /* leadingIcon: TablerIcons.arrow_rotary_first_left,  */ style:
              ContactTileStyle.style3,
          title: "title",
          description: "description",
          trailingActions: [
            ContactAction(
              type: ContactActionType.phone,
              onTap: () {
                log("calling via phone 1");
              },
            ),
            ContactAction(
              type: ContactActionType.star,
              onTap: () {
                log("adding to fav");
              },
            ),
          ],
        ),
        ContactTile(
          /* leadingIcon: TablerIcons.arrow_rotary_first_left,  */ style:
              ContactTileStyle.style2,
          title: "title",
          description: "description",
          trailingActions: [
            ContactAction(
              type: ContactActionType.phone,
              onTap: () {
                log("calling via phone 1");
              },
            ),
            ContactAction(
              type: ContactActionType.star,
              onTap: () {
                log("adding to fav");
              },
            ),
          ],
        ),
        ContactTile(
          /* leadingIcon: TablerIcons.arrow_rotary_first_left,  */ style:
              ContactTileStyle.style1,
          title: "title",
          description: "description",
          trailingActions: [
            ContactAction(
              type: ContactActionType.phone,
              onTap: () {
                log("calling via phone 1");
              },
            ),
            ContactAction(
              type: ContactActionType.star,
              onTap: () {
                log("adding to fav");
              },
            ),
          ],
        ),
        SizedBox(height: 100),
      ],
    );
  }
}
