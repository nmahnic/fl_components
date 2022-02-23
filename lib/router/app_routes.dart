import 'package:flutter/material.dart';

import '../models/models.dart';
import '../screens/screens.dart';

class AppRoutes {

  static const initialRoute = '/home';
  static final menuOptions = <MenuOption> [
    // TODO: borrar home
    MenuOption(name: 'Home Screen', route: '/home', screen: const HomeScreen(), icon: Icons.home),
    MenuOption(name: 'List1 Screen', route: '/listView1', screen: const ListView1Screen(), icon: Icons.list),
    MenuOption(name: 'List2 Screen', route: '/listView2', screen: const ListView2Screen(), icon: Icons.list_alt),
    MenuOption(name: 'Card Screen', route: '/card', screen: const CardScreen(), icon: Icons.card_giftcard),
    MenuOption(name: 'Alert Screen', route: '/alert', screen: const AlertScreen(), icon: Icons.add_alert),
  ];

  static  Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in menuOptions) {
      appRoutes.addAll({option.route : (BuildContext context) => option.screen});
    }

    return appRoutes;
  }
  // static Map<String, Widget Function(BuildContext)> routes = {
  //   '/home'      :( BuildContext context ) => const HomeScreen(),
  //   '/listView1' :( BuildContext context ) => const ListView1Screen(),
  //   '/listView2' :( BuildContext context ) => const ListView2Screen(),
  //   '/card'      :( BuildContext context ) => const CardScreen(),
  //   '/alert'     :( BuildContext context ) => const AlertScreen(),
  // };

  static Route<dynamic> onGenerateRoute (RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }

}