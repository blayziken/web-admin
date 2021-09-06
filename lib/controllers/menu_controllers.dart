import 'package:flutter/material.dart';
import 'package:flutter_web_crash_course/constants/style.dart';
import 'package:flutter_web_crash_course/routing/routes.dart';
import 'package:get/get.dart';

class MenuController extends GetxController {
  static MenuController instance = Get.find();

  var activeItem = OverViewPageDisplayName.obs;
  var hoverItem = "".obs;

  changeActiveItemTo(String itemName) {
    activeItem.value = itemName;
  }

  onHover(String itemName) {
    if (!isActive(itemName)) hoverItem.value = itemName;
  }

  isActive(String itemName) => activeItem.value == itemName;

  isHovering(String itemName) => hoverItem.value == itemName;

  Widget returnIconFor(String itemName) {
    switch (itemName) {
      case OverViewPageDisplayName:
        return _customIcon(Icons.trending_up, itemName);
      case DriversPageDisplayName:
        return _customIcon(Icons.drive_eta, itemName);
      case ClientsPageDisplayName:
        return _customIcon(Icons.people_alt_outlined, itemName);
      case AuthenticationPageDisplayName:
        return _customIcon(Icons.exit_to_app, itemName);
      default:
        return _customIcon(Icons.ac_unit, itemName);
    }
  }

  Widget _customIcon(IconData icon, String itemName) {
    if (isActive(itemName))
      return Icon(
        icon,
        size: 22,
        color: dark,
      );

    return Icon(icon, color: isHovering(itemName) ? dark : lightGrey);
  }
}


//  Widget returnIconFor(String itemName) {
//     switch (itemName) {
//       case OverViewPageRoute:
//         return _customIcon(Icons.trending_up, itemName);
//       case DriversPageRoute:
//         return _customIcon(Icons.drive_eta, itemName);
//       case ClientsPageRoute:
//         return _customIcon(Icons.people_alt_outlined, itemName);
//       case AuthenticationPageRoute:
//         return _customIcon(Icons.exit_to_app, itemName);
//       default:
//         return _customIcon(Icons.ac_unit, itemName);
//     }
//   }