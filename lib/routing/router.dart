import 'package:flutter/material.dart';
import 'package:flutter_web_crash_course/pages/clients/clients.dart';
import 'package:flutter_web_crash_course/pages/drivers/drivers.dart';
import 'package:flutter_web_crash_course/pages/overview/overview.dart';
import 'package:flutter_web_crash_course/routing/routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case OverViewPageRoute:
      return _getPageRoute(OverViewPage());
    case DriversPageRoute:
      return _getPageRoute(DriversPage());
    case ClientsPageRoute:
      return _getPageRoute(ClientsPage());
    default:
      return _getPageRoute(OverViewPage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
