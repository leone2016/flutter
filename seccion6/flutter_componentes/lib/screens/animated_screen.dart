import 'dart:math';

import 'package:flutter/material.dart';



class AnimatedScreen extends StatefulWidget {
   
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

/*
 * en esta clase es necesario el statefulWidget para manejar el estado 
 */
class _AnimatedScreenState extends State<AnimatedScreen> {

  double _width = 50; //privada
  double _heigth = 50; //privada
  Color _color  = Colors.red;
  BorderRadiusGeometry _borderRadious = BorderRadius.circular(10);

  void changeShape(){
    Random random = new Random();
    _width = random.nextInt(300) + 70;
    _heigth = random.nextInt(300) + 70;;
    int red =  random.nextInt(255);
    int green =  random.nextInt(255);
    int blue =  random.nextInt(255);

    _color = Color.fromARGB(red, green, blue, 1);
    _borderRadious = BorderRadius.circular(random.nextInt(100).toDouble() + 10);
    setState(() {});
   } 

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Animated Container"),
      ),
      body: Center(
         child: Container(
          height: _heigth,
          width: _width,
          //color: Colors.white, no se puede tener un color y una decoración en este widget
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadious
            ),
         ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon( Icons.play_arrow_rounded, size: 35,),
        onPressed:(){ changeShape(); } 
        ),
    );
  }
}