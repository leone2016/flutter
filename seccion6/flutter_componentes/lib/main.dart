import 'package:flutter/material.dart';
import 'package:flutter_componentes/router/app_routes.dart';
import 'package:flutter_componentes/screens/index.dart';
import 'package:flutter_componentes/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      //  home: const ListView2Screen(),
      initialRoute: AppRoutes.initialRoute,
      //navegacion 1.0 es la mas facil, pero es mejor utilizar la 2.0
      routes: AppRoutes.getAppRoutes(),
      //ojo se esta enviando los setting como parametro en  AppRoutes.onGenerateRoute
      onGenerateRoute: AppRoutes.onGenerateRoute,
      theme: AppTheme.dartTheme,
    );
  }
}
