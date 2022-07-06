import 'package:counterapp/screens/counter_screen.dart';
import 'package:flutter/material.dart';
// import 'package:counterapp/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  //constructor
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var home = const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterScreen(),
    );

    return home;
  }
}

/* 
MaterialApp(
        home: Center(
      child: Text('Hola mund'),
    )) */