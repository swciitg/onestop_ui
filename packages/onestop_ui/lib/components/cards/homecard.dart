import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:onestop_ui/index.dart';

//small home card
class OHomeCard extends StatefulWidget {
  final String header;
  final IconData icon;
  final Function()? onArrowPressed;
  final List<String> listItems;
  final List<String> subListItems;
  final List<String> labelItems;
  final bool activateButton1;
  final bool activateButton2;
  final Function()? buttonAction1;
  final Function()? buttonAction2;
  const OHomeCard({
    super.key,
    required this.header,
    required this.icon,
    required this.listItems,
    required this.subListItems,
    required this.labelItems,
    this.onArrowPressed,
    this.buttonAction1,
    this.buttonAction2,
    this.activateButton1 = false,
    this.activateButton2 = false,
  });

  @override
  State<OHomeCard> createState() => _OHomeCardState();
}

class _OHomeCardState extends State<OHomeCard> {
  bool _isPressed = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: _isPressed ? OColor.gray200 : OColor.white,
        borderRadius: BorderRadius.all(Radius.circular(OCornerRadius.l)),
        border: Border.all(color: OColor.gray200, width: 1),
      ),
      child: Column(
        children: [
          OCardHeader(
            heading: widget.header,
            icon: TablerIcons.arrow_rotary_first_left,
            onArrowPressed: widget.onArrowPressed,
          ),
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTapDown:
                (_) => setState(
                  () => _isPressed = true,
                ), //engage behaviour when search bar is tapped
            onTapUp: (_) {
              setState(() => _isPressed = false);
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                OLabelGroups(labelItems: widget.labelItems, isSmall: true),
                OListGroups(
                  list: widget.listItems,
                  sublist: widget.subListItems,
                ),
              ],
            ),
          ),
          // these buttons has to be replaced by secondary buttons
          if(widget.activateButton2 || widget.activateButton1 == true )
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              if(widget.activateButton1 == true )
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: OSpacing.s),
                child: MaterialButton(
                  onPressed: widget.buttonAction1,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: OColor.gray300, width: 1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(OCornerRadius.l),
                    ),
                  ),
                  child: OText(
                    text: 'Label 1',
                    style: OTextStyle.labelSmall.copyWith(color: OColor.green600),
                  ),
                ),
              ),
              if(widget.activateButton2 == true )
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: OSpacing.s),
                child: MaterialButton(
                  onPressed: widget.buttonAction2,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: OColor.gray300, width: 1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(OCornerRadius.l),
                    ),
                  ),
                  child: OText(
                    text: 'Label 2',
                    style: OTextStyle.labelSmall.copyWith(color: OColor.green600),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
  @override
  void dispose() {
    super.dispose();
  }
}
