import 'package:flutter/material.dart';
import 'package:flutter_web_crash_course/helpers/responsiveness.dart';
import 'package:flutter_web_crash_course/widgets/vertical_menu_item.dart';

import 'horizontal_menu_item.dart';

class SideMenuItem extends StatelessWidget {
  final String itemName;
  final Function onTap;

  const SideMenuItem({
    Key? key,
    required this.itemName,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (ResponsiveWidget.isCustomSize(context))
      return VerticalMenuItem(
        itemName: itemName,
        onTap: onTap,
      );

    return HorizontalMenuItem(
      itemName: itemName,
      onTap: onTap,
    );
  }
}
