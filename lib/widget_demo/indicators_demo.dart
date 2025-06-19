import 'package:flutter/material.dart';
import 'package:onestop_ui/index.dart';

class IndicatorsDemo extends StatelessWidget {
  const IndicatorsDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          const SizedBox(height: 50),
          OAvatar(size: AvatarSize.medium, url: 'https://i.pravatar.cc/300'),
          SizedBox(height: 5),
          OAvatar(size: AvatarSize.large, url: 'https://i.pravatar.cc/300'),
          SizedBox(height: 5),

          OBadge(type: BadgeType.normalHint),
          SizedBox(height: 5),

          OBadge(type: BadgeType.warning),
          SizedBox(height: 5),

          OBanner(
            type: BannerType.positive,
            myButton: IconButton(onPressed: () {}, icon: Icon(Icons.close)),
            headline: 'headline',
            paragraph: 'paragraph',
          ),
          SizedBox(height: 5),

          OProfile(
            size: ProfileSize.large,
            url: 'https://i.pravatar.cc/300',
            name: 'name',
            info: 'info',
          ),
          SizedBox(height: 5),

          StepProgressIndicator(
            numberOfSteps: 3,
            currentStep: 2,
            stepNames: ['Step1', 'Step2', 'Step3'],
          ),
          SizedBox(height: 5),

          OStatus(type: StatusType.positive, label: 'LABEL', lead: Icons.account_circle_sharp),
          SizedBox(height: 5),

          OStatus(
            type: StatusType.warning,
            label: 'WARNING',
            lead: Icons.align_vertical_top_outlined,
          ),
          SizedBox(height: 5),

          OTag(type: TagType.accentColor, lead: Icons.add_call, label: 'label', trail: Icons.close),
        ],
      ),
    );
  }
}
