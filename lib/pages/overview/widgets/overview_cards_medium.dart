import 'package:flutter/material.dart';
import 'package:flutter_web_crash_course/pages/overview/widgets/info_card.dart';

class OverViewCardMediumScreen extends StatelessWidget {
  const OverViewCardMediumScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            InfoCard(
              onTap: () {},
              title: 'Rides in progress',
              topColor: Colors.orange,
              value: '7',
            ),
            SizedBox(width: _width / 64),
            InfoCard(
              onTap: () {},
              title: 'Packages delivered',
              topColor: Colors.lightGreen,
              value: '17',
            ),
          ],
        ),
        SizedBox(height: 16),
        Row(
          children: [
            InfoCard(
              onTap: () {},
              title: 'Cancelled delivery',
              topColor: Colors.redAccent,
              value: '3',
            ),
            SizedBox(width: _width / 64),
            InfoCard(
              onTap: () {},
              title: 'Scheduled deliveries',
              topColor: Colors.orange,
              value: '3',
            ),
          ],
        ),
      ],
    );
  }
}
