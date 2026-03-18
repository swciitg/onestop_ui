import 'package:flutter/material.dart';
import 'package:onestop_ui/constants/spacing.dart';
import '../components/ListButtons/toggle_button.dart';
import '../utils/colors.dart';

class ToggleDemo extends StatelessWidget {
  const ToggleDemo({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> items = const [
      {"title": "Heading", "subtitle": "Description"},
      {"title": "Heading", "subtitle": "Description"},
      {"title": "Heading", "subtitle": "Description"},
    ];

    return SafeArea(
      child: Container(
        color: OColor.white,
        padding: const EdgeInsets.all(16),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ToggleWidgetList(
                  items: items,
                  onToggle: (index, isOn) {
                    debugPrint('${items[index]["title"]} toggled: $isOn');
                  },
                ),
                const SizedBox(height: OSpacing.l),
                const Divider(),
                const SizedBox(height: OSpacing.xs),
                ToggleWidgetList(items: items, isDisabled: true),
              ],
            ),
          ),
        ),
      ),
    );
  }
}