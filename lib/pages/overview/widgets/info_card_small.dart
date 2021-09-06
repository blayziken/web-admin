import 'package:flutter/material.dart';
import 'package:flutter_web_crash_course/constants/style.dart';
import 'package:flutter_web_crash_course/widgets/custom_text.dart';

class InfoCardSmall extends StatelessWidget {
  final String title;
  final String value;
  final bool isActive;
  final VoidCallback onTap;

  const InfoCardSmall({
    Key? key,
    required this.title,
    required this.value,
    this.isActive = false,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: isActive ? active : lightGrey,
              width: .5,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                text: title,
                size: 24,
                color: isActive ? active : lightGrey,
                weight: FontWeight.w300,
              ),
              CustomText(
                text: value,
                size: 24,
                color: isActive ? active : dark,
                weight: FontWeight.bold,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
