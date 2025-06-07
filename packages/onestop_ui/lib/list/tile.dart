import 'package:flutter/material.dart';
import 'package:onestop_ui/index.dart';

class Tile extends StatelessWidget {
  final String label;
  final String description;
  final IconData leadingIcon;
  final IconData? trailingIcon;
  final VoidCallback onPressed;
  final Color? pressedColor;

  const Tile({
    super.key,
    required this.label,
    required this.description,
    required this.leadingIcon,
    required this.onPressed,
    this.pressedColor, 
    this.trailingIcon,
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
          splashColor: pressedColor?.withOpacity(0.3) ?? OColor.gray200,
          highlightColor: pressedColor ?? OColor.gray200,
          onTap: onPressed,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: OColor.gray600),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(leadingIcon, color: OColor.green600),
                            const SizedBox(width: 8),
                            Text(
                              label,
                              style: TextStyle(
                                color: OColor.green800,
                                fontSize: 16,
                                fontFamily: 'Geist',
                                fontWeight: FontWeight.w500,
                                height: 1.5,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Text(
                          description,
                          style: const TextStyle(
                            color: Color(0xFF6E6F77),
                            fontSize: 14,
                            fontFamily: 'Geist',
                            fontWeight: FontWeight.w400,
                            height: 1.43,
                          ),
                        ),
                      ],
                    ),
                  ),
                  if(trailingIcon!=null)...[
                  const SizedBox(width: 8),
                  Icon(Icons.arrow_outward, color: OColor.gray600),
                  ]
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
