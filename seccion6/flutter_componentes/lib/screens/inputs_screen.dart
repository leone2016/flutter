import 'package:flutter/material.dart';
import 'package:flutter_componentes/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Inputs and forms')),
      // SingleChildScrollView: funciona como si se tuviera un listview para hacer scroll
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: const [
              CustomInputWidget(
                labelText: 'Nombre',
                hintText: 'Nombre de Usuario',
              ),
              SizedBox(
                height: 30,
              ),
              CustomInputWidget(
                labelText: 'Apellido',
                hintText: 'Apellido de Usuario',
              ),
              SizedBox(
                height: 30,
              ),
              CustomInputWidget(
                labelText: 'Correo',
                hintText: 'Correo de Usuario',
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 30,
              ),
              CustomInputWidget(
                  labelText: 'Contraseña',
                  hintText: 'Contraseña de Usuario',
                  obscureText: true),
            ],
          ),
        ),
      ),
    );
  }
}
