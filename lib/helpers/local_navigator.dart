import 'package:flutter/material.dart';
import 'package:flutter_web_crash_course/constants/controllers.dart';
import 'package:flutter_web_crash_course/routing/router.dart';
import 'package:flutter_web_crash_course/routing/routes.dart';

Navigator localNavigator() => Navigator(
      key: navigationController.navigationKey,
      initialRoute: OverViewPageRoute,
      onGenerateRoute: generateRoute,
    );
