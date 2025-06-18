import 'package:flutter/material.dart';
import 'package:onestop_ui/buttons/button_exports.dart';
import 'package:onestop_ui/index.dart';

class CheckboxTile extends StatelessWidget {
  final String heading;
  final String description;
  final ValueChanged<bool>? onPressed;
  final Color? pressedColor;
  final bool value;
  final bool isEnabled;

  const CheckboxTile({
    super.key,
    required this.heading,
    required this.description,
    required this.onPressed,
    this.pressedColor,
    required this.value,
    this.isEnabled = true
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(16),
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          splashColor:isEnabled? pressedColor ?? OColor.gray200: null,
          highlightColor:isEnabled? pressedColor ?? OColor.gray200: null,
          onTap: isEnabled && onPressed != null ? () => onPressed!(!value) : null,
          child: Container(

            decoration: BoxDecoration(
              // color: isEnabled?Colors.transparent:OColor.gray200,
              border: Border.all(color: OColor.gray200),
              borderRadius: BorderRadius.circular(16),
            ),
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        heading,
                        style: TextStyle(
                          color:isEnabled? OColor.gray800:OColor.gray400,
                          fontSize: 16,
                          fontFamily: 'Geist',
                          fontWeight: FontWeight.w500,
                          height: 1.5,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        description,
                        style: TextStyle(
                          color:isEnabled? OColor.gray600:OColor.gray300,
                          fontSize: 14,
                          fontFamily: 'Geist',
                          fontWeight: FontWeight.w400,
                          height: 1.43,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 16),
                RadioButton(
                  isEnabled: isEnabled,
                  value: value,
                  onChanged: onPressed,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
