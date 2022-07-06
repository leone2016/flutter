import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.green;

  static final ThemeData dartTheme = ThemeData.dark().copyWith(
      //color primary
      primaryColor: Colors.green,

      //AppBar
      appBarTheme: const AppBarTheme(color: Colors.green, elevation: 0),
      scaffoldBackgroundColor: Colors.black);

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      //color primary
      primaryColor: Colors.green,

      //AppBar
      appBarTheme: const AppBarTheme(color: Colors.green, elevation: 0));
}
