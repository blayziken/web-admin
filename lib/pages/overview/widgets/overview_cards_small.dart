import 'package:flutter/material.dart';
import 'package:flutter_web_crash_course/pages/overview/widgets/info_card_small.dart';

class OverViewCardsSmallScreen extends StatelessWidget {
  const OverViewCardsSmallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Container(
      height: 400,
      child: Column(
        children: [
          InfoCardSmall(
            onTap: () {},
            title: 'Rides in progress',
            value: '7',
          ),
          SizedBox(height: _width / 64),
          InfoCardSmall(
            onTap: () {},
            title: 'Packages delivered',
            value: '17',
          ),
          SizedBox(height: _width / 64),
          InfoCardSmall(
            onTap: () {},
            title: 'Cancelled delivery',
            value: '3',
          ),
          SizedBox(height: _width / 64),
          InfoCardSmall(
            onTap: () {},
            title: 'Scheduled deliveries',
            value: '3',
          ),
        ],
      ),
    );
  }
}
