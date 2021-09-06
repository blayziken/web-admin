import 'package:flutter/material.dart';
import 'package:flutter_web_crash_course/constants/controllers.dart';
import 'package:flutter_web_crash_course/helpers/responsiveness.dart';
import 'package:flutter_web_crash_course/pages/overview/widgets/overview_cards_large.dart';
import 'package:flutter_web_crash_course/pages/overview/widgets/overview_cards_medium.dart';
import 'package:flutter_web_crash_course/pages/overview/widgets/overview_cards_small.dart';
import 'package:flutter_web_crash_course/widgets/custom_text.dart';
import 'package:get/get.dart';

class OverViewPage extends StatelessWidget {
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
              if (ResponsiveWidget.isLargeScreen(context) ||
                  ResponsiveWidget.isMediumScreen(context))
                if (ResponsiveWidget.isCustomSize(context))
                  OverViewCardMediumScreen()
                else
                  OverViewCardsLargeScreen()
              else
                OverViewCardsSmallScreen()
            ],
          ),
        )
      ],
    );
  }
}
