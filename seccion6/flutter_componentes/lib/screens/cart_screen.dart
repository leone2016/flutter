import 'package:flutter/material.dart';
import 'package:flutter_componentes/widgets/widgets.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card widget"),
        centerTitle: true,
      ),
      body: ListView(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          children: const [
            CustomCardWidget(),
            SizedBox(height: 10),
            CustomCardWidget2(),
            SizedBox(height: 10),
            CustomCardWidget2(),
            SizedBox(height: 10),
            CustomCardWidget2(),
            SizedBox(height: 10),
            CustomCardWidget2(),
            SizedBox(height: 10),
            CustomCardWidget2(),
            SizedBox(height: 10),
            CustomCardWidget2(),
          ]),
    );
  }
}
