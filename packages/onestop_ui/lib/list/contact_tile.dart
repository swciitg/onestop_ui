import 'package:flutter/material.dart';
import 'package:onestop_ui/index.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

enum ContactTileStyle { style1, style2, style3 }

enum ContactActionType {phone,star,}
class ContactAction {
  final ContactActionType type;
  final VoidCallback onTap;

  ContactAction({required this.type, required this.onTap});
}


class ContactTile extends StatelessWidget {
  final String title;
  final String description;
  final String? imageUrl;
  final ContactTileStyle style;
  final Widget? avatar;
  final IconData? leadingIcon;
  final List<ContactAction> trailingActions;

  const ContactTile({
    super.key,
    required this.title,
    required this.description,
    this.imageUrl,
    this.style = ContactTileStyle.style1,
    this.avatar,
    this.leadingIcon,
    this.trailingActions = const [],
  });

  @override
  Widget build(BuildContext context) {
    final leadingIconColor =
        style == ContactTileStyle.style3 ? OColor.gray400 : OColor.green600;

    return Container(
      color: style == ContactTileStyle.style2 ? OColor.gray200 : null,
      padding: EdgeInsets.symmetric(
        horizontal: OSpacing.m,
        vertical: OSpacing.xs,
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 24,
            backgroundColor: Colors.transparent,
            child: ClipOval(
              child: ColorFiltered(
                colorFilter:
                    style == ContactTileStyle.style3
                        ? const ColorFilter.matrix(<double>[
                          0.2126, 0.7152, 0.0722, 0, 0, // red
                          0.2126, 0.7152, 0.0722, 0, 0, // green
                          0.2126, 0.7152, 0.0722, 0, 0, // blue
                          0, 0, 0, 1, 0, // alpha
                        ])
                        : const ColorFilter.mode(
                          Colors.transparent,
                          BlendMode.multiply,
                        ),
                child: imageUrl!=null
                ?Image.network(
                  imageUrl!,
                  width: 48,
                  height: 48,
                  fit: BoxFit.cover,
                )
                :Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: OColor.gray100,
              ),
              // padding: EdgeInsets.all(OSpacing.s),
              child: Center(child: Icon(leadingIcon??TablerIcons.user_square_rounded, color: leadingIconColor,size: 25,)),
            ),
              ),
            ),
          ),

          SizedBox(width: OSpacing.m),
          // Padding(padding: EdgeInsets.all(OSpacing.s),child: ,)
          if (leadingIcon != null) ...[
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: OColor.gray100,
              ),
              padding: EdgeInsets.all(OSpacing.s),
              child: Icon(leadingIcon, color: leadingIconColor),
            ),
            SizedBox(width: OSpacing.m),
          ],

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'List Heading',
                style: TextStyle(
                  color:
                      style == ContactTileStyle.style3
                          ? OColor.gray600
                          : OColor.gray800,
                  fontSize: 16,
                  fontFamily: 'Geist',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
              SizedBox(height: 4),
              Text(
                'Description',
                style: TextStyle(
                  color:
                      style == ContactTileStyle.style3
                          ? OColor.gray400
                          : OColor.gray600,
                  fontSize: 14,
                  fontFamily: 'Geist',
                  fontWeight: FontWeight.w400,
                  height: 1.43,
                ),
              ),
            ],
          ),
          Spacer(),
          ...trailingActions.map((action) {
            final icon =
                action.type == ContactActionType.phone
                    ? TablerIcons.phone
                    : TablerIcons.star;

            final color =
                style == ContactTileStyle.style3
                    ? OColor.gray400
                    : OColor.green600;

            final background =
                action.type == ContactActionType.phone
                    ? OColor.gray100
                    : Colors.transparent;

            return GestureDetector(
              onTap: style == ContactTileStyle.style3?(){}:action.onTap,
              child: Container(
                padding: EdgeInsets.all(OSpacing.xs),
                margin: EdgeInsets.only(right: 4),
                decoration: BoxDecoration(
                  color: background,
                  borderRadius: BorderRadius.circular(999),
                ),
                child: Icon(icon, color: color,),
              ),
            );
          }),
          Icon(Icons.arrow_forward_ios, size: 13),
        ],
      ),
    );
  }
}
