import 'package:flutter/material.dart';
import 'package:onestop_ui/index.dart';

class IndicatorsDemo extends StatelessWidget {
  const IndicatorsDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          // use ctrl + spacebar to go through all attributes of this widget
          Divider(),
          Text(
            "INDICATORS",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          Divider(),
          SizedBox(height: 20),
          //TAG
          //this has optional lead and trail icons
          OTag(
            type: TagType.accentColor, //accentcolor
            label: "TEXT",
          ),
          SizedBox(height: 10),

          OTag(
            type: TagType.neutral, // neutral
            label: "TEXT",
            lead: Icons.call,
          ),
          SizedBox(height: 10),
          OTag(type: TagType.accentColor, label: "TEXT", trail: Icons.close),
          SizedBox(height: 20),

          //STATUS
          //THIS HAS THREE STATUS TYPE: WARNING POSITIVE AND NEGATIVE
          OStatus(
            type: StatusType.warning, //WARNING
            label: 'TEXT',
            lead: Icons.account_balance,
          ),
          SizedBox(height: 10),

          OStatus(
            type: StatusType.negative, //NEGATIVE
            label: 'TEXT',
            lead: Icons.account_balance,
          ),
          SizedBox(height: 10),

          OStatus(
            type: StatusType.positive, //POSITIVE
            label: 'TEXT',
            lead: Icons.account_balance,
          ),
          SizedBox(height: 20),

          //PROGRESS Indicator
          StepProgressIndicator(
            numberOfSteps: 3,
            currentStep: 2,
            stepNames: ["STEP 1", "STEP 2", "STEP 3"],
          ),
          SizedBox(height: 20),

          //avatar
          OAvatar(size: AvatarSize.small, url: "https://i.pravatar.cc/300"),
          SizedBox(height: 10),

          OAvatar(size: AvatarSize.medium, url: "https://i.pravatar.cc/300"),
          SizedBox(height: 10),

          OAvatar(size: AvatarSize.large, url: "https://i.pravatar.cc/300"),

          SizedBox(height: 20),

          //Profile
          //info is not requiref for small size
          OProfile(
            size: ProfileSize.small,
            url: "https://i.pravatar.cc/300",
            name: "NAME",
            info: "INFO",
          ),
          SizedBox(height: 10),

          OProfile(
            size: ProfileSize.medium,
            url: "https://i.pravatar.cc/300",
            name: "NAME",
            info: "INFO",
          ),
          SizedBox(height: 10),

          OProfile(
            size: ProfileSize.large,
            url: "https://i.pravatar.cc/300",
            name: "NAME",
            info: "INFO",
          ),
          SizedBox(height: 20),

          //BADGE
          OBadge(type: BadgeType.normalHint),
          SizedBox(height: 10),

          OBadge(type: BadgeType.warning),
          SizedBox(height: 20),

          //BANNER
          OBanner(
            type: BannerType.accent,
            myButton: IconButton(onPressed: () {}, icon: Icon(Icons.close)),
            headline: "HEADLINE TEXT",
            paragraph: "paragraph",
          ),
          SizedBox(height: 10),

          OBanner(
            type: BannerType.negative,
            myButton: IconButton(onPressed: () {}, icon: Icon(Icons.close)),
            headline: "HEADLINE TEXT",
            paragraph: "paragraph",
          ),
          SizedBox(height: 10),

          OBanner(
            type: BannerType.positive,
            myButton: IconButton(onPressed: () {}, icon: Icon(Icons.close)),
            headline: "HEADLINE TEXT",
            paragraph: "paragraph",
          ),
          SizedBox(height: 10),

          OBanner(
            type: BannerType.warning,
            myButton: IconButton(onPressed: () {}, icon: Icon(Icons.close)),
            headline: "HEADLINE TEXT",
            paragraph: "paragraph",
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
