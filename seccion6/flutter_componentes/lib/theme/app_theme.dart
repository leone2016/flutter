import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color.fromARGB(255, 231, 135, 25);

  static final ThemeData dartTheme = ThemeData.dark().copyWith(
      //color primary
      primaryColor: Colors.green,

      //AppBar
      appBarTheme: const AppBarTheme(color: primary, elevation: 0),
      scaffoldBackgroundColor: Colors.black,
      textButtonTheme: TextButtonThemeData(style: TextButton.styleFrom(primary: primary)),
      //color para botones flotantes
      floatingActionButtonTheme:
      const FloatingActionButtonThemeData(
          backgroundColor: primary,
          elevation: 0
      ),
      //elevatedButtons
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
           primary: Colors.indigo,
           shape: const StadiumBorder(),
           elevation: 0
        )
      ),
  );

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      //color primary
      primaryColor: Colors.green,

      //AppBar
      appBarTheme: const AppBarTheme(color: primary, elevation: 0));
}
