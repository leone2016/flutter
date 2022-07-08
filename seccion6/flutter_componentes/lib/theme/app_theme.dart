import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color.fromARGB(255, 231, 135, 25);

  static final ThemeData dartTheme = ThemeData.dark().copyWith(
      //color primary
      primaryColor: Colors.green,

      //AppBar
      appBarTheme:
          const AppBarTheme(color: primary, elevation: 0, centerTitle: true),
      scaffoldBackgroundColor: Colors.black,
      textButtonTheme:
          TextButtonThemeData(style: TextButton.styleFrom(primary: primary)),
      //color para botones flotantes
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primary, elevation: 0),
      //elevatedButtons
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              primary: Colors.indigo,
              shape: const StadiumBorder(),
              elevation: 0)),
      // Input
      inputDecorationTheme: const InputDecorationTheme(
          floatingLabelStyle: TextStyle(color: primary),
          // label que aparece en Nombre=
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: primary),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  topRight: Radius.circular(10))),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: primary),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  topRight: Radius.circular(10))),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  topRight: Radius.circular(10)
              )
          )
      ));

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      //color primary
      primaryColor: Colors.green,

      //AppBar
      appBarTheme: const AppBarTheme(color: primary, elevation: 0));
}
