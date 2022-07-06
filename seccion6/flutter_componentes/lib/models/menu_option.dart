import 'package:flutter/material.dart'
    show IconData, Widget; //solo importa el icondata

class MenuOption {
  final String route;
  final IconData icon;
  final String name;
  final Widget screen;

  MenuOption(
      {required this.route,
      required this.icon,
      required this.name,
      required this.screen}); //la pantalla que quiero usar
}
