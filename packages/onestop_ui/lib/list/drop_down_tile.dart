import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:onestop_ui/index.dart';



class DropdownField extends StatelessWidget {
  final String label;
  final String hint;
  final String? selectedValue;
  final ValueChanged<String?> onChanged;
  final bool isEnabled;
  final double overlayHeight;
  final List<String> items;
  final String? hintText;
  final Widget Function(BuildContext context, String str, bool val, VoidCallback callback)? listItemBuilder;

  const DropdownField({
    super.key,
    this.overlayHeight = 400,
    required this.label,
    required this.hint,
    required this.onChanged,
    this.selectedValue,
    this.isEnabled = true,
    required this.items,
    this.hintText, this.listItemBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CustomDropdown<String>(
        excludeSelected: false,
        overlayHeight: overlayHeight,
        enabled: isEnabled,
        expandedHeaderPadding: EdgeInsets.all(16),
        hideSelectedFieldWhenExpanded: false,
        hintText: hintText,
        items: items,
        initialItem: items[0],
        listItemPadding: EdgeInsets.zero,

        disabledDecoration: CustomDropdownDisabledDecoration(
          border:  Border.all(width: 1, color: OColor.gray200),
          suffixIcon: Icon(Icons.keyboard_arrow_down_sharp,color: OColor.gray300,),
        ),
        decoration: CustomDropdownDecoration(
          closedBorder: Border.all(width: 1, color: OColor.gray200),
          expandedShadow: [
            BoxShadow(
              color: Color(0x19000000),
              blurRadius: 15,
              offset: Offset(0, 4),
              spreadRadius: 0,
            ),
          ],
          listItemDecoration: ListItemDecoration(
            selectedColor: Colors.transparent,
            splashColor: OColor.gray200,
          ),
          closedBorderRadius: BorderRadius.circular(16),
          expandedBorderRadius: BorderRadius.circular(16),
          closedSuffixIcon: Icon(Icons.keyboard_arrow_down_sharp,color: OColor.green600,),
          expandedSuffixIcon: Icon(Icons.keyboard_arrow_up_sharp,color: OColor.green600,)
         
        ),
        hintBuilder: (context, hint, enabled) {
          return Text(hint);
        },
        
        

        listItemBuilder: listItemBuilder ??
            (context, item, isSelected, onItemSelect) {
              return ListTile(
          contentPadding: EdgeInsets.only(left: 24),
          title: Text(
            item,
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontFamily: 'Geist',
              fontWeight: FontWeight.w400,
              height: 1.56,
            ),
          ),
          tileColor: isSelected ? OColor.gray200 : Colors.transparent,
              );
            },

        headerBuilder: (context, selectedItem, enabled) {
          return Text(
            selectedItem,
            style: TextStyle(
              color:isEnabled? const Color(0xFF148440):OColor.gray300 /* Colors-Green-600 */,
              fontSize: 16,
              fontFamily: 'Geist',
              fontWeight: FontWeight.w500,
              height: 1.50,
            ),
          );
        },
        onChanged: (value) {
          debugPrint('changing value to: $value');
          onChanged(value);
        },
      ),
    );
  }
}
