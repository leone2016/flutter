import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  //propiedades
  int counter = 10;

  void increase(String action) {
    switch (action) {
      case 'increment':
        counter++;
        break;
      case 'decrement':
        counter--;
        break;
      case 'zero':
        counter = 0;
        break;
      default:
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle(fontSize: 30);
    const spaceBetween = SizedBox(
      width: 20,
    );
    // variables
    return Scaffold(
      //  backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        title: const Text('CounterScreen'),
        elevation: 0, //shadow
      ),
      body: Center(
        child: Column(
          //alinea las cosas verticalmente (columna)
          mainAxisAlignment: MainAxisAlignment.center,
          //alinea las cosas horizontalmente (fila)
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Número de clicks', style: fontSize30),
            Text('$counter', style: fontSize30),
          ],
        ),
      ),
      //BOTTONS
      /*BOTTONS
      BOTTONS
      BOTTONS
      BOTTONS */
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomFloatingActions(
          increaseFn: increase), // envia la referencoa de la funcion
    );
  }
}

class CustomFloatingActions extends StatelessWidget {
  final Function increaseFn;

  const CustomFloatingActions({
    Key? key,
    required this.increaseFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
            backgroundColor: const Color.fromARGB(123, 23, 23, 12),
            onPressed: () => increaseFn('increment'),
            child: const Icon(Icons.add)),
        FloatingActionButton(
            backgroundColor: const Color.fromARGB(122, 8, 215, 180),
            onPressed: () => increaseFn('zero'),
            child: const Icon(Icons.no_adult_content)),
        FloatingActionButton(
          backgroundColor: const Color.fromARGB(121, 255, 9, 9),
          child: const Icon(Icons.remove),
          onPressed: () => increaseFn('decrement'),
        ),
      ],
    );
  }
}
