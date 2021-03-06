import 'package:flutter/material.dart';

import '../models/models.dart';
import '../screens/screens.dart';

class AppRoutes {

  static const initialRoute = '/home';
  static final menuOptions = <MenuOption> [
    MenuOption(name: 'ListView Builder Screen', route: '/listView3', screen: const ListViewBuilderScreen(), icon: Icons.line_style),
    MenuOption(name: 'Slider Screen', route: '/slider', screen: const SliderScreen(), icon: Icons.slideshow),
    MenuOption(name: 'List1 Screen', route: '/listView1', screen: const ListView1Screen(), icon: Icons.list),
    MenuOption(name: 'List2 Screen', route: '/listView2', screen: const ListView2Screen(), icon: Icons.list_alt),
    MenuOption(name: 'Card Screen', route: '/card', screen: const CardScreen(), icon: Icons.card_giftcard),
    MenuOption(name: 'Android Alert Screen', route: '/alertAndroid', screen: const AlertScreenAndroid(), icon: Icons.phone_android),
    MenuOption(name: 'iOS Alert Screen', route: '/alertIOS', screen: const AlertScreenIOS(), icon: Icons.phone_iphone),
    MenuOption(name: 'Platform Alert Screen', route: '/alert', screen: const AlertScreen(), icon: Icons.dashboard_customize_rounded),
    MenuOption(name: 'Avatar Screen', route: '/avatar', screen: const AvatarScreen(), icon: Icons.people_rounded),
    MenuOption(name: 'Animated Screen', route: '/animated', screen: const AnimatedScreen(), icon: Icons.animation),
    MenuOption(name: 'Inputs Screen', route: '/inputs', screen: const InputsScreen(), icon: Icons.input_rounded),
  ];

  static  Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({'/home': (BuildContext context) => const HomeScreen()});
    
    for (final option in menuOptions) {
      appRoutes.addAll({option.route : (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute (RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreenAndroid(),
    );
  }

}