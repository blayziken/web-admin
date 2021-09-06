import 'package:flutter/material.dart';
import 'package:flutter_web_crash_course/constants/controllers.dart';
import 'package:flutter_web_crash_course/widgets/custom_text.dart';
import 'package:flutter_web_crash_course/helpers/responsiveness.dart';
import 'package:get/get.dart';

import 'widgets/clients_table.dart';

class ClientsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                    top: ResponsiveWidget.isSmallScreen(context) ? 56 : 6),
                child: CustomText(
                  text: menuController.activeItem.value,
                  color: null,
                  size: 24,
                  weight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView(
            children: [
              ClientsTable(),
            ],
          ),
        ),
      ],
    );
  }
}
