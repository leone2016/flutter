import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  //variables y propiedades

  @override
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle(fontSize: 30);
    int counter = 10;

    return Scaffold(
      //  backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        title: const Text('HomeScreen'),
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
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            counter++;
            print('Hola mundo $counter');
          }),
    );
  }
}
