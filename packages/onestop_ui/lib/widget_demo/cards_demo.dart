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
          Row(
            children: [
              Expanded(
                child: OHomeCard(
                  onArrowPressed: (){},
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
              Expanded(
                child: OHomeCard(
                  onArrowPressed: (){},
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
            ],
          ),
        ],
      ),
    );
  }
}