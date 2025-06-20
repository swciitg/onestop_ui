import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:onestop_ui/index.dart';

class CardsDemo extends StatelessWidget {
  const CardsDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(OSpacing.xs),
            child: OMessMenuCard(
              heading: 'Card Header',
              subLabelText: ['Sub Label Text'],
              blockHeading1: 'Block Header 1',
              blockHeading2: 'Block Header 2',
              blockHeading3: 'Block Header 3',
              blockItems1: [
                'Block Item 1',
                'Block Item 2',
                'Block Item 3',
                'Block Item 4',
              ],
              blockItems2: [
                'Block Item 5',
                'Block Item 6',
                'Block Item 7',
                'Block Item 8',
              ],
              blockItems3: [
                'Block Item 9',
                'Block Item 10',
                'Block Item 11',
                'Block Item 12',
              ],
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(OSpacing.xxs),
                  child: OHomeCard(
                    activateButton1: true,
                    activateButton2: true,
                    buttonAction1: () {},
                    buttonAction2: () {},
                    onArrowPressed: () {},
                    icon: TablerIcons.arrow_rotary_first_left,
                    header: "Card Header",
                    labelItems: ["Label 1", "label 2"],
                    listItems: ['list 1', 'list 2', 'list 3', 'list 4'],
                    subListItems: [
                      'sub-list 1',
                      'sub-list 2',
                      'sub-list 3',
                      'sub-list 4',
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(OSpacing.xxs),
                  child: OHomeCard(
                    activateButton2: true,
                    activateButton1: true,
                    onArrowPressed: () {},
                    buttonAction1: () {},
                    buttonAction2: () {},
                    icon: TablerIcons.arrow_rotary_first_left,
                    header: "Card Header",
                    labelItems: ["Label 1", "label 2"],
                    listItems: ['list 1', 'list 2', 'list 3', 'list 4'],
                    subListItems: [
                      'sub-list 1',
                      'sub-list 2',
                      'sub-list 3',
                      'sub-list 4',
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
