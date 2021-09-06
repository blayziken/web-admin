import 'package:flutter/material.dart';
import 'package:flutter_web_crash_course/helpers/responsiveness.dart';
import 'package:flutter_web_crash_course/widgets/large_screen.dart';
import 'package:flutter_web_crash_course/widgets/side_menu.dart';
import 'package:flutter_web_crash_course/widgets/small_screen.dart';
import 'package:flutter_web_crash_course/widgets/top_nav.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  final GlobalKey<NavigatorState> navigationKe1y = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: Drawer(child: SideMenu()),
      body: ResponsiveWidget(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
      ),
    );
  }
}
