import 'package:flutter/material.dart';
import 'package:flutter_componentes/models/models.dart';
import 'package:flutter_componentes/screens/index.dart';

class AppRoutes {
  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'home',icon: Icons.home,name: 'Home Screen',screen: const HomeScreen()),
    MenuOption(
        route: 'listView1',icon: Icons.list,name: 'Listview tipo 1',screen: const ListViewScreen()),
    MenuOption(
        route: 'listView2',icon: Icons.list_alt,name: 'Listview tipo 2',screen: const ListView2Screen()),
    MenuOption(
        route: 'alert', icon: Icons.add_alert_outlined, name: 'Alertas', screen: const AlertScreen()),
    MenuOption(
        route: 'card', icon: Icons.credit_card, name: 'Tarjetas - card', screen: const CartScreen()),
    MenuOption(
        route: 'avatar', icon: Icons.supervised_user_circle_outlined, name: 'Circle Avatar', screen: const AvatarScreen()),
    MenuOption(
        route: 'animated', icon: Icons.play_arrow_outlined, name: 'Animated Container', screen: const AnimatedScreen())
  ];

  static const initialRoute = 'home';

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (var option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }
/*   static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'listView1': (BuildContext context) => const ListViewScreen(),
    'listView2': (BuildContext context) => const ListView2Screen(),
    'alert': (BuildContext context) => const AlertScreen(),
    'card': (BuildContext context) => const CartScreen(),
  }; */

  static Route<dynamic>? Function(RouteSettings)? onGenerateRoute = (settings) {
    print(settings);

    return MaterialPageRoute(builder: (context) => AlertScreen());
  };
}
