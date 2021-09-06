// const OverViewPageRoute = "Overview";
// const DriversPageRoute = "Drivers";
// const ClientsPageRoute = "Clients";
// const AuthenticationPageRoute = "Authentication";

// List sideMenuItems = [
//   OverViewPageRoute,
//   DriversPageRoute,
//   ClientsPageRoute,
//   AuthenticationPageRoute
// ];

const rootRoute = "/";

const OverViewPageDisplayName = "Overview";
const OverViewPageRoute = "/overview";

const DriversPageDisplayName = "Drivers";
const DriversPageRoute = "/drivers";

const ClientsPageDisplayName = "Clients";
const ClientsPageRoute = "/clients";

const AuthenticationPageDisplayName = "Log out";
const AuthenticationPageRoute = "/auth";

class MenuItem {
  final String name;
  final String route;

  MenuItem(this.name, this.route);
}

List<MenuItem> sideMenuItemRoutes = [
  MenuItem(OverViewPageDisplayName, OverViewPageRoute),
  MenuItem(DriversPageDisplayName, DriversPageRoute),
  MenuItem(ClientsPageDisplayName, ClientsPageRoute),
  MenuItem(AuthenticationPageDisplayName, AuthenticationPageRoute),
];
