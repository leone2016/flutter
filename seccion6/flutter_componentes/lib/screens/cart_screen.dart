import 'package:flutter/material.dart';
import 'package:flutter_componentes/widgets/widgets.dart';

class CartScreen extends StatelessWidget {
  static const imag1 =
      "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/stan-lee-wandavision-cameo-tributo-homenaje-1614077568.jpg";

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
            CustomCardWidget2(
              imageUrl: imag1,
              labelCard: "Creador del MCU",
            ),
            SizedBox(height: 10),
            CustomCardWidget2(
              imageUrl: imag1,
            ),
            SizedBox(height: 10),
            CustomCardWidget2(
              imageUrl: imag1,
            ),
            SizedBox(height: 10),
            CustomCardWidget2(
              imageUrl: imag1,
            ),
          ]),
    );
  }
}
